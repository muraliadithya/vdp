import os, sys, math, re, json, subprocess, shlex, hashlib, random
from glob import glob
from collections import defaultdict
from copy import deepcopy
import numpy as np
from ast import literal_eval
from common import *
import scipy.linalg as la 
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
n_variants = 25
# PERCENT_SIMPLE = 0.5
out_dir = 'data/clevr-variants/'
pz_pth  = "data/clevr-cleaned-puzzles"

get_attr = lambda obj:  (obj['size'], obj['shape'], obj['material'], obj['color'])

############### CONSTANTS END ###############
############### HELPERS START ###############
def hash_dict(d):
    hash_list = list()
    for i, s in enumerate(d['scenes']):
        for j, o in enumerate(s['objects']):
            hash_list.append((i, j, *get_attr(o)))

    return (hash(tuple(sorted(hash_list))))

def collect_attr(scene, i):
    for j, obj in enumerate(scene['objects']):
        sz, sh, m, c = get_attr(obj)
        sizes[sz].append( (i, j) )
        shapes[sh].append( (i, j) )
        materials[m].append( (i, j) )
        colors[c].append( (i, j) )


def jitter(pos, scene_x, scene_y):
    x, y, z = pos
    rx = x + np.random.uniform(-0.02, 0.02)
    ry = y + np.random.uniform(-0.02, 0.02)

    return [round(rx + scene_x, 3), round(ry + scene_y, 3), z]

def publish_attr(i, in_scene, properties):
    out_scene = deepcopy(in_scene)
    scene_x_jitter = np.random.uniform(-0.05, 0.05)
    scene_y_jitter = np.random.uniform(-0.05, 0.05)
    for j, obj in enumerate(in_scene['objects']):
        out_scene['objects'][j] = {
            'shape': properties['shape'][(i,j)],
            'size': properties['size'][(i,j)],
            'material': properties['material'][(i,j)],
            'color': properties['color'][(i,j)],
            'position': jitter(obj['position'], scene_x_jitter, scene_y_jitter)
            # 'position': obj['position']
        }

    return out_scene
        
        


def shuffle(scene_props, key):
    global changes
    new_props = deepcopy(scene_props)
    scene_prop = scene_props[key]
    new_prop  = defaultdict(list)
    all_props = deepcopy(set(properties[key]))
    keys = list(scene_prop.keys())
    np.random.shuffle(keys)
    for c in keys:
        choices =  all_props - set([c])
        if len(choices):
            new_c = np.random.choice(list(choices))
            all_props -= set([new_c])
        else:
            new_c = c
        
        changes.append( (key, c, new_c) )
        new_prop[new_c] = scene_prop[c]

    new_props[key] = new_prop
    return new_props


def generate_variant(in_json, puzzle_name, changefo=True):
    assert ('info' in in_json) and (in_json['info'] == 'clevr groundtruth scene')
    out_json = deepcopy(in_json)

    global sizes, shapes, materials, colors
    sizes, shapes, materials, colors = defaultdict(list), defaultdict(list), defaultdict(list), defaultdict(list)
    
    for i, scene in enumerate(in_json['scenes']):
        collect_attr(scene, i)

    scene_props = {'color': colors, 'size':sizes, 'shape':shapes, 'material':materials}

    if changefo:
        for dim in vary_along[puzzle_name]:
            scene_props = shuffle(scene_props, dim)


    rev_scene_props = { pk: {v:k for k, vv in pv.items() for v in vv} for pk, pv in scene_props.items()}
    for i in range(len(in_json['scenes'])):
        in_scene  = in_json['scenes'][i]
        out_json['scenes'][i] =  publish_attr(i, in_scene, rev_scene_props)
    return out_json

def reorder(d, order):
    d['order'] = list(order)
    scenes = list()
    for i in order:
        s = d['scenes'][i]
        s['image_index'] = int(len(scenes))
        scenes.append(s)
    
    d['scenes'] = scenes
    return d


def generate_variants(in_pth, n_variants):
    assert n_variants > 0
    (in_name, in_ext) = os.path.splitext(os.path.basename(in_pth))
    puzzle_name = in_name.split("-gt")[0] 
    out_name = puzzle_name  + in_ext
    out_pth = os.path.join(out_dir, puzzle_name)
    in_json = read_json(in_pth)

    # variants = read_json("data/clevr-variants/variants.json")
    variants = dict()
    variants[hash_dict(in_json)] = in_json

    for _ in range(n_variants * 5):
        global changes
        changes = list()
        variant = generate_variant(in_json, puzzle_name)
        vhash = hash_dict(variant)

        if vhash not in variants:
            variants[vhash] = (variant, deepcopy(changes))
        
        # if len(variants)  > (n_variants):
        if len(variants) > int(n_variants):
            break

    del variants[hash_dict(in_json)]

    if len(variants) < n_variants:
        return

    for i, (v, c) in enumerate(variants.values()):
        variant_pth = os.path.join(out_pth, f"fovariant-{i}", f"{puzzle_name}-fovariant-{i}-gt.json")
        os.makedirs(os.path.dirname(variant_pth), exist_ok=True)
        print("LOG:", variant_pth)
        test = [0, 1, 2]
        train = [3, 4, 5]
        random.shuffle(test)
        order = test + train
        v = reorder(v, order)
        to_json(v, variant_pth)

    to_pickle(variant, os.path.join(out_pth, "full-run-variants.pkl"))
    # to_json(variants, os.path.join(out_pth, "full-run-variants.json"))




    # simple_variants = list()
    # for _ in range(int(n_variants * PERCENT_SIMPLE)):
    #     variant = generate_variant(in_json, puzzle_name, False)
    #     simple_variants.append(variant)


    # for i, v in enumerate(simple_variants):
    #     variant_pth = os.path.join(out_pth, f"variant-{i}", f"{puzzle_name}-variant-{i}-gt.json")
    #     os.makedirs(os.path.dirname(variant_pth), exist_ok=True)
    #     print("LOG:", variant_pth)
    #     to_json(v, variant_pth)




        # out_json = [{'objects' : list(map(lambda x :make_object(x, do_rot), scene_dict['objects']))} for scene_dict in in_json['scenes']]
    # print(f"LOG[{do_rot}]: {in_pth} --> {out_pth}")
    # to_json(out_json, out_pth)

############### HELPERS END ###############

if __name__ == '__main__':
    assert os.path.exists(pz_pth), f"Path not found: {pz_pth}"
    if len(sys.argv) > 1: n_variants = int(sys.argv[1])
    if len(sys.argv) > 2: to_run = [sys.argv[2]]
    puzzles = []
    for (absdir, folders, files) in os.walk(pz_pth, followlinks=False):
        if absdir == pz_pth:
            puzzles = [os.path.join(pz_pth, p) for p in folders]
        if absdir in puzzles:
            puzzle_name = os.path.basename(absdir)
            if ("*" in puzzle_name) or (puzzle_name not in to_run):
                continue
            in_pth = (os.path.join(absdir, f"{puzzle_name}-gt.json"))            
            generate_variants(in_pth, n_variants)
            
    # assert len(sys.argv) > 2, f"Provide a path to file and number of variants."
    # in_pth = sys.argv[1]
    # n_variants = int(sys.argv[2])
