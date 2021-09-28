
# 30 images
# 15 variants
# 15k images

"""
Create data for baseline model to be trained on.
Usage: python baseline_generation.py $number > logs/bigvariant_generation_$number.log
"""

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

def flip(p=0.5):
    return True if np.random.random() < p else False

variant_num = sys.argv[1]
eps = 0.75
num_images = 100

def populate_loc(xax, yax, num_objects):
    while (len(xax) < num_objects):
        okay = True
        x = np.random.uniform(-2.5, 2.5)
        y = np.random.uniform(-2.5, 2.5)

        for xx, yy in zip(xax, yax):
            if abs(xx - x) < eps or abs(yy - y) < eps :
                okay = False
                break
        
        if okay:
            xax.append(x)
            yax.append(y)
            
    return xax, yax



Object = namedtuple('Object', ['x', 'y', 'z', 'size', 'shape', 'color', 'orientation', 'material'])
variables = read_json("data/properties.json")

const_num_objects = np.random.randint(4, 5)
const_xs, const_ys = populate_loc([], [], const_num_objects)
zs = np.zeros(const_num_objects)
const_xs = np.array(const_xs)
const_ys = np.array(const_ys)
const_materials = np.random.choice(list(variables['materials'].keys()), const_num_objects)
const_shapes    = np.random.choice(list(variables['shapes'].keys()), const_num_objects)
const_sizes     = np.random.choice(list(variables['sizes'].keys()), const_num_objects)
const_colors    = np.random.choice(list(variables['colors'].keys()), const_num_objects)
const_thetas    = np.random.random(const_num_objects) * 360.0

imgs = list()
dx = lambda : np.random.uniform(-0.95, 0.95)
for img in range(num_images):
    num_objects = const_num_objects
    xs = const_xs.copy()
    ys = const_ys.copy()
    materials = const_materials.copy()
    shapes = const_shapes.copy()
    sizes = const_sizes.copy()
    colors = const_colors.copy()
    thetas = const_thetas.copy()
    skip_indices = list()
    
    # position jitter
    # xs = np.array(list(map(lambda x: max(-2.55, min(2.55, x)), xs)))
    # ys = np.array(list(map(lambda y: max(-2.55, min(2.55, y)), ys)))

    xs = xs + dx()
    ys = ys + dx()

    tfs = ['delete', 'add', 'size', 'material', 'color', 'shape', 'none']
    tfp = [0.025, 0.025, 0.05, 0.10, 0.05, 0.05, 0.70]
    transform = np.random.choice(tfs, p=tfp)

    # addition/deletion of objects
    if (transform == 'delete'):
            print(f"{img} : delete")
            i = np.random.randint(0, num_objects)
            skip_indices.append(i)
    elif (transform == 'add'):
            print(f'{img} : add')
            num_objects += 1
            xs, ys = populate_loc(list(xs), list(ys), num_objects)
            zs = np.zeros(num_objects)
            xs = np.array(xs)
            ys = np.array(ys)

            m = np.random.choice(list(variables['materials'].keys()))
            sh = np.random.choice(list(variables['shapes'].keys()))
            si = np.random.choice(list(variables['sizes'].keys()))
            co = np.random.choice(list(variables['colors'].keys()))
            th = np.random.random() * 360.0

            materials = np.append(materials, [m])
            shapes = np.append(shapes, [sh])
            sizes = np.append(sizes, [si])
            colors = np.append(colors, [co])
            thetas = np.append(thetas, [th])
    # scaling
    elif (transform == 'size'):
        print(f"{img} : scaling")
        obj = np.random.randint(0, num_objects)
        options = list(filter(lambda r: r != sizes[obj], list(variables['sizes'].keys())))
        sizes[obj] = np.random.choice(options)
    # color/material change
    elif (transform == 'color'):
        print(f"{img} : color")
        obj = np.random.randint(0, num_objects)
        options = list(filter(lambda r: r != colors[obj], list(variables['colors'].keys())))
        colors[obj] = np.random.choice(options)
    elif (transform == 'material'):
        print(f"{img} : material")
        obj = np.random.randint(0, num_objects)
        options = list(filter(lambda r: r != materials[obj], list(variables['materials'].keys())))
        materials[obj] = np.random.choice(options)
    elif (transform == 'shape'):
        print(f"{img} : shape")
        obj = np.random.randint(0, num_objects)
        options = list(filter(lambda r: r != shapes[obj], list(variables['shapes'].keys())))
        shapes[obj] = np.random.choice(options)

    # print(xs, ys, colors)
    plt.scatter(x=xs, y=ys, c=colors, label=str(img))
    objects = [Object(*tup) for i, tup in enumerate(zip(xs, ys, zs, sizes, shapes, colors, thetas, materials)) if i not in skip_indices]    
    img_dict = { 'objects' : [dict(o._asdict()) for o in objects]}
    imgs.append(img_dict)
    

plt.savefig('position.png')


# print(imgs)
to_json(imgs, f"puzzles/bigvariant{variant_num}.json")
# to_json(imgs, "puzzles/distance.json")
# to_json(imgs, "puzzles/distance.json")
