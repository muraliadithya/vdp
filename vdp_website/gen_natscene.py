import os
import os.path as osp
from glob import glob
import re, json, subprocess, shlex, shutil
from copy import deepcopy
from collections import defaultdict
import numpy as np
import sys; sys.path.append("/home/ubuntu/vdp-tool-chain")
from utils.common import *
import bs4
from bs4 import BeautifulSoup
import random

############### CONSTANTS START ###############
in_dir  = "/home/ubuntu/vdp-tool-chain/vdp_website/static/natscene-data/"
md_dir  = "/home/ubuntu/vdp-tool-chain/vdp_website/content/docs/yolo-md"
img_dir = "/home/ubuntu/vdp-tool-chain/vdp_website/static/output/natscene_images"
html_dir = "/home/ubuntu/vdp-tool-chain/vdp_website/static/naturalscenesdataset/"

get_float = lambda img_pths, is_train: ("\n<--->\n".join(
    [f"`{'Example' if is_train else 'Candidate'} {i}`![{os.path.basename(x).split('_')[-1]}]({x})"
                    for i, x in enumerate(img_pths)
                    ]))


custom_english_desc = {
    'tvon' : "The TV is on."
}


def process_html_file(html_file):
    print(html_file)
    raw_str = read_txt(html_file)
    english_desc = ""
    concept = ""
    candidate = ""


    soup = BeautifulSoup("\n".join(raw_str), features='lxml')

    train, test = list(), list()
    for container in soup.find_all("div", attrs={'class' : 'column'}):
        if not len(train):
            train = ([img['src'] for img in container.findAll("img")])
        elif not len(test):
            test = list(enumerate([img['src'] for img in container.findAll("img")]))

    for key, match in get_rx_lines(raw_str, yolo_rx_dict):
        if key == "english_desc":
            english_desc = (match.groups()[0])
        if key == 'concept':
            concept = (match.groups()[0])
        if key == 'candidate':
            candidate = (match.groups()[0])
        if key == 'end':
            if concept == "":
                concept = "The tool did not solve this puzzle."            
            if candidate == "":
                candidate = "?"

    return (english_desc, concept, candidate, train, test)



landing_str = """---
weight: 1
bookCollapseSection: true
title: "Natural Scenes VDP Dataset"
---

Use the dropdown menu on the  left to navigate to a particular puzzle.

"""

get_md = lambda name, variant_num, train_imgs, test_imgs, english_desc, pipeline_ans, pipeline_discriminator: f"""---
title: Variant {variant_num}
weight: 3
---

# Puzzle {name} - Variant {variant_num}

## Example Images
{{{{< columns >}}}}
{get_float(train_imgs, True)}
{{{{< /columns >}}}}

## Candidate Images
{{{{< columns >}}}}
{get_float(test_imgs, False)}
{{{{< /columns >}}}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{{{< expand "Click to view the description of the intended discriminator" "..." >}}}}
{english_desc}
{{{{< /expand >}}}}

---



## Our Tool's Prediction

{{{{< expand "Click to view our tool's prediction" "..." >}}}}
Our tool selected `Candidate {pipeline_ans}` as being the most similar to the example images with the discriminator:
```plaintext
{pipeline_discriminator}
```
{{{{< /expand >}}}}
"""

get_parent_string = lambda puzzle_name: f"""---
bookCollapseSection: true
title: {yolo_pzname_to_name[puzzle_name]}
weight: 2
---

"""

rotate_solver_out = lambda s: s.replace("left", "<TOK1>") \
                        .replace("right", "<TOK2>") \
                        .replace("front", "right") \
                        .replace("behind", "left") \
                        .replace("<TOK1>", "behind") \
                        .replace("<TOK2>", "front") \

############### CONSTANTS END ###############

