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
solver = importlib.import_module("gt-to-solver")

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

skip_list = [
        'devoicing'
        ]

in_dir  = "/home/ubuntu/vdp-website/static/clevr-variants"
md_dir  = "/home/ubuntu/vdp-website/content/docs/clevr-md"
img_dir = "/home/ubuntu/vdp-website/static/output/images"

get_float = lambda img_pths, is_train: ("\n<--->\n".join(
    [f"`{'Example' if is_train else 'Candidate'} {i}`![{os.path.basename(x).split('_')[-1]}]({x})"
                    for i, x in enumerate(img_pths)
                    ]))


clevr_landing_str = """---
weight: 1
bookCollapseSection: true
title: "CLEVR VDP Dataset"
---

Use the dropdown menu on the  left to navigate to a particular puzzle.

"""

get_md = lambda name, variant_num, train_imgs, test_imgs, english_desc, pipeline_ans, pipeline_discriminator, baseline_ans, actual_ans: f"""---
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

{{{{< expand "Click to view the intended discriminator" "..." >}}}}
`Candidate {actual_ans}` is the intended discriminator with description:
```plaintext 
{english_desc}
```
{{{{< /expand >}}}}

---



## Our Tool's Prediction

{{{{< expand "Click to view our tool's prediction" "..." >}}}}
Our tool selected `Candidate {pipeline_ans}` as being the most similar to the example images with the discriminator:
```plaintext
{pipeline_discriminator}
```
{{{{< /expand >}}}}



## Baseline Output

{{{{< expand "Click to view the baseline's prediction" "..." >}}}}
The neural baseline selected `Candidate {baseline_ans}` as being the most similar to the example images.
{{{{< /expand >}}}}

"""

