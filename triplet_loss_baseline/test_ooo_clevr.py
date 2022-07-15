# coding: utf-8

import argparse
import os, sys, json, pickle
from glob import glob


def read_json(pth):
    assert os.path.exists(pth), f"Path Not found: {pth} relative to {os.getcwd()}"
    with open(pth, 'r') as f:
        return json.load(f)
    
def to_json(obj, pth):
    with open(pth, 'w') as f:
        json.dump(obj, f)

def read_pickle(pth):
    assert os.path.exists(pth), f"Path Not found: {pth} relative to {os.getcwd()}"
    with open(pth, 'rb') as f:
        return pickle.load(f)

def to_pickle(obj, pth):
    with open(pth, 'wb') as f:
        pickle.dump(obj, f)

def read_txt(pth):
    assert os.path.exists(pth), f"Path Not found: {pth} relative to {os.getcwd()}"
    with open(pth, 'r') as fp:
        return fp.readlines()

def to_txt(lines, pth):
    with open(pth, 'w') as fp:
        for l in lines:
            fp.write("%s\n" % l)

def get_rx_lines(lines : list = [], rx_dict : dict = {}):
    for line in lines:
        for key, rx in rx_dict.items():
            match = rx.search(line)
            if match:
                yield (key, match)


in_pth  = "/home/ubuntu/vdp/data/inference-outputs/"
out_pth  = "/home/ubuntu/vdp/data/ooo-inference-outputs-2/"

get_split = lambda pth: "train" if os.path.splitext(pth)[0] in ['3', '4', '5'] else "test"



import numpy as np
from keras.applications.vgg16 import VGG16
from keras.layers import *
from keras.models import Model
from keras.preprocessing.image import load_img, img_to_array
from skimage import transform
from keras.models import Sequential
from keras.layers import Dense, Dropout, Flatten
from keras.layers import Conv2D, MaxPooling2D
from keras.layers import Embedding
from keras import backend as K


def convnet_model_():
    vgg_model = VGG16(weights=None, include_top=False)
    x = vgg_model.output
    x = GlobalAveragePooling2D()(x)
    x = Dense(4096, activation='relu')(x)
    x = Dropout(0.6)(x)
    x = Dense(4096, activation='relu')(x)
    x = Dropout(0.6)(x)
    x = Lambda(lambda  x_: K.l2_normalize(x,axis=1))(x)
    convnet_model = Model(inputs=vgg_model.input, outputs=x)
    return convnet_model

def convnet_model():
	vgg_model = VGG16(weights=None, include_top=False)
	x = vgg_model.output
	x - GlobalAveragePooling2D()(x)
	x = Dense(4096, activation='relu')(x)
	x = Dropout(0.6)(x)
	x = Dense(4096, activation='relu')(x)
	x = Dropout(0.6)(x)
	
def deep_rank_model():
    convnet_model = convnet_model_()
    first_input = Input(shape=(224,224,3))
    first_conv = Conv2D(96, kernel_size=(8, 8),strides=(16,16), padding='same')(first_input)
    first_max = MaxPool2D(pool_size=(3,3),strides = (4,4),padding='same')(first_conv)
    first_max = Flatten()(first_max)
    first_max = Lambda(lambda  x: K.l2_normalize(x,axis=1))(first_max)

    second_input = Input(shape=(224,224,3))
    second_conv = Conv2D(96, kernel_size=(8, 8),strides=(32,32), padding='same')(second_input)
    second_max = MaxPool2D(pool_size=(7,7),strides = (2,2),padding='same')(second_conv)
    second_max = Flatten()(second_max)
    second_max = Lambda(lambda  x: K.l2_normalize(x,axis=1))(second_max)

    merge_one = concatenate([first_max, second_max])

    merge_two = concatenate([merge_one, convnet_model.output])
    emb = Dense(4096)(merge_two)
    l2_norm_final = Lambda(lambda  x: K.l2_normalize(x,axis=1))(emb)

    final_model = Model(inputs=[first_input, second_input, convnet_model.input], outputs=l2_norm_final)

    return final_model


model = deep_rank_model()

model.load_weights("/home/ubuntu/vdp/data/triplet_loss_baseline-data/deepranking-v2-150000.h5")



def get_embed(pth):
    image1 = load_img(pth)
    image1 = img_to_array(image1).astype("float64")
    image1 = transform.resize(image1, (224, 224))
    image1 *= 1. / 255
    image1 = np.expand_dims(image1, axis = 0)
    embed1 = model.predict([image1, image1, image1])[0]

    return embed1


def l2_norm(embed1, embed2):
    distance = sum([(embed1[idx] - embed2[idx])**2 for idx in range(len(embed1))])**(0.5)
    return distance

def get_test_score(test_img, train_set):
    prod = 1.0
    for train_img in train_set:
        prod *= l2_norm(test_img, train_img)
    return prod

# puzzle_name = args['puzzle']
# puzzles = sorted(glob(f"/home/ubuntu/vdp/data/output/images/{puzzle_name}/*"))
# assert len(puzzles), f"Puzzle not found @ /home/ubuntu/vdp/data/output/images/{puzzle_name}/"

