import os, re, json, subprocess, shlex, sys, shutil
from glob import glob
import itertools
from copy import deepcopy
import numpy as np
from common import *
############### CONSTANTS START ###############
# start on Tue Sep 28 16:42:43 UTC 2021
to_run = [
        "agreement",
        "alternate-color",
        "alternation",
        "aphaeresis",
        "apocope",
        "assimilation",
        "breaking",
        "circle-at-ends",
        # "threepack",
        # "train",
        # "partition",
        # "spy",
        # "shield",
        # "devoicing",
        # "meeussen",
        # "neutralization",
        # "cones*",
        ]
in_pth  = "/home/ubuntu/ooo-tool-chain-repo/data/inference-outputs/"
out_pth  = "/home/ubuntu/ooo-tool-chain-repo/data/ooo-inference-outputs-2/"
solver_dir = "/home/ubuntu/ooo-tool-chain-repo/vdp-repo"
############### CONSTANTS END ###############
############### HELPERS START ###############

def extract_gt(pth):
    print(pth)
    return (pth, (None, None))

def exec_cmd(cmd, cwd=None):
    print(f"LOG: exec_cmd({cmd})")
    try:
        raw_output = subprocess.check_output(shlex.split(cmd), universal_newlines=True, cwd=cwd)
        output = raw_output.split("\n")
        return output
    except subprocess.CalledProcessError as e:
        print(f"LOG: exec_cmd({cmd}) failed with err: {e.returncode}", f"\n{e.output}")
        return None

get_split = lambda pth: "train" if os.path.splitext(pth)[0] in ['3', '4', '5'] else "test"


def run_solver(full_pz_name, pz_name, num, ooo_puzzle):
    pz_pth       = os.path.join(out_pth, pz_name, f"{pz_name}-fovariant-{num}-shuffle-{ooo_puzzle['idx']}")
    pz_train_pth = os.path.join(pz_pth,  "train")
    pz_test_pth  = os.path.join(pz_pth,  "test")
    os.makedirs(pz_train_pth, exist_ok=True)
    os.makedirs(pz_test_pth, exist_ok=True)

    puzzles = list(enumerate(list(ooo_puzzle['candidate'])  + sorted(list(ooo_puzzle['examples']))))

    for idx, ir in puzzles:
        shutil.copyfile(src=os.path.join(in_pth, full_pz_name, get_split(ir), ir), dst=os.path.join(pz_train_pth, f"{idx}.json"))


    ooo_puzzle['configuration'] = (puzzles)

    to_json(ooo_puzzle, os.path.join(pz_pth, "ooo_config.json"))

    cmd = f"python scripts/vdpsolve.py --solver GuardedConjunctiveAltpuzzleSolver {os.path.abspath(pz_pth)} {ooo_flags[pz_name]} --autotune --unique-minimal-solution"
    output = exec_cmd(cmd=cmd, cwd=solver_dir)
    to_txt(output, os.path.join(pz_pth, "solver_output.txt")  )
    to_pickle(output, os.path.join(pz_pth, "solver_output.pkl") )
    # output = read_pickle(os.path.join(pz_pth, "solver_output.pkl"))
    # output2 = read_pickle(os.path.join(pz_pth, "baseline_output.pkl"))
    # # return (output2['answer_idx'] == 0)
    # return (os.path.basename(output[2].replace("Candidate Name: ", "")) == "0.json")
    return ((output[-2].split(": ")[1]) == 'True')
    

############### HELPERS END ###############
from collections import defaultdict
if __name__ == '__main__':
    assert os.path.exists(in_pth), f"Path not found: {in_pth}"
    if len(sys.argv) > 1: to_run = [sys.argv[1]]
    puzzles = []
    preds = defaultdict(list)
    folders = sorted(glob(os.path.join(in_pth, "*")))
    # for (absdir, folders, files) in os.walk(in_pth, followlinks=False):
    for puzzle in map(os.path.basename, folders):
        pz_name, num = puzzle.split("-fovariant-")
        swap_num = None
        if "swap" in num or int(num) >= 25:
            continue
            # num, swap_num = num.split("-swap")
        # print(pz_name, num)

        example_set   = [0, 3, 4, 5]
        candidate_set = [1, 2]

        idx = 0
        for ex_exclude in range(4):
            for candidate_sel in range(2):
                examples = sorted(list(set(example_set) - {example_set[ex_exclude]} ))
                candidate = candidate_set[candidate_sel]
                # print(idx, examples, candidate_sel)
                ooo_puzzle = {"examples" : [f"{eg}.json" for eg in examples ], "candidate" : [f"{candidate}.json"], "idx" : idx }
                preds[pz_name].append(run_solver(puzzle, pz_name, num, ooo_puzzle))
                idx += 1

    x = 0
    for k, v in preds.items():
        x += sum(v)
        print(sum(v)/ len(v))
    
    print(x)
        # if absdir == in_pth:
        #     puzzles = [os.path.join(in_pth, p) for p in folders]
        # if absdir in puzzles:
        #     print(absdir)
        #     puzzle_name = os.path.basename(absdir)
        #     if ("*" in puzzle_name) or (puzzle_name not in to_run):
        #         continue
        #     for v_dir in glob(os.path.join(absdir, "*")):
        #         if "swap" in v_dir:
        #             continue
        #         v_name = os.path.basename(v_dir)
        #         full_v_name = f"{puzzle_name}-{v_name}"
        #         gt_pth = os.path.join(v_dir, f"{full_v_name}-gt.json")
        #         gen_pth = os.path.join(v_dir, f"{full_v_name}.json")
        #         print("RUNNING", gt_pth)


        #         # cmd = f"python utils/gt-to-gen.py {gt_pth} True"
        #         # output = exec_cmd(cmd=cmd)
        #         # if (not output):
        #         #     print("SKIPPING", full_v_name)
        #         #     continue
        #         # print("OUT:", output)

        #         # pz_flags = flags[puzzle_name] if puzzle_name in flags else "- 2 -N 100"
        #         # cmd = f"./driver.sh {gen_pth} {full_v_name} \"3 4 5\" \"0 1 2\" \"{pz_flags}\" "
        #         # output = exec_cmd(cmd=cmd)
        #         # if (not output): 
        #         #     print("SKIPPING", full_v_name)
        #         #     continue

        #         # if len(swap_list[puzzle_name]) > 1: 
        #         #     sl = set(swap_list[puzzle_name]) - set([0])
        #         #     # swap = np.random.choice(list(sl))
        #         #     for swap in list(sl):
        #         #         swap_gen_pth, swap_pz_pth = generate_swap(swap, v_dir, v_name, full_v_name)
        #         #         # reeexecute command, no generation needed.
        #         #         cmd = f"./driver-no-gen.sh {swap_gen_pth} {full_v_name + f'-swap{swap}'} \"3 4 5\" \"0 1 2\" \"{pz_flags}\" "
        #         #         output = exec_cmd(cmd=cmd)
        #         #         if (not output): 
        #         #             print("SKIPPING", full_v_name)
        #         #             continue
                        
        #         #         for img in glob(f"data/output/images/{full_v_name}-swap{swap}/*.png"):
        #         #             print("MOVE", img, "->", swap_pz_pth)
        #         #             shutil.copy(img, swap_pz_pth)

        #         # for img in glob(f"data/output/images/{full_v_name}/*.png"):
        #         #     print("MOVE", img, "->", v_dir)
        #         #     shutil.copy(img, v_dir)

        #         # print("OUT:", output)
        #         # cmd = f"python utils/visualize-inference.py {gt_pth}"
        #         # output = exec_cmd(cmd=cmd)