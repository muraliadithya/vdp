import os
import numpy as np
import pandas as pd
from glob import glob
import re, json
import matplotlib.pyplot as plt
from copy import deepcopy

def read_json(pth):
    with open(pth, 'r') as f:
        return json.load(f)
    
def to_json(obj, pth):
    with open(pth, 'w') as f:
        json.dump(obj, f)

def read_txt(pth):
    with open(pth, 'r') as fp:
        return fp.readlines()

def to_txt(lines, pth):
    with open(pth, 'w') as fp:
        for l in lines:
            fp.write("%s" % l)

rx_dict = {
    'candidate_num' : re.compile(r"Candidate: c(?P<candidate_num>\d)\n"),
    'concept' : re.compile(r"Concept: (?P<concept>.*)\n"),
    'candidate' : re.compile(r"Candidate Name: (?P<candidate>.*)\n"),
    'end' : re.compile(r"No discriminator found for puzzle (?P<cpath>.*)\n"),
    'bscores' : re.compile(r"The scores were (?P<score_list>\[[\d., e-]+\]).\n"),
    'bcandidate' : re.compile(r"Best concept is @ idx (\d) ie: (?P<bcpath>.*)\n")
}


def _parse_line(line):
    for key, rx in rx_dict.items():
        match = rx.search(line)
        if match:
            return (key, match)
    return (None, None)

def _parse_file(file_path):
    data = dict()
    data['name'] = str()
    data['concepts'] = list()
    data['baseline'] = dict()

    with open(file_path, 'r') as fp:
        line = fp.readline()

        concept = dict()
        while ('No discriminator found' not in line) and ('The scores were' not in line):                
            key, match = _parse_line(line)
            concept[key] = list(match.groups())[0]
            line = fp.readline()
            if line == "\n":
                line = fp.readline()
                data['concepts'].append(deepcopy(concept))
                concept = dict()
        
        if 'The scores were' not in line:        
            key, match = _parse_line(line)
            data['name'] = match.groups()[0]
            line = fp.readline()
        while line:
            key, match = _parse_line(line)
            if 'Best concept' in line:
                data['baseline'][key] = list(match.groups())[1]
                data['baseline']['bcandidate_num'] = list(match.groups())[0]
                
            line = fp.readline()
        
    return data
    
log_pattern = "/home/ubuntu/vdp-tool-chain-repo/data/clevr-variants/*-*[0-9].log"
out_pattern = "/home/ubuntu/vdp-tool-chain-repo/data/clevr-variants/*-*[0-9].out"

logs = glob(log_pattern)
outs = glob(out_pattern)


intented = {
    'agreement' : "For all cylinders, there is a sphere to its left and to its right that have the same color and material.",
    'alternate-color' : "For each green cylinder, there is another red cylinder to its right.",
    'alternation' : "For each sphere there is a cylinder in front of it (on its right diagonal).",
    'aphaeresis' : "For every cube, there must be a cylinder on its left.",
    'apocope' : 'Small spheres never appear at the right edge of line. For every sphere, there is a cylinder in front of it (on its right diagonal)',
    'assimilation' : 'Cylinders always have the same color as spheres.',
    'breaking' : 'There are two spheres in a line with the same color.',
    'circle-at-ends' : '(Dumbell) Two spheres at either end of a line of objects.',
    'devoicing' : 'The rightmost object is a small cylinder.',
    'spy' : 'A sphere must be accomponied by a cylinder of the same color.',
    'shield' : 'A cylinder has a metallic cube on its left of it.',
    'surround' : 'Large rubber cylinders have small rubber spheres on its left and right.',
    'threepack' : 'Three cylinders in the image of the same color.',
    'meeussen' : 'One large sphere exists in the image.',
    'train' : 'Metallic cylinders are followed by rubber spheres.',
}


for out in outs:
    try:
        name = os.path.basename(out).split(".")[0]
        images = sorted(glob(f"/home/ubuntu/vdp-tool-chain-repo/data/images/{name}/*"))
        test_images = images[:3]
        train_images = images[3:]
        results = _parse_file(out)
        splt = name.split("-")
        no_variant_name = "-".join(splt[:-1])
        candidate_idx = os.path.basename(results['concepts'][0]['candidate']).split(".")[0]
        candidate = test_images[int(candidate_idx)]
        concept = results['concepts'][0]['concept']
        baseline = os.path.join("images", name, os.path.basename(results['baseline']['bcandidate']))
        intend = intented[no_variant_name]

        frmatted = dict(name=name, train=train_images, test=test_images, candidate=candidate, concept=concept, baseline_candidate=baseline, intended=intend)
        # print(frmatted)
        to_json(frmatted, os.path.join('/home/ubuntu/vdp-tool-chain-repo/data/clevr-ann', name + ".json"))        
    except Exception as e:
        print(out, e, no_variant_name, no_variant_name in intented)
    # break