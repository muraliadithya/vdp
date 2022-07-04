# This is a script that ties together the neural and symbolic pipelines in this tool-chain to execute a CLEVR VDP puzzle.
# I've used minimal abstraction to make it easy to hack around.
# It should be easy to parse but feel free to reach out to the authors or open a github issue if something doesn't seem right!
import argparse, os, shutil
from datetime import datetime
from typing import List, Tuple
from utils.common import exec_cmd, append_to_txt, to_txt
from clevr_inference.collate import collate
from contextlib import redirect_stderr, redirect_stdout

class Constants:
    project_dir : str = os.path.dirname(os.path.abspath(__file__))
    blender_path : str = os.path.join(project_dir, 'data', 'blender-2.78c-linux-glibc219-x86_64/blender')
    solver_path : str = os.path.join("vdp_solver", "scripts/vdpsolve.py")
    triplet_loss_baseline_path : str = os.path.join('triplet_loss_baseline', 'test_clevr_cleaned.py')
    clevr_generator_path : str = os.path.join('clevr_generate', 'gen_render_uconfig.py')
    clevr_maskrcnn_inference_path : str = os.path.join('clevr_inference', "scene_parse", "mask_rcnn/tools/test_net.py")
    clevr_attrnet_preprocess_path : str = os.path.join('clevr_inference', "scene_parse", "attr_net/tools/process_proposals.py")
    clevr_attrnet_inference_path : str = os.path.join('clevr_inference', "scene_parse", "attr_net/tools/run_test.py")
    maskrcnn_config : str = os.path.join('clevr_inference', "scene_parse", "mask_rcnn/configs/baselines/e2e_mask_rcnn_R-50-FPN_1x.yaml")
    maskrcnn_weights : str = os.path.join(project_dir, 'data', 'ns-vqa-data/pretrained/object_detector.pt')
    attrnet_weights : str = os.path.join(project_dir, 'data', 'ns-vqa-data/pretrained/attribute_net.pt')
    triplet_loss_baseline_weights : str = os.path.join(project_dir, "data", "triplet_loss_baseline-data/deepranking-v2-150000.h5")