get_parent_string = lambda puzzle_name: f"""---
bookCollapseSection: true
title: {clevr_pzname2name[puzzle_name]}
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
get_attr = lambda obj:  (obj['size'], obj['shape'], obj['material'], obj['color'])

def hash_dict(d):
    hash_list = list()
    for i, s in enumerate(d['scenes']):
        for j, o in enumerate(s['objects']):
            hash_list.append((i, j, *get_attr(o)))

    return (hash(tuple(sorted(hash_list))))


def extract_gt(pth):
    print(pth)
    return (pth, (None, None))

def smallest_solver(absdir, puzzle_name):
    running = True
    c = 1
    while(running):
        base_pz_name = puzzle_name.replace("-fovariant", "-variant").split("-variant")[0]
        pz_flags = flags_no_c[base_pz_name]
        if base_pz_name not in skip_list: pz_flags += f" -C {c}"
        print(f"Trying {puzzle_name} with flags: {pz_flags}")
        try:
            solver_out = solver.run_solver(absdir, pz_flags, False)
            concepts = parse_solver_output(solver_out)
            if len(concepts) != 0:
                break
            c += 1
        except Exception as e:
            return pz_flags, ""

    selected_concepts = list()
    for concept in concepts:
        selected_concepts.append(concept['concept'].group(0))
        selected_concepts.append(concept['candidate'].group(0))

    return pz_flags, "\n".join(selected_concepts)
    # return pz_flags, "\n".join(list(map(lambda x: x['concept'].group(0), concepts)))



############### HELPERS END ###############

if __name__ == '__main__':
    assert osp.exists(in_dir), f"Path not found: {in_dir}"
    global pz2count
    puzzles, pz2count, var2count, pz_count = [], dict(), defaultdict(list), 0

    if os.path.exists(md_dir):
        shutil.rmtree(md_dir)

    for out_pth in glob(os.path.join(in_dir, "*/*/*.out")):
        puzzle_name, variant_num = os.path.basename(out_pth).split("-fovariant-")
        variant_num = os.path.splitext(variant_num)[0]
        puzzle_dir = os.path.join(in_dir, puzzle_name, f"fovariant-{variant_num}")
        swapped = 'swap' in variant_num
        if ("*" in puzzle_name) or (puzzle_name not in to_run) or swapped:
            print("SKIPPING", puzzle_name)
            continue
        full_name = f"{puzzle_name}-fovariant-{variant_num}"
        if puzzle_name not in pz2count:
            pz2count[puzzle_name] = str(pz_count)
            pz_count += 1
        
        # var2count[puzzle_name].append(variant_num)


        images_dir = os.path.join(img_dir, full_name)
        md_pth = osp.join(md_dir, f"puzzle_{pz2count[puzzle_name]}", f"variant_{variant_num}", "_index.md")
        train_imgs = (list(map(lambda pth: "/" + osp.relpath(pth, osp.dirname(in_dir)), glob(osp.join(puzzle_dir, "*[3-9].png")))))
        test_imgs =  (list(map(lambda pth: "/" + osp.relpath(pth, osp.dirname(in_dir)), glob(osp.join(puzzle_dir, "*[0-2].png")))))
        random.shuffle(train_imgs)
        random.shuffle(test_imgs)
        concepts = out_parser(out_pth)
        raw_solver_out, raw_baseline_out = concepts[0], concepts[-1]

        pipeline_out = ("\n".join([raw_solver_out['concept'].groups()[0],   raw_solver_out['candidate'].groups()[0]]))
        baseline_out = f"Baseline selected candidate at idx {raw_baseline_out['bcandidate'].groups()[0]}.\nie: selected [{raw_baseline_out['bcandidate'].groups()[1]}]"
        english_desc = intended_concept[puzzle_name]

        variant_logs = os.path.join(f"data/clevr-variants/{puzzle_name}/full-run-variants.json")
        variants = read_json(variant_logs).values()

        curr_variant = read_json(out_pth.replace(".out", "-gt.json"))
        curr_variant_hash = hash_dict(curr_variant)
        changes = list()
        for (var, changelog) in variants:
            if hash_dict(var) == curr_variant_hash:
                changes = changelog

        # changes = changelog
        print(english_desc)
        for i, (key, old, new) in enumerate(changes):
            english_desc = english_desc.replace(old, f"<TOK{i}>")
        for i, (key, old, new) in enumerate(changes):
            english_desc = english_desc.replace(f"<TOK{i}>", new)
        print(english_desc)

        pipeline_discriminator = (raw_solver_out['concept'].groups()[0])
        answer_idx = int(os.path.splitext(os.path.basename(raw_solver_out['candidate'].groups()[0])[0])[0]  )
        banswer_idx = int(raw_baseline_out['bcandidate'].groups()[0])

        for i, img in enumerate(test_imgs):
            curr_idx = int(os.path.splitext(os.path.basename(img).split('_')[-1])[0])
            if curr_idx == answer_idx:
                pipeline_ans = i
            if curr_idx == banswer_idx:
                baseline_ans = i
            if curr_idx == 0:
                actual_ans = i 

        
    
        if swapped:
            md_str = get_md(pz2count[puzzle_name], variant_num, train_imgs, test_imgs, english_desc, pipeline_ans, pipeline_discriminator, baseline_ans, actual_ans)
        else:
            md_str = get_md(pz2count[puzzle_name], variant_num, train_imgs, test_imgs, english_desc, pipeline_ans, pipeline_discriminator, baseline_ans, actual_ans)

        print("OUT", md_pth)
        os.makedirs(osp.dirname(md_pth), exist_ok=True)
        with open(md_pth, 'w') as fp:
            fp.write(md_str)

        parent_pth = osp.join(md_dir, f"puzzle_{pz2count[puzzle_name]}", "_index.md")
        if not os.path.exists(parent_pth):
            parent_str = get_parent_string(puzzle_name)
            with open(parent_pth, 'w') as fp:
                fp.write(parent_str)
    
    with open(osp.join(md_dir, "_index.md"), 'w') as fp:
        fp.write(clevr_landing_str)

        

        


    # for (absdir, folders, files) in os.walk(in_dir, followlinks=False):
    #     if absdir == in_dir:
    #         puzzles = [os.path.join(in_dir, p) for p in folders]
    #     if absdir in puzzles:
    #         print(absdir)
    #         puzzle_name = osp.basename(absdir)
    #         if ("*" in puzzle_name) or (puzzle_name not in to_run):
    #             print("SKIPPING", puzzle_name)
    #             continue
    #         for v_dir in glob(os.path.join(absdir, "*")):
    #             v_name = os.path.basename(v_dir)
    #             full_v_name = f"{puzzle_name}-{v_name}"
    #             gt_pth = os.path.join(v_dir, f"{full_v_name}-gt.json")
    #             gen_pth = os.path.join(v_dir, f"{full_v_name}.json")
                
                


    #             pz2count[full_v_name] = pz_count
    #             train_split = ['3', '4', '5']
    #             test_split  = ['0', '1', '2']
    #             generate_md(v_dir, full_v_name, train_split, test_split)
    #             pz_count += 1
                    
    #             if len(swap_list[puzzle_name]) > 1:
    #                 # swapping possible.
    #                 sl  = set(swap_list[puzzle_name]) - set([0])
    #                 swap = np.random.choice(list(sl))

    #                 pz2count[full_v_name + "-swap"] = pz_count
    #                 train_split = list(map(str, [i if i != swap else 0 for i in [3, 4, 5]]))
    #                 test_split  = list(map(str, [swap, 1, 2]))
    #                 generate_md(v_dir, full_v_name, train_split, test_split, swapped=swap)
    #                 pz_count += 1
    
    # with open(osp.join(md_dir, "mapping.json"), 'w') as fp:
    #     json.dump(pz2count, fp)