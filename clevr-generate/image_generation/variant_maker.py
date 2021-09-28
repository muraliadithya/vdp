
import sys
import json
import os
from collections import namedtuple, defaultdict
import numpy as np
from copy import deepcopy
from matplotlib import pyplot as plt

def read_json(pth):
    with open(pth, 'r') as f:
        return json.load(f)

def to_json(dct, pth):
    with open(pth, 'w') as f:
        return json.dump(dct, f)

def flip(p=0.5):
    return True if np.random.random() < p else False
# puzzle_loc = sys.argv[1]
eps = 0.75


Object = namedtuple('Object', ['x', 'y', 'z', 'size', 'shape', 'color', 'orientation', 'material'])
variables = read_json("data/properties.json")

loc = lambda p : f"/home/ubuntu/vdp-tool-chain-repo/data/clevr-puzzles/{p}.json"

materials = list(variables['materials'].keys())
shapes = list(variables['shapes'].keys())
sizes = list(variables['sizes'].keys())
colors = list(variables['colors'].keys())
attributes = {
    'material' : materials,
    'shape' : shapes,
    'size' : sizes,
    'color' : colors
}

imgs = list()
mindist = lambda arr : np.array([abs(a-b) for a in arr for b in arr if a != b])
dx = lambda : np.random.uniform(-0.10, 0.10)
dy = lambda : np.random.uniform(-0.25, 0.25)



def get_attr(attr, puzzle):
    attrs = list()
    for i, img in enumerate(puzzle):
        objects = img['objects']
        o_attrs = ([obj[attr] for obj in objects])
        
        attrs.append(o_attrs)

    return (attrs)



puzzles = json_load()
# {
#     "agreement":                {'name' : 'agreement', 'vary_dims' : ["color", "material"],
#     "alternation":              ["color", "size", "material"],
#     "alternate-color":            [ "color", "material"],
#     "aphaeresis":               ["color", "size", "material"],
#     "apocope":                  ["color", "material"],
#     "assimilation":               ["color", "material"],
#     "groundtruth":               ["color", "shape", "material"],
#     "breaking":                 ["color", "size", "material"],
#     "circle-at-ends":           ["color", "material"],
#     "devoicing":                ["color", "material"],
#     "spy":                      ["color", "size", "material"],
#     "shield":                   ["color", "size"],
#     "surround":                 ["color"],
#     "threepack":                ["shape", "color", "material"],
#     "meeussen":                 ["color", "material"],
#     "train":                    ["color", "size"],
# }



for name, vary_dims in puzzles.items():

    puzzle = read_json(loc(name))

    def make_variant(puzzle):
        changes = list()
        variant = deepcopy(puzzle)
        
        possible_changes = defaultdict(dict)

        for dim in vary_dims:
            for attr in set(np.concatenate(get_attr(dim, variant))):
                possible_changes[dim][attr] = np.random.choice([c for c in attributes[dim] if c != attr])

        for i, img in enumerate(variant):
            objects = img['objects']
            img_purturb = dy()
            for j, obj in enumerate(objects):
                obj['x'] += round((dx() + img_purturb), 2)
                obj['y'] += round((dx() + img_purturb), 2)
                for dim in vary_dims:
                    old_val = obj[dim]
                    new_val = possible_changes[dim][old_val]
                    log     = "-".join([str(i), str(j), old_val, new_val])
                    changes.append(log)
                    obj[dim] = new_val

            assert all([ abs(obj['x'] - obj2['x']) >= 1.4 for obj in objects for obj2 in objects if ((obj2['shape'] == 'large') or (obj['shape'] == 'large') and (obj != obj2)) ])

            # assert all([ abs(obj['y'] - obj2['y']) >= 1.4 for obj in objects for obj2 in objects if ((obj2['shape'] == obj['shape']) and (obj != obj2)) ])

        return variant, sorted(changes)


    variants = []
    chs = []
    for varidx in range(50):
        var, changes = make_variant(puzzle)

        if all([ch != changes for ch in chs]):
            variants.append(var)
            chs.append(changes)
        
    print(name, len(chs))


    for i, var in enumerate(variants):
        to_json(var, f"/home/ubuntu/vdp-tool-chain-repo/data/clevr-variants/{name}-{i}.json")