# test_set = [0, 1, 2]
# train_set = [3, 4, 5, 6]

# test_set = [puzzles[i]  for i in test_set  if i < len(puzzles)]
# train_set = [puzzles[i] for i in train_set if i < len(puzzles)]

# test = [get_embed(t) for t in test_set]
# train = [get_embed(t) for t in train_set]

# print(len(test), len(train))
# answers = ([get_test_score(t, train) for t in test])
# answer = np.argmin(answers)
# print(f"The scores were {answers}.\nBest concept is @ idx {answer} ie: {test_set[answer]}")

def run_solver(full_pz_name, pz_name, num, ooo_puzzle):
    pz_pth       = os.path.join(out_pth, pz_name, f"{pz_name}-fovariant-{num}-shuffle-{ooo_puzzle['idx']}")
    pz_train_pth = os.path.join(pz_pth,  "train")
    pz_test_pth  = os.path.join(pz_pth,  "test")
    os.makedirs(pz_train_pth, exist_ok=True)
    os.makedirs(pz_test_pth, exist_ok=True)

    puzzles = list(enumerate(list(ooo_puzzle['candidate'])  + sorted(list(ooo_puzzle['examples']))))

    for idx, ir in puzzles:
        shutil.copyfile(src=os.path.join(in_pth, full_pz_name, get_split(ir), ir), dst=os.path.join(pz_train_pth, f"{idx}.json"))


    ooo_puzzle['configuration'] = (puzzles)

    to_json(ooo_puzzle, os.path.join(pz_pth, "ooo_config.json"))

    cmd = f"python scripts/vdpsolve.py --solver GuardedConjunctiveAltpuzzleSolver {os.path.abspath(pz_pth)} {ooo_flags[pz_name]} --autotune"
    output = exec_cmd(cmd=cmd, cwd=solver_dir)
    to_txt(output, os.path.join(pz_pth, "solver_output.txt")  )
    to_pickle(output, os.path.join(pz_pth, "solver_output.pkl") )


def run_baseline(puzzle, pz_name, num, ooo_puzzle):
    pz_pth       = os.path.join(out_pth, pz_name, f"{pz_name}-fovariant-{num}-shuffle-{ooo_puzzle['idx']}")
    pkl_pth = os.path.join(pz_pth, "solver_output.pkl")
    output = read_pickle(pkl_pth)
    if ((output[-2].split(": ")[1]) == 'True'):
        image_path = f"/home/ubuntu/vdp/data/output/images/{puzzle}"
        examples = list(map(lambda x : os.path.join(image_path, f'CLEVR_{puzzle}_{x.replace(".json", ".png").zfill(10)}') , ooo_puzzle['examples']))
        candidate = list(map(lambda x : os.path.join(image_path, f'CLEVR_{puzzle}_{x.replace(".json", ".png").zfill(10)}') , ooo_puzzle['candidate']))
        
        train_set = list(enumerate(candidate + list(sorted(examples))))
        ooo_puzzle['configuration'] = (train_set)

        train_set_embed = [(t, get_embed(tr)) for (t, tr) in train_set]

        answers = [sum([l2_norm(tr_em, tr_em2)  for (t2, tr_em2) in train_set_embed if t != t2]) for (t, tr_em) in train_set_embed]
        answer_idx = np.argmax(answers)

        output = [
            f'The scores were {answers}.',
            f'Best concept is @ idx {answer_idx} ie: {train_set[answer_idx]}'
        ]
        to_txt(output, os.path.join(pz_pth, "baseline_output.txt")  )
        to_pickle({'answers' : output, 'answer_idx' : answer_idx, 'train_set' : train_set}, os.path.join(pz_pth, "baseline_output.pkl") )



if __name__ == '__main__':
    assert os.path.exists(in_pth), f"Path not found: {in_pth}"
    if len(sys.argv) > 1: to_run = [sys.argv[1]]
    puzzles = []
    # for (absdir, folders, files) in os.walk(in_pth, followlinks=False):
    folders = sorted(map(os.path.basename, glob(os.path.join(in_pth, "*"))))
    for puzzle in folders:
        pz_name, num = puzzle.split("-fovariant-")
        swap_num = None
        if "swap" in num or int(num) >= 25:
            continue
            # num, swap_num = num.split("-swap")
        # print(pz_name, num)

        example_set   = [0, 3, 4, 5]
        candidate_set = [1, 2]

        idx = 0
        for ex_exclude in range(4):
            for candidate_sel in range(2):
                examples = sorted(list(set(example_set) - {example_set[ex_exclude]} ))
                candidate = candidate_set[candidate_sel]
                print(pz_name, num, idx, examples, candidate_sel)
                ooo_puzzle = {"examples" : [f"{eg}.json" for eg in examples ], "candidate" : [f"{candidate}.json"], "idx" : idx }
                run_baseline(puzzle, pz_name, num, ooo_puzzle)              
                idx += 1
            
