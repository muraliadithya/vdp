import os, re, json, subprocess, shlex, sys, shutil
from glob import glob
from copy import deepcopy
from common import *
############### CONSTANTS START ###############
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


def run_solver(gt_pth, puzzle_name, train_split, test_split):
    pz_flags = flags[puzzle_name] if puzzle_name in flags else "- 2 -N 200"
    tr_split = " ".join([str(x) for x in train_split])
    te_split = " ".join([str(x) for x in test_split])
    cmd = f"python utils/gt-to-solver.py {gt_pth} \"{tr_split}\" \"{te_split}\" \"{pz_flags}\" "
    output = exec_cmd(cmd=cmd)
    if (not output): 
        print("SKIPPING", puzzle_name)
        return None
    
    return output


############### HELPERS END ###############

if __name__ == '__main__':
    assert os.path.exists(in_pth), f"Path not found: {in_pth}"
    if len(sys.argv) > 1: to_run = [sys.argv[1]]
    puzzles = []
    for (absdir, folders, files) in os.walk(in_pth, followlinks=False):
        if absdir == in_pth:
            puzzles = [os.path.join(in_pth, p) for p in folders]
        if absdir in puzzles:
            print(absdir)
            puzzle_name = os.path.basename(absdir)
            if ("*" in puzzle_name) or (puzzle_name not in to_run):
                continue
            gt_pth =  os.path.join(absdir, puzzle_name + "-gt.json")
            gen_pth = os.path.join(absdir, puzzle_name + ".json")
            cmd = f"python utils/gt-to-gen.py {gt_pth} True"
            output = exec_cmd(cmd=cmd)
            if (not output):
                print("SKIPPING", puzzle_name)
                continue
            print("OUT:", output)

            o1 = run_solver(gt_pth, puzzle_name, [3, 4, 5], [0, 1, 2])
            o2 = run_solver(gt_pth, puzzle_name, [0, 4, 5], [3, 1, 2])
            o3 = run_solver(gt_pth, puzzle_name, [3, 0, 5], [4, 1, 2])
            o4 = run_solver(gt_pth, puzzle_name, [3, 4, 0], [5, 1, 2])

            print("\n".join(o1))
            input("Press key to continue")
            print("\n".join(o2))
            input("Press key to continue")
            print("\n".join(o3))
            input("Press key to continue")
            print("\n".join(o4))
            input("Press key to continue")

            
            