class ClevrPipeline:
    """
    Pipeline to generate/infer/solve a CLEVR domain puzzle.
    """
    puzzle_dir: str
    examples : Tuple[str]   # ["3", "4" ...]
    candidates : Tuple[str]
    use_gpu : bool
    regenerate : bool
    constants : Constants

    def __init__(self, puzzle_dir: str, examples: Tuple[str], candidates: Tuple[str], use_gpu: bool, regenerate: bool, constants: Constants):
        self.puzzle_dir = puzzle_dir
        self.examples = examples
        self.candidates = candidates
        self.use_gpu = use_gpu
        self.regenerate = regenerate
        self.constants = constants
        self.puzzle_name = os.path.basename(puzzle_dir)
        self.output_file = os.path.join(self.puzzle_dir, self.puzzle_name + ".out")
    
    def start_logfile(self):
        """
        Start a log file for the puzzle.
        """
        self.log_path = os.path.join(self.puzzle_dir, self.puzzle_name + ".log")
        if os.path.exists(self.log_path) and self.regenerate:
            os.remove(self.log_path)
        append_to_txt(pth=self.log_path, lines=["Started Logging. {}\n".format(str(datetime.now()))])
    

    def append_logs(self, logs : List[str]):
        """
        Append logs to the puzzle's log file.
        """
        assert self.log_path is not None, "Log file not started."
        append_to_txt(pth=self.log_path, lines=logs)

    def generate_puzzle(self):
        """
        Generate a scene for the puzzle.
        """
        scene_file = os.path.join(self.puzzle_dir, "scene_file.json")
        self.render_images_dir = os.path.join(self.puzzle_dir, "render/images")
        render_dir = os.path.join(self.puzzle_dir, "render/logs/")
        self.render_summary_path = os.path.join(self.puzzle_dir, "render/summary.json")
        exists = all([os.path.exists(scene_file), os.path.exists(self.render_images_dir), os.path.exists(self.render_summary_path)])
        if exists and not self.regenerate:
            print("Scene already exists. Skipping generation.")
            return
        if exists and self.regenerate:
            # remove existing files with rmtree
            shutil.rmtree(self.render_images_dir)
            shutil.rmtree(render_dir)
            os.remove(self.render_summary_path)

        cmd = f"""
        {self.constants.blender_path}
        --background
        --python
        {self.constants.clevr_generator_path}
        --
        --use_gpu {1 if self.use_gpu else 0}
        --input_puzzle_path {scene_file}
        --split val
        --output_scene_file {self.render_summary_path}
        --output_scene_dir {render_dir}
        --output_image_dir {self.render_images_dir}
        """.strip()
        cmd = cmd.replace("\n", " ")
        rendering_logs = exec_cmd(cmd)
        self.append_logs(rendering_logs)
    
    def parse_scene_maskrcnn(self, images_dir : str, rendersummary_path : str):
        """
        Get bounding boxes for the scene.
        """
        bounding_boxes_dir = os.path.join(self.puzzle_dir, "infer/mask_rcnn")
        cmd = f"""
        conda run -n ns-vqa
        python
        {self.constants.clevr_maskrcnn_inference_path}
        --images_dir {images_dir}
        --rendersummary_path {rendersummary_path}
        --dataset clevr_original_val
        --cfg {self.constants.maskrcnn_config}
        --load_ckpt {self.constants.maskrcnn_weights}
        --output_dir {bounding_boxes_dir}
        """.strip().replace("\n", " ")
        infer_logs = exec_cmd(cmd)
        self.append_logs(infer_logs)
        return bounding_boxes_dir
    
    def process_scene_attrnet(self, bounding_boxes_dir : str):
        """
        Process proposals from RCNN before running attribute net.
        """
        proposal_path = os.path.join(bounding_boxes_dir, "detections.pkl")
        clevr_val_ann_path = os.path.join(self.puzzle_dir, "infer/attrnet/predictions.json")
        cmd = f"""
        conda run -n ns-vqa
        python
        {self.constants.clevr_attrnet_preprocess_path}
        --dataset clevr
        --proposal_path {proposal_path}
        --output_path {clevr_val_ann_path}
        """.strip().replace("\n", " ")
        infer_logs = exec_cmd(cmd)
        self.append_logs(infer_logs)
        return clevr_val_ann_path

    def parse_scene_attrnet(self, clevr_val_ann_path, results_dir):
        """
        Run the attribute network.
        """
        resuls_path = os.path.join(results_dir, "results.json")
        cmd = f"""
        conda run -n ns-vqa
        python
        {self.constants.clevr_attrnet_inference_path}
        --dataset clevr
        --clevr_val_ann_path {clevr_val_ann_path}
        --load_checkpoint_path {self.constants.attrnet_weights}
        --output_path {resuls_path}
        --run_dir {results_dir}
        --name {self.puzzle_name}
        """.strip().replace("\n", " ")
        infer_logs = exec_cmd(cmd)
        self.append_logs(infer_logs)
        return resuls_path


    def infer_puzzle(self, render_images_dir: str =None, render_summary_path: str =None):
        """
        Infer the scene for the puzzle. This involves four steps:
        (1) Get bounding box proposals from MaskRCNN
        (2) Process bounding box proposals before running attribute net.
        (3) Run the attribute net.
        (4) Collate results
        """
        if render_images_dir is None or render_summary_path is None:
            assert self.render_images_dir is not None, "Scene not generated."
            assert self.render_summary_path is not None, "Scene not generated."
        else:
            self.render_images_dir = render_images_dir
            self.render_summary_path = render_summary_path
        self.inference_result = os.path.join(self.puzzle_dir, "infer/processed")
        if os.path.exists(os.path.join(self.inference_result, "results.json")):
            print("Inference already done. Skipping.")
            return
        bounding_boxes_dir = self.parse_scene_maskrcnn(self.render_images_dir, self.render_summary_path)
        clevr_val_ann_path = self.process_scene_attrnet(bounding_boxes_dir)
        raw_results_pth = self.parse_scene_attrnet(clevr_val_ann_path, self.inference_result)
        # instead of rewrite collate with logging, just redirecting stdout
        # https://stackoverflow.com/a/7152903
        with open(self.log_path, "a") as f:
            with redirect_stdout(f):
                collate(train_split=self.examples, test_split=self.candidates, results_pth=raw_results_pth, out_pth=self.inference_result)

    def run_solver(self, vdp_flags : str, inference_result : str =None):
        """
        Run the solver.
        """
        if inference_result is None:
            assert self.inference_result is not None, "Inference not done."
        else:
            self.inference_result = inference_result
        cmd = f"""
        python
        {self.constants.solver_path}
        {self.inference_result}
        {vdp_flags}
        """.strip()
        cmd = cmd.replace("\n", " ")
        solver_logs = exec_cmd(cmd)
        to_txt(solver_logs, self.output_file)

    def run_triplet_loss_baseline(self, render_images_dir : str = None):
        """
        Run the triplet loss baseline.
        """
        if render_images_dir is None:
            assert self.render_images_dir is not None, "Scene not generated."
        else:
            self.render_images_dir = render_images_dir
        
        cmd = f"""
        conda run -n deep-ranking
        python
        {self.constants.triplet_loss_baseline_path}
        --image_dir {self.render_images_dir}
        --weights {self.constants.triplet_loss_baseline_weights}
        """.strip()
        cmd = cmd.replace("\n", " ")
        triplet_loss_baseline_logs = exec_cmd(cmd)
        append_to_txt(triplet_loss_baseline_logs, self.output_file)


def main(args):
    config = ClevrPipeline(puzzle_dir=args.puzzle_dir, examples=args.examples, candidates=args.candidates, use_gpu=args.use_gpu, regenerate=args.regenerate, constants=Constants())
    config.start_logfile()
    config.generate_puzzle()
    config.infer_puzzle()
    config.run_solver(vdp_flags=args.vdp_flags)
    config.run_triplet_loss_baseline()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run the VDP pipeline.")
    parser.add_argument("--puzzle_dir", type=str, help="Path to the puzzle directory.")
    parser.add_argument("--candidates", type=str, default="0 1 2", help="Space separated list of example indices. eg: \"0 1 2\" ")
    parser.add_argument("--examples", type=str, default="3 4 5 6", help="Space separated list of candidate indices. eg: \"3 4 5 6\"")
    parser.add_argument("--vdp_flags", type=str, required=True, help="Flags to be passed to VDP solver.")
    parser.add_argument("--regenerate", action="store_true", help="Whether to regenerate the scene.", required=False)
    parser.add_argument("--use_gpu", action="store_true", help="Enables GPU training and generation.", required=False)
    args = parser.parse_args()
    args.candidates = args.candidates.split(" ")
    args.examples = args.examples.split(" ")
    main(args)