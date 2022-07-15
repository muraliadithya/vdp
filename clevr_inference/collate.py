import sys
import os
from typing import List
sys.path.append( os.path.dirname(__file__) )
import json
import numpy as np
from reason.executors import clevr_executor as exe
from reason.utils import utils
from collections import defaultdict
import shutil

THRESH = 0.2 # relate[] funtion ``activation'' value
FB_THRESH = 0.4 # relate[] funtion ``activation'' value
RL_THRESH = 0.2 # relate[] funtion ``activation'' value
modules = exe.get_modules()

def read_json(pth):
    assert os.path.exists(pth), f"{pth} not found w.r.t {os.getcwd()}"
    with open(pth, 'r') as f:
        return json.load(f)

def to_json(obj, pth):
    with open(pth, 'w') as f:
        return json.dump(obj, f)

tup = lambda o : ((o['shape'], o['material'], o['color']))
norm = lambda o : sorted(list(map(tup, o)))
strfmt = lambda o, rpos, gpos : "{3:<2} | {:<3} | {:<3} : res = <{:5.2f}, {:5.2f}, {:5.2f}> | gt = <{:5.2f}, {:5.2f}, {:5.2f}>".format(o[0][:2], o[1][:2], o[2][:3],rpos[o][0], rpos[o][1], rpos[o][2], gpos[o][0], gpos[o][1], gpos[o][2])

sames = ['color', 'material', 'size']
query = ['color', 'material', 'size', 'shape']
query_no_shape = ['color', 'material', 'size']
dirs = ['left', 'right', 'behind', 'front', 'disequal']



def get_fo_model(scene):
    relations = defaultdict(list)
    objects = list()
    labels = list()
    for obj1 in scene:
        objects.append(obj1['id'])
        for d in dirs:
            rel_fn = modules[f'relate[{d}]']
            if d in ['front', 'behind']:
                THRESH = FB_THRESH
            else:
                THRESH = RL_THRESH
            for obj2 in rel_fn(obj1, scene, threshold=THRESH):
                if ((d == 'disequal') and (obj2 not in modules[f'same_shape'](obj1, scene))):
                    # Only compute disequal is both items have same shape
                    continue
                relations[d].append([obj2['id'], obj1['id']])

        rel_fn = modules[f'query_shape']
        ans = rel_fn(obj1, scene)
        relations['has_label'].append([obj1['id'], ans])
        labels.append(ans)

        for q in query_no_shape:
            rel_fn = modules[f'query_{q}']
            ans = rel_fn(obj1, scene)
            relations[ans].append([obj1['id']])
            # labels.append(ans)

        for q in sames:
            rel_fn = modules[f'same_{q}']
            for obj2 in rel_fn(obj1, scene):
                relations[f'same_{q}'].append([obj2['id'], obj1['id']])

    # print(relations.keys())
    relations_present = list(relations.keys())
    relation_signature = dict()
    
    for rel in relations_present:
        if rel in (dirs + list(map(lambda x: f'same_{x}', sames))):
            relation_signature[rel] = ['object', 'object']
        elif rel in ['has_label']:
            relation_signature[rel] = ['object', 'label']
        else:
            relation_signature[rel] = ['object', ]



    fo_model = {
        'sorts': ['object', 'label'],
        'predicates': relation_signature,
        'elements': {'object' : objects,
                    'label' : list(set(labels))},
        'interpretation': dict(relations),
        'raw' : {'scene' : scene}
    }

    return fo_model

def collate(train_split : List[str], test_split : List[str], results_pth : str, out_pth : str):
    res = [f for f in utils.load_scenes(results_pth) if len(f)]
    shutil.rmtree(os.path.join(out_pth, 'train'), ignore_errors=True)
    shutil.rmtree(os.path.join(out_pth, 'test'), ignore_errors=True)
    shutil.rmtree(os.path.join(out_pth, 'none'), ignore_errors=True)
    for idx, scene in enumerate(res):     
        partition = 'none'
        partition = 'test' if str(idx) in test_split else partition
        partition = 'train' if str(idx) in train_split else partition
        print(f"{idx}.json in {partition}")

        loc = os.path.join(out_pth, partition, str(idx)) + '.json'
        os.makedirs(os.path.dirname(loc), exist_ok=True)
        fo_model = get_fo_model(scene)
        to_json(fo_model, loc)
        

if __name__ == "__main__":
    train_split = sys.argv[1].split(" ")
    test_split = sys.argv[2].split(" ")
    results_pth = sys.argv[3] if len(sys.argv) > 1 else '/home/ubuntu/vdp/data/inference-outputs/results.json'
    out_pth =  sys.argv[4] if len(sys.argv) > 2 else '/home/ubuntu/vdp/data/inference-outputs/'
    collate(train_split, test_split, results_pth, out_pth)    