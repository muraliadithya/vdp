import os
import argparse
from utils.common import read_json, to_json, to_txt, exec_cmd, yolo_threshold

from natscene_inference import vdp
from natscene_inference.vdp.config import YOLOConfig

class NatSceneConstants:
    yolo_porject_dir : str = "natscene_inference/darknet/"
    yolo_weights : str = 'data/yolo_data/yolov4.weights'
    coco_classes : str = 'data/yolo_data/coco.names'
    configs_dir : str = "data/natscene_data/puzzles/"
    images_dir : str = "data/natscene_data/puzzles/images"
    cache_path : str = "data/natscene_data/cache.pkl"
    generator_output_dir : str = "data/natscene_data/bounding_boxes/"
    ir_output_dir : str = "data/natscene_data/ir/"
    output_dir: str = 'data/natscene_data/processed/'
    solver_path : str = "vdp_solver/scripts/vdpsolve.py"


def get_configs(configs_dir : str):
    return [os.path.join(configs_dir, f, 'config.json') for f in os.listdir(configs_dir)]

def run_solver(vdp_flags : str, inference_result : str =None, output_file : str =None, constants : NatSceneConstants = None):
    cmd = f"""
    timeout
    60
    python
    {constants.solver_path}
    {inference_result}
    {vdp_flags}
    """.strip()
    cmd = cmd.replace("\n", " ")
    solver_logs = exec_cmd(cmd)
    to_txt(solver_logs, output_file)


def generate_pipeline(use_cache : bool, converter_config, generator_config, ir_config):
    return vdp.pipeline.Pipeline([
        vdp.convert.YOLOConvert(use_cache=use_cache, config=converter_config),
        vdp.generate.YOLOGenerate(use_cache=use_cache, config=generator_config),
        vdp.ir.YOLOIR(use_cache=use_cache, **ir_config)
    ])

def run_pipeline(pipeline : vdp.pipeline.Pipeline, configs : list, constants : NatSceneConstants, args : argparse.Namespace):
    for pth in configs:
        print("running:", pth)
        vdp_params = read_json(pth)
        puzzle_name = vdp_params["name"]
        config = pipeline.run(vdp_params)
        config_out_pth = os.path.join(constants.ir_output_dir, puzzle_name, "config.json" )
        if not os.path.exists(os.path.dirname(config_out_pth)):
            os.makedirs(os.path.dirname(config_out_pth))
        to_json(config.__dict__, config_out_pth)
        solver_out_path = os.path.join(constants.output_dir, puzzle_name + ".out")
        inference_path = os.path.join(constants.ir_output_dir, puzzle_name)
        puzzle_class = puzzle_name.split("_")[0]
        if puzzle_class in yolo_threshold:
            n_quantifiers = yolo_threshold[puzzle_class][0]
            if puzzle_class == "setplates": n_quantifiers = "3 -E"
            vdp_flags = f"- {n_quantifiers} --autotune"
        else:
            assert args.vdp_flags is not None, "--vdp_flags must be specified for custom puzzle: " + puzzle_name
            vdp_flags = args.vdp_flags

        run_solver(vdp_flags=vdp_flags, inference_result=inference_path, output_file=solver_out_path, constants=constants)



if __name__ == "__main__":
    main_parser = argparse.ArgumentParser()
    main_parser.add_argument("--debug", action="store_true", help="Debug mode. NN is not run.", default=False)
    main_parser.add_argument("--regenerate", action="store_true", help="If enabled, regenerate all data instead of using cached copies.", default=False)
    main_parser.add_argument("--vdp_flags", default=None, type=str, help="Flags to pass onto solver. Required if user generated config.")
    main_parser.add_argument("--config", default="", type=str, help="Path to config file containing a vdp puzzle.")
    args = main_parser.parse_args()
    constants = NatSceneConstants()
    generator_config = YOLOConfig(
        model_path=constants.yolo_weights,
        yolo_project_dir=constants.yolo_porject_dir,
        output_dir=constants.generator_output_dir,
    )
    ir_config = dict(
        output_path=constants.ir_output_dir,
        coco_names=constants.coco_classes
    )
    converter_config = dict(
        configs_dir=constants.configs_dir,
    )

    configs = [args.config] if len(args.config) else get_configs(NatSceneConstants.configs_dir)
    pipeline = generate_pipeline(use_cache=not args.regenerate, converter_config=converter_config, generator_config=generator_config, ir_config=ir_config)
    run_pipeline(pipeline, configs, constants, args)