if __name__ == '__main__':
    assert osp.exists(in_dir), f"Path not found: {in_dir}"
    global pz2count
    puzzles, pz2count, var2count, pz_count = [], dict(), defaultdict(list), 0
    global pz_flags_dict
    pz_flags_dict = dict()

    if os.path.exists(md_dir):
        shutil.rmtree(md_dir)

    for out_pth in glob(os.path.join(in_dir, "puzzles/*")):
        puzzle_name, variant_num = os.path.basename(out_pth).split("_")
        swapped = 'swap' in variant_num

        md_pth = osp.join(md_dir, puzzle_name, f"variant_{variant_num}", "_index.md")
        puzzle_config = read_json(osp.join(out_pth, "config.json"))
        train_imgs = list(map(lambda pth : osp.join( "/natscene-data/images/" + osp.basename(pth)), puzzle_config['train']))
        test_imgs = list(enumerate(map(lambda pth : osp.join( "/natscene-data/images/" + osp.basename(pth)), puzzle_config['test'])))
        english_desc = yolo_pzname_to_name


        # flags, concpets = smallest_solver(out_pth, puzzle_name)
        html_file = (os.path.join(html_dir, puzzle_name, f"{puzzle_name}_1.html"))

        if osp.exists(html_file):
            english_desc, _, _, _, _  = (process_html_file(html_file))
        elif puzzle_name in custom_english_desc:
            english_desc = custom_english_desc[puzzle_name]
        else:
            english_desc = "NO ENG DESC"

        english_desc, _, _, _, _  = (process_html_file(html_file))
        random.shuffle(train_imgs)
        random.shuffle(test_imgs)
        processed_pth = osp.join(osp.dirname(out_pth).replace("puzzles", "processed"), os.path.basename(out_pth) + ".out")
        concepts = out_parser(processed_pth)
        if len(concepts):
            concept =concepts[0]
            if 'concept' not in concept:
                assert 'timeout_end' in concept, "No concept found"
                answer_idx = "?"
                pipeline_discriminator = "The tool did not solve this puzzle (TIMEOUT)"
            else:
                pipeline_discriminator = concept['concept'].groups()[0]
                answer = (os.path.splitext(os.path.basename(concept['candidate'].groups()[0]))[0])
                answer_idx = "?"
                for i, img in (test_imgs):
                    print(i, img, answer)
                    if answer == (os.path.splitext(os.path.basename(img))[0]):
                        answer_idx = str(i)
        else:
            answer_idx = "?"
            pipeline_discriminator = "The tool did not solve this puzzle"
        
        # train_imgs_only = [img.replace("../", "/home/ubuntu/vdp-website/static/naturalscenesdataset/")
        #     for img in train_imgs]
            
        # test_imgs_only = [img.replace("../", "/home/ubuntu/vdp-website/static/naturalscenesdataset/")
        #     for img in list(zip(*test_imgs))[1]]

        # else:
        #     train_imgs_only = [glob(os.path.join("/home/ubuntu/vdp-website/static/naturalscenesdataset/images/", os.path.splitext(os.path.basename(img))[0] + "*"))[0]
        #         for img in train_imgs]
                
        #     test_imgs_only = [glob(os.path.join("/home/ubuntu/vdp-website/static/naturalscenesdataset/images/", os.path.splitext(os.path.basename(img))[0] + "*"))[0]
        #         for img in list(zip(*test_imgs))[1]]



        if answer_idx == "?":
            pipeline_ans = "?"
        else:
            for i, (idx, img) in enumerate(test_imgs):
                if idx == int(answer_idx):
                    pipeline_ans = i
    


        test_imgs = list(zip(*test_imgs))[1]
        md_str = get_md(puzzle_name, variant_num, train_imgs, test_imgs, english_desc, pipeline_ans, pipeline_discriminator)

        
        os.makedirs(osp.dirname(md_pth), exist_ok=True)
        with open(md_pth, 'w') as fp:
            fp.write(md_str)

        parent_pth = osp.join(md_dir, puzzle_name, "_index.md")
        if not os.path.exists(parent_pth):
            parent_str = get_parent_string(puzzle_name)
            with open(parent_pth, 'w') as fp:
                fp.write(parent_str)
    
    with open(osp.join(md_dir, "_index.md"), 'w') as fp:
        fp.write(landing_str)
    

        

        