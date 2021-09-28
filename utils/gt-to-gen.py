import os, sys, math
from glob import glob
import re, json, subprocess, shlex
from collections import namedtuple
from copy import deepcopy
import numpy as np
from common import *
import scipy.linalg as la 
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


############### CONSTANTS END ###############
############### HELPERS START ###############

def rotate(arr):
    return ROT45 @ arr

def make_object(obj_dict, do_rot):
    pos = obj_dict['position']
    if (do_rot):
        pos = rotate(pos)
    
    assert all(key in obj_dict for key in ['shape', 'size', 'material', 'color', 'position']), f'incomplete dict {obj_dict}'
    orient = round(float(obj_dict['orientation']), 2) if 'orientation' in obj_dict else 0.0
    return dict(
        x =             round(float(pos[0]), 2),
        y =             round(float(pos[1]), 2),
        z =             round(float(pos[2]), 2),
        size =          obj_dict['size'],
        shape =         obj_dict['shape'],
        color =         obj_dict['color'],
        orientation =   math.radians(orient),
        material =      obj_dict['material'])

def make_gen_from_gt(in_pth, do_rot):
    in_dir, (in_name, in_ext) = os.path.dirname(in_pth), os.path.splitext(os.path.basename(in_pth))
    out_name = (in_name.split("-gt")[0])  + in_ext
    out_pth = os.path.join(in_dir, out_name)
    in_json = read_json(in_pth)
    assert ('info' in in_json) and (in_json['info'] == 'clevr groundtruth scene')
    out_json = [{'objects' : list(map(lambda x :make_object(x, do_rot), scene_dict['objects']))} for scene_dict in in_json['scenes']]
    print(f"LOG[{do_rot}]: {in_pth} --> {out_pth}")
    to_json(out_json, out_pth)

############### HELPERS END ###############

if __name__ == '__main__':
    assert len(sys.argv) > 1, f"Provide a path to file."
    in_pth = sys.argv[1]
    do_rot = (sys.argv[2] == 'True') if len(sys.argv) > 2 else False
    make_gen_from_gt(in_pth, do_rot)
