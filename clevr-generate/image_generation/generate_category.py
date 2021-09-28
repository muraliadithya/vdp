import sys
import json
from collections import namedtuple
import numpy as np
from matplotlib import pyplot as plt

def read_json(pth):
    with open(pth, 'r') as f:
        return json.load(f)

def to_json(dct, pth):
    with open(pth, 'w') as f:
        return json.dump(dct, f)

Object = namedtuple('Object', ['x', 'y', 'z', 'size', 'shape', 'color', 'orientation', 'material'])
variables = read_json("data/properties.json")


num_images = 5




plt.xlim((-3, 3))
plt.ylim((-3, 3))

dx = lambda : np.random.uniform(0, 0.75)
dy = lambda : np.random.uniform(0, 0.75)

eps = 0.7

def populate_loc(xax, yax, num_objects):
    while (len(xax) < num_objects):
        okay = True
        x = 0.0 #np.random.uniform(-2.5, 2.5)
        y = np.random.uniform(-2.5, 2.5)

        for xx, yy in zip(xax, yax):
            if  abs(yy - y) < eps :
                okay = False
                break
        
        if okay:
            xax.append(x)
            yax.append(y)
            
    return xax, yax

imgs = list()
for img in range(num_images):
    num_objects = np.random.randint(3, 5)
    zs = np.zeros(num_objects)
    materials = np.repeat('rubber', num_objects)
    #np.random.choice(list(variables['materials'].keys()), num_objects)
    shapes    = np.random.choice(list(variables['shapes'].keys()), num_objects)
    sizes     = np.repeat('small', num_objects)
    #np.random.choice(list(variables['sizes'].keys()), num_objects)
    colors    = np.repeat('purple', num_objects) 
    #np.random.choice(list(variables['colors'].keys()), num_objects)
    thetas    = np.zeros(num_objects) #* 360.0
    xs, ys = populate_loc([], [], num_objects)
    xs = np.array(xs)
    ys = np.array(ys)

    # xx = np.array([x + dx() for x in xs]) + dy()
    # yy = np.array([y + dy() for y in ys]) + dx()
    minidx = np.argmin(ys)
    maxidx = np.argmax(ys)
    shapes[minidx] = 'sphere'
    shapes[maxidx] = 'sphere'
    if img == 1:
        shapes[maxidx] = 'cylinder'

    plt.scatter(x=xs, y=ys, c=colors, label=str(img))
    objects = [Object(*tup) for tup in zip(xs, ys, zs, sizes, shapes, colors, thetas, materials)]    
    img_dict = { 'objects' : [dict(o._asdict()) for o in objects]}
    
    imgs.append(img_dict)
    

plt.savefig('position.png')


# print(imgs)
to_json(imgs, "puzzles/circle-at-ends.json")
# to_json(imgs, "puzzles/distance.json")
# to_json(imgs, "puzzles/distance.json")
