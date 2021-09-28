import os, sys, math, re, json, subprocess, shlex
from glob import glob
from collections import namedtuple
from copy import deepcopy
import numpy as np
from common import *
import matplotlib.pyplot as plt
############### CONSTANTS START ###############


in_pth = "data/inference-outputs"
data_pth = "data/clevr-cleaned-puzzles/"
############### CONSTANTS END ###############
############### HELPERS START ###############

def viz_positions(pz_dir):
    pz_name = os.path.basename(pz_dir).split("-gt")[0]
    pz_pth = os.path.join(in_pth, pz_name, "results.json")
    out_pth = os.path.join(os.path.dirname(pz_dir), pz_name + "-layout.png")
    assert os.path.exists(pz_pth), f"Path {pz_pth} doesn't exist w.r.t {os.getcwd()}"
    pz = read_json(pz_pth)
    assert pz['info'] == 'clevr derendered scene'
    xx, yy, ll = list(), list(), list()
    for scene in (pz['scenes']):
        xs, ys, ls = list(), list(), list()
        for obj in scene['objects']:
            x, y, z = obj['position']
            xs.append(float(x))
            ys.append(float(y))
            ls.append(f"{obj['color']} {obj['shape']}")
        
        xx.append(xs)
        yy.append(ys)
        ll.append(ls)


    fig, ax = plt.subplots(2, 3, figsize=(20, 15), constrained_layout=True)
    fig.suptitle(f"Layout for  {pz_name} puzzle", fontsize=20)
    for i in range(6):
        x = i // 3
        y = i % 3
        ax[x][y].scatter(xx[i], yy[i])
        ax[x][y].set_title(f"Img {i}")
        # ax[x][y].set_xlim([-3, 3])
        # ax[x][y].set_ylim([-3, 3])
        ax[x][y].set_xticks(np.arange(-3, 3.2, 0.2))
        ax[x][y].set_yticks(np.arange(-3, 3.2, 0.2))
        for j, l in enumerate(ll[i]):
            ax[x][y].annotate(l, (xx[i][j] * 1.02, yy[i][j] * 1.015))

    fig.savefig(out_pth)
    print(f"fig saved @ {out_pth}")
############### HELPERS END ###############

if __name__ == '__main__':
    assert len(sys.argv) > 1, f"Provide a puzzle path."
    pz_dir = sys.argv[1]
    viz_positions(pz_dir)
