# coding: utf-8

import argparse
import os
from glob import glob
import json

# construct the argument parser and parse the arguments
# ap = argparse.ArgumentParser()

# ap.add_argument("-p", "--puzzle", required=True,
#     help="Path to folder for puzzle")

# args = vars(ap.parse_args())


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

model.load_weights("/home/ubuntu/vdp-tool-chain/data/triplet_loss_baseline-data/deepranking-v2-150000.h5")



def get_embed(pth):
    image1 = load_img(pth)
    image1 = img_to_array(image1).astype("float64")
    image1 = transform.resize(image1, (224, 224))
    image1 *= 1. / 255
    image1 = np.expand_dims(image1, axis = 0)
    embed1 = model.predict([image1, image1, image1])[0]

    return embed1

get_path = lambda puzzle_name, i :f"/home/ubuntu/vdp-tool-chain/data/output/images/{puzzle_name}/CLEVR_{puzzle_name}_00000{i}.png"


def l2_norm(embed1, embed2):
    distance = sum([(embed1[idx] - embed2[idx])**2 for idx in range(len(embed1))])**(0.5)
    return distance

def get_test_score(test_img, train_set):
    prod = 1.0
    for train_img in train_set:
        prod *= l2_norm(test_img, train_img)
    return prod

# "python test_yolo.py -p ~/cleaned/vdp_solver/outputs/2on1_11/"
# puzzle_path = args['puzzle'] 

def read_json(pth):
    with open(pth, 'r') as f:
        return json.load(f)
    
def to_json(obj, pth):
    with open(pth, 'w') as f:
        json.dump(obj, f)


for puzzle_path in glob("/home/ubuntu/vdp-tool-chain/vdp_solver/outputs/*"):
    puzzle_name = os.path.basename(puzzle_path)

    test_set = list(sorted(glob(os.path.join(puzzle_path, "test", "*"))))
    train_set = list(sorted(glob(os.path.join(puzzle_path, "train", "*"))))

    test = [get_embed(t) for t in test_set]
    train = [get_embed(t) for t in train_set]


    answers = ([get_test_score(t, train) for t in test])
    answer = np.argmin(answers)
    print(f"The scores were {answers}.\nBest concept is @ idx {answer} ie: {test_set[answer]}")



    res_path = os.path.join(puzzle_path, puzzle_name + ".json")

    res = read_json(res_path)

    res['baseline_candidate'] = os.path.basename(test_set[answer])

    to_json(res, res_path)
