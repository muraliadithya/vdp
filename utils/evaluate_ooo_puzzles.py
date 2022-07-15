from inspect import getmodule
import os, re, json, subprocess, shlex, sys, shutil
from glob import glob
import itertools
from copy import deepcopy
import numpy as np
from common import *
from train_clevr import VAE
from train_puzzles import PrototypeVAE
import torch
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
in_pth  = "/home/ubuntu/ooo-tool-chain-repo/data/inference-outputs/"
out_pth  = "/home/ubuntu/ooo-tool-chain-repo/data/ooo-inference-outputs-2/"
solver_dir = "/home/ubuntu/ooo-tool-chain-repo/vdp-repo"
############### CONSTANTS END ###############
############### HELPERS START ###############

get_split = lambda pth: "train" if os.path.splitext(pth)[0] in ['3', '4', '5'] else "test"
device = torch.device("cuda:0")

def get_model():
    height = 320
    model_str = f"cifar-puzzle-prototype-net-{height}-final"
    model_vae = VAE(height).from_pretrained("cifar10-resnet18")
    model = PrototypeVAE(model_vae)
    model = model.load_from_checkpoint(f"data/prototype/{model_str}.ckpt", strict=False, vae_model=model_vae)
    model = model.to(device)
    return model

def run_prototype(full_pz_name, pz_name, num, ooo_puzzle, model):
    pz_pth       = os.path.join(out_pth, pz_name, f"{pz_name}-fovariant-{num}-shuffle-{ooo_puzzle['idx']}")
    image_path = f"/home/ubuntu/vdp/data/output/images/{puzzle}"
    pkl_pth = os.path.join(pz_pth, "solver_output.pkl")
    output = read_pickle(pkl_pth)
    if ((output[-2].split(": ")[1]) == 'True'):
        examples = list(map(lambda x : os.path.join(image_path, f'CLEVR_{puzzle}_{x.replace(".json", ".png").zfill(10)}') , ooo_puzzle['examples']))
        candidate = list(map(lambda x : os.path.join(image_path, f'CLEVR_{puzzle}_{x.replace(".json", ".png").zfill(10)}') , ooo_puzzle['candidate']))
        train_set = list(enumerate(candidate + list(sorted(examples))))
        ooo_puzzle['configuration'] = (train_set)
        imgs = VDPImage.process_image([tr for (t, tr) in train_set])
        imgs = imgs.to(device)
        labels = torch.arange(imgs.shape[0]).float().to(device)
        answers = model.forward_naive_ooo((imgs, labels))
        answer_idx = np.argmax(answers)
        output = [
            f'The scores were {answers}.',
            f'Best concept is @ idx {answer_idx} ie: {train_set[answer_idx]}'
        ]
        to_txt(output, os.path.join(pz_pth, "prototype_output.txt")  )
        to_pickle({'answers' : output, 'answer_idx' : answer_idx, 'train_set' : train_set}, os.path.join(pz_pth, "prototype_output.pkl") )

        # return (answer_idx == 0)


############### HELPERS END ###############
from collections import defaultdict
if __name__ == '__main__':
    assert os.path.exists(in_pth), f"Path not found: {in_pth}"
    if len(sys.argv) > 1: to_run = [sys.argv[1]]
    model = get_model()
    puzzles = []
    preds = defaultdict(list)
    folders = sorted(glob(os.path.join(in_pth, "*")))
    for puzzle in map(os.path.basename, folders):
        pz_name, num = puzzle.split("-fovariant-")
        swap_num = None
        if "swap" in num or int(num) >= 25 or pz_name not in to_run:
            continue

        example_set   = [0, 3, 4, 5]
        candidate_set = [1, 2]

        idx = 0
        for ex_exclude in range(4):
            for candidate_sel in range(2):
                print(pz_name, num, idx)
                examples = sorted(list(set(example_set) - {example_set[ex_exclude]} ))
                candidate = candidate_set[candidate_sel]
                ooo_puzzle = {"examples" : [f"{eg}.json" for eg in examples ], "candidate" : [f"{candidate}.json"], "idx" : idx }
                a = run_prototype(puzzle, pz_name, num, ooo_puzzle, model)
                if a is not None:
                    preds[pz_name].append(a)
                idx += 1

    x = 0
    for k, v in preds.items():
        x += sum(v)
        print(k, sum(v), '/', len(v))
    
    print(x)
