import os
from glob import glob
import re, json, subprocess, shlex
from copy import deepcopy
from common import *
############### CONSTANTS START ###############
to_run = [
    'agreement',
    'alternate-color',
    'alternation',
    'aphaeresis',
    'apocope',
    'assimilation', 
    'breaking',
    'circle-at-ends',
    'devoicing',
    'spy',
    'shield', # scrap
    'surround', # scrap
    'threepack',
    'meeussen',
    'train',
]


in_pth  = "./data/clevr-ann"
out_pth = "./data/clevr-ann-rebuttal-changes"

############### CONSTANTS END ###############
############### HELPERS START ###############

def variant_split(pth):
    return (pth, rx_dict['path_match'].fullmatch(os.path.basename(pth)).groups())


def save_output(output, puzzle_dict, out_pth, puzzle_pth):
    if len(output) >= 3:
        candidate_num    = rx_dict['candidate_num'].fullmatch(output[0]).group(1)
        concept          = rx_dict['concept'].fullmatch(output[1]).group(1)
        candidate        = rx_dict['candidate'].fullmatch(output[2]).group(1)
    else:
        candidate_num    = None
        concept          = None
        candidate        = None
        return
    candidate_rel_path = os.path.join("images", os.path.relpath(candidate, "/home/ubuntu/vdp-tool-chain-repo/data/clevr-irs"))
    puzzle_dict['candidate'] = candidate_rel_path
    puzzle_dict['concept'] = concept
    print(f"LOG: Saving {puzzle_dict['name']} @ {os.path.join(out_pth, puzzle_pth)}")
    to_json(puzzle_dict, os.path.join(out_pth, puzzle_pth))
    return
############### HELPERS END ###############

if __name__ == '__main__':
    assert os.path.exists(in_pth), f"Path not found: {in_pth}"
    os.makedirs(out_pth, exist_ok=True)

    for pth, (puzzle, variant) in map(variant_split, glob(os.path.join(in_pth, "*.json"))):
        puzzle_dict = read_json(pth)
        puzzle_pth = os.path.relpath(pth, in_pth)
        # get the IR used to generate puzzle
        ir_dir = os.path.join("data", "clevr-irs", "", puzzle_dict['name'])
        ir_pth = os.path.join(ir_dir, "results.json")
        ir = read_json(ir_pth)
        if puzzle not in to_run:
            continue
        puzzle_flags = flags[puzzle]
        cmd = f"python scripts/vdpsolve.py {os.path.abspath(ir_dir)} {puzzle_flags}"
        raw_output = subprocess.check_output(shlex.split(cmd), universal_newlines=True, cwd="vdp-solver")
        output = raw_output.split("\n")
        save_output(output, puzzle_dict, out_pth, puzzle_pth)

