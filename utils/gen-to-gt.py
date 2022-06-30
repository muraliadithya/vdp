import os, sys
from glob import glob
import re, json, subprocess, shlex
from collections import namedtuple
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

############### CONSTANTS END ###############
############### HELPERS START ###############

def make_object(o):
    assert all(key in o for key in ['shape', 'size', 'material', 'color', 'x', 'y', 'z', 'orientation']), f'incomplete dict {o}'
    return dict(
        shape =         o['shape'],
        size =          o['size'],
        material =      o['material'],
        color =         o['color'],
        position =      [int(o['x']), int(o['y']), int(o['z'])],
    )

def make_scene(i, scene):
    return dict(image_index=i, image_filename=(img_template % i), objects=[make_object(obj) for obj in scene['objects']])

def make_gt_from_gen(scene_file):
    assert ('info' not in scene_file) and (isinstance(scene_file, list))
    scenes = [make_scene(i, scene) for i, scene in enumerate(scene_file)]
    out_json = dict(info="clevr groundtruth scene", scenes=scenes)
    return out_json
############### HELPERS END ###############

if __name__ == '__main__':
    assert len(sys.argv) > 1, f"Provide a path to file."
    in_pth = sys.argv[1]
    in_dir, (in_name, in_ext) = os.path.dirname(in_pth), os.path.splitext(os.path.basename(in_pth))
    out_name = in_name + '-gt' + in_ext
    out_pth = os.path.join(in_dir, out_name)
    scene_file = read_json(in_pth)
    out_json = make_gt_from_gen(scene_file)
    print(f"LOG: {in_pth} --> {out_pth}")
    to_json(out_json, out_pth)
