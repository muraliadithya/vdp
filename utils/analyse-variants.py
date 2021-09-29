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
in_pth  = "data/clevr-variants"

def exec_cmd(cmd):
    print(f"LOG: exec_cmd({cmd})")
    try:
        raw_output = subprocess.check_output(shlex.split(cmd), universal_newlines=True)
        output = raw_output.split("\n")
        return output
    except subprocess.CalledProcessError as e:
        print(f"LOG: exec_cmd({cmd}) failed with err: {e.returncode}", f"\n{e.output}")
        return None


############### CONSTANTS END ###############
############### HELPERS START ###############



############### HELPERS END ###############

if __name__ == '__main__':
    assert os.path.exists(in_pth), f"Path not found: {in_pth}"
    if len(sys.argv) > 1: to_run = [sys.argv[1]]
    puzzles = []
    pred_solver, pred_base = list(), list()
    for (absdir, folders, files) in os.walk(in_pth, followlinks=False):
        if absdir == in_pth:
            puzzles = [os.path.join(in_pth, p) for p in folders]
        if absdir in puzzles:
            print(absdir)
            puzzle_name = os.path.basename(absdir)
            if ("*" in puzzle_name) or (puzzle_name not in to_run):
                continue
            for v_dir in glob(os.path.join(absdir, "*")):
                if ('.json' in v_dir) or ('.pkl' in v_dir):
                    continue
                v_name = os.path.basename(v_dir)
                full_v_name = f"{puzzle_name}-{v_name}"
                gt_pth = os.path.join(v_dir, f"{full_v_name}-gt.json")
                gen_pth = os.path.join(v_dir, f"{full_v_name}.json")
                out_pth = os.path.join(v_dir, f"{full_v_name}.out")
                
                print("RUNNING", gt_pth)
                if not os.path.exists(out_pth):
                    print("BAD", gt_pth)
                    continue
                concepts = out_parser(out_pth)
                if 'candidate' not in concepts[0]:
                    print("BAD", gt_pth)
                    continue
                solver_pred = os.path.basename(concepts[0]['candidate'].groups()[0]).split(".json")[0]
                baseline_pred = concepts[-1]['bcandidate'].groups()[0]
                pred_base.append(int(baseline_pred))
                pred_solver.append(int(solver_pred))
                
    pred_base   = np.array(pred_base)
    pred_solver = np.array(pred_solver)

    print(f"SOLVER   ACCURACY: {(pred_solver == 0).sum() / len(pred_solver)}")
    print(f"BASELINE ACCURACY: {(pred_base == 0).sum()   / len(pred_base)  }")