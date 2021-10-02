import os
import os.path as osp
from glob import glob
import re, json, subprocess, shlex, shutil
from copy import deepcopy
from collections import defaultdict
import numpy as np
from common import *
import importlib  
import random
import bs4
from bs4 import BeautifulSoup
solver = importlib.import_module("gt-to-solver")

############### CONSTANTS START ###############

custom_english_desc = {
    'tvon' : "The TV is on."
}

in_dir  = "/home/ubuntu/vdp-website/static/yolo_ir"
md_dir  = "/home/ubuntu/vdp-website/content/docs/yolo-md"
img_dir = "/home/ubuntu/vdp-website/static/natscenes_images/"
html_dir = "/home/ubuntu/vdp-website/static/naturalscenesdataset/"
jsonl_pth = "/home/ubuntu/vdp-website/static/natscenes_website.json"

get_float = lambda img_pths, is_train: ("\n<--->\n".join(
    [f"`{'Example' if is_train else 'Candidate'} {i}`![{os.path.basename(x).split('_')[-1]}]({x})"
                    for i, x in enumerate(img_pths)
                    ]))


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
############### HELPERS START ###############

def extract_gt(pth):
    print(pth)
    return (pth, (None, None))


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


def real_smallest_solver(absdir, puzzle_name):
    running = True
    c = 1
    global pz_flags_dict
    
    # base_pz_name = puzzle_name.replace("-fovariant", "-variant").split("-variant")[0]

    quant_upper, conj_upper = yolo_threshold[puzzle_name]


    if puzzle_name in pz_flags_dict:
        pz_flags = pz_flags_dict[puzzle_name]
        print(f"Trying {puzzle_name} with flags {pz_flags}")
        try:
            solver_out = solver.run_solver(absdir, pz_flags, False)
            concepts = parse_solver_output(solver_out)
            if len(concepts) != 0:
                # selected_concepts = list()
                # for concept in concepts:
                #     selected_concepts.append(concept['concept'].group(0))
                #     selected_concepts.append(concept['candidate'].group(0))
                return pz_flags, concepts

        except Exception as e:
            return pz_flags, []
    else:
        for quant in range(1, quant_upper + 1):     # 1, 2, 3
            conj_upper = 3 if quant < quant_upper else conj_upper
            for conj in range(0, conj_upper + 1): # 1, 2
                for exists in [True, False]:
                    pz_flags = f"- {quant} -C {conj}"
                    if exists:
                        pz_flags += " -E"
                    print(f"Trying {puzzle_name} with flags {pz_flags}")
                    try:
                        solver_out = solver.run_solver(absdir, pz_flags, False)
                        concepts = parse_solver_output(solver_out)
                        if len(concepts) != 0:
                            # selected_concepts = list()
                            # for concept in concepts:
                            #     selected_concepts.append(concept['concept'].group(0))
                            #     selected_concepts.append(concept['candidate'].group(0))
                            if puzzle_name not in pz_flags_dict:
                                pz_flags_dict[puzzle_name] = pz_flags
                            return pz_flags, concepts

                    except Exception as e:
                        return pz_flags, []

    return pz_flags, []

############### HELPERS END ###############

if __name__ == '__main__':
    assert osp.exists(in_dir), f"Path not found: {in_dir}"
    assert osp.exists(jsonl_pth), f"Path not found: {in_dir}"
    if os.path.exists(md_dir):
        shutil.rmtree(md_dir)

    natscene_info = read_json(jsonl_pth)
    for puzzle_name, pval in natscene_info.items():
        for variant_num, puzzle_info in pval.items():
            if int(variant_num) > 50:
                continue

            md_pth = osp.join(md_dir, puzzle_name, f"variant_{variant_num}", "_index.md")
            print("OUT", md_pth)
            # train_imgs = (list(map(lambda pth: "/" + osp.relpath(pth, osp.dirname(in_dir)), glob(osp.join(out_pth, "train", "*")))))
            # test_imgs =  (list(enumerate(map(lambda pth: "/" + osp.relpath(pth, osp.dirname(in_dir)), glob(osp.join(out_pth, "test", "*"))))))

            # flags, concpets = smallest_solver(out_pth, puzzle_name)
            html_file = (os.path.join(html_dir, puzzle_name, f"{puzzle_name}_1.html"))

            if osp.exists(html_file):
                english_desc, _, _, _, _  = (process_html_file(html_file))
            elif puzzle_name in custom_english_desc:
                english_desc = custom_english_desc[puzzle_name]
            else:
                english_desc = "NO ENG DESC"
            train_imgs = puzzle_info['examples']
            test_imgs  = list(enumerate(puzzle_info['candidates']))
            random.shuffle(train_imgs)
            random.shuffle(test_imgs)

            answer = puzzle_info['tool_answer']

            answer_idx = "?"
            pipeline_discriminator = "The tool did not solve this puzzle."
            if len(answer):
                for i, img in (test_imgs):
                    if answer == img:
                        answer_idx = str(i)
                        break
                pipeline_discriminator = puzzle_info['discriminator']
        
            train_imgs_only = [osp.join(img_dir, img)
                for img in train_imgs]
            
            test_imgs_only = [osp.join(img_dir, img)
                for img in list(zip(*test_imgs))[1] ]


            if answer_idx == "?":
                pipeline_ans = "?"
            else:
                for i, (idx, img) in enumerate(test_imgs):
                    if idx == int(answer_idx):
                        pipeline_ans = i
    


            train_imgs_only = (list(map(lambda x: "/" + os.path.relpath(x, os.path.dirname(in_dir)), train_imgs_only)))
            test_imgs_only = (list(map(lambda x: "/" + os.path.relpath(x, os.path.dirname(in_dir)), test_imgs_only)))
        
            md_str = get_md(puzzle_name, variant_num, train_imgs_only, test_imgs_only, english_desc, pipeline_ans, pipeline_discriminator)

            # print(md_str)
            # input("next?")
        
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
