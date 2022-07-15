import os, sys
from glob import glob
import re, json, subprocess, shlex
from collections import namedtuple
from copy import deepcopy
import numpy as np
from common import *
import scipy.linalg as la

collate_pth = "/home/ubuntu/vdp/clevr_inference/"
assert os.path.exists(collate_pth), f"Check `collate_pth` constant."
sys.path.append(collate_pth)
sys.path.append(os.path.join(collate_pth, "reason"))

import collate
############### CONSTANTS START ###############

############### CONSTANTS END ###############
############### HELPERS START ###############


def collate_gt_results(in_pth, train_split, test_split):
    # assert (read_json(in_pth)['info'] == 'clevr groundtruth scene'), f"Ground truth info not found."
    results_pth = in_pth
    out_pth     = os.path.dirname(in_pth)
    collate.collate(train_split, test_split, results_pth, out_pth)
    return out_pth

def run_solver(in_pth, puzzle_flags, print_out=True):
    cmd = f"python scripts/vdpsolve.py {os.path.abspath(in_pth)} {puzzle_flags}"
    raw_output = subprocess.check_output(shlex.split(cmd), universal_newlines=True, cwd="vdp_solver")
    if print_out: print(raw_output)
    return raw_output

############### HELPERS END ###############

if __name__ == '__main__':
    assert os.path.basename(os.getcwd()) == 'vdp', "getcwd() was not found to be project_dir"
    assert len(sys.argv) > 3, "Usage\n$ python utils/gt-to-solver.py {gt-path} \"{train_split}\" \"{test_split}\" \"{solver_flags=optional}\""
    in_pth = sys.argv[1]
    assert os.path.exists(in_pth), f"{in_pth} not found @ {os.getcwd()}"
    train_split = sys.argv[2].split(" ")
    test_split = sys.argv[3].split(" ")
    puzzle_pth = collate_gt_results(in_pth, train_split, test_split)
    puzzle = os.path.basename(puzzle_pth)
    puzzle_flags = flags[puzzle] if len(sys.argv) <= 4 else sys.argv[4]
    run_solver(puzzle_pth, puzzle_flags)

