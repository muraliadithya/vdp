import os, re, json, subprocess, shlex, sys, shutil
from glob import glob
from copy import deepcopy
import numpy as np
from common import *
############### CONSTANTS START ###############
# start on
# Wed Jan 12 02:04:44 UTC 2022
# end on?
# 
to_run = [
        "agreement",
        "alternate-color",
        "alternation",
        "aphaeresis",
        "apocope",
        "assimilation",
        "breaking",
        "circle-at-ends",
        "threepack",
        "train",
        "partition",
        "spy",
        "shield",
        "devoicing",
        "meeussen",
        # "neutralization",
        # "cones*",
        ]
in_pth  = "data/clevr-cleaned-puzzles"

############### CONSTANTS END ###############
############### HELPERS START ###############

def extract_gt(pth):
    print(pth)
    return (pth, (None, None))

def exec_cmd(cmd):
    print(f"LOG: exec_cmd({cmd})")
    try:
        raw_output = subprocess.check_output(shlex.split(cmd), universal_newlines=True)
        output = raw_output.split("\n")
        return output
    except subprocess.CalledProcessError as e:
        print(f"LOG: exec_cmd({cmd}) failed with err: {e.returncode}", f"\n{e.output}")
        return None


def generate_swap(swap, v_dir, v_name, full_v_name):
    # copy puzzle into swap puzzle.
    swap_pz_pth = os.path.join(os.path.dirname(v_dir), v_name + f'-swap{swap}')
    img_dir_pth = os.path.join("data/output/images/", full_v_name + f'-swap{swap}')
    scenes_pth  = os.path.join("data/output/", f'CLEVR_{full_v_name}-swap{swap}_scenes.json')
    swap_gen_pth = os.path.join(swap_pz_pth, f"{full_v_name}.json")

    if os.path.exists(swap_pz_pth):
        shutil.rmtree(swap_pz_pth)

    if os.path.exists(img_dir_pth):
        shutil.rmtree(img_dir_pth)

    if os.path.exists(scenes_pth):
        os.remove(scenes_pth)

    shutil.copytree(os.path.join(v_dir), swap_pz_pth)

    shutil.copytree(os.path.join("data/output/images/", full_v_name), img_dir_pth)
    for f in glob(img_dir_pth + "/*"):
        shutil.move(f, f.replace(full_v_name + "_0", full_v_name + f'-swap{swap}_0'))
    # shutil.copy(f"data/output/CLEVR_{full_v_name}_scenes.json" , scenes_pth)
    with open(f"data/output/CLEVR_{full_v_name}_scenes.json", "r") as fin:
        with open(scenes_pth, "w") as fout:
            for line in fin:
                fout.write(line.replace(full_v_name, full_v_name + f'-swap{swap}'))


    # move image
    izero = os.path.join("data/output/images/", full_v_name, f"CLEVR_{full_v_name}_000000.png")
    iswap = os.path.join("data/output/images/", full_v_name, f"CLEVR_{full_v_name}_00000{str(swap)}.png")
    itemp = os.path.join("data/output/images/", full_v_name, "temp.png")
    shutil.copy(izero, itemp)
    shutil.copy(iswap, izero)
    shutil.move(itemp, iswap)
    
    return swap_gen_pth, swap_pz_pth


############### HELPERS END ###############

if __name__ == '__main__':
    assert os.path.exists(in_pth), f"Path not found: {in_pth}"
    puzzles = []
    for (absdir, folders, files) in os.walk(in_pth, followlinks=False):
        if absdir == in_pth:
            puzzles = [os.path.join(in_pth, p) for p in folders]
        if absdir in puzzles:
            puzzle_name = os.path.basename(absdir)
            if ("*" in puzzle_name) or (puzzle_name not in to_run):
                continue
            print(absdir)
            gt_pth = os.path.join(absdir, f"{puzzle_name}-gt.json")
            gen_pth = os.path.join(absdir, f"{puzzle_name}.json")
            scene_pth = os.path.join(absdir, "scene_file.json")
            print("RUNNING", gt_pth)
            cmd = f"cp {gen_pth} {scene_pth}"
            output = exec_cmd(cmd=cmd)
            if (not output):
                print("SKIPPING", puzzle_name)
                continue
            print("OUT:", output) 
            pz_flags = flags[puzzle_name] if puzzle_name in flags else "- 2 --autotune"
            cmd = f"python clevr_driver.py --puzzle_dir {absdir} --examples \"3 4 5\" --candidates \"0 1 2\" --vdp_flags \"{pz_flags}\" --use_gpu"
            output = exec_cmd(cmd=cmd)
            if (not output): 
                print("SKIPPING", puzzle_name)
                continue

        #         if len(swap_list[puzzle_name]) > 1:
        #             sl = set(swap_list[puzzle_name]) - set([0])
        #             # swap = np.random.choice(list(sl))
        #             for swap in list(sl):
        #                 examples = "3 4 5".replace(str(swap), "0")
        #                 candidates = "0 1 2".replace("0", str(swap))
        #                 swapped_v_dir = v_dir + "-swap" + str(swap)
        #                 shutil.rmtree(swapped_v_dir)
        #                 shutil.copytree(v_dir, swapped_v_dir)
                        
        #                 cmd = f"python clevr_driver.py --puzzle_dir {swapped_v_dir} --examples \"{examples}\" --candidates \"{candidates}\" --vdp_flags \"{pz_flags}\" --use_gpu"
        #                 output = exec_cmd(cmd=cmd)
        #                 if (not output): 
        #                     print("SKIPPING", full_v_name)
        #                     continue

            print("OUT:", output)
        #         # cmd = f"python utils/visualize-inference.py {gt_pth}"
        #         # output = exec_cmd(cmd=cmd)