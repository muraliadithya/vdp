import json
import os
import shutil


def make_imglist(image_names):
    include_img = '<img src=\"../{}\" style=\"width:300\">'
    joining_str = '\n'.join(['&nbsp;']*3)
    return joining_str.join([include_img.format(imgname) for imgname in image_names])


def make_solution(config_dict, candidate_img_paths):
    chosen_candidate = config_dict.get('candidate', None)
    if chosen_candidate is None:
        return "The tool did not solve this puzzle."
    else:
        candidate = config_dict['candidate']
        baseline = config_dict['baseline_candidate']
        concept = config_dict['concept']
        solution_htmlstr = 'Our tool chose candidate {candidate_number}.<br>' \
                           '\nThe discriminator given was: {concept}<br>' \
                           '\nThe neural baseline model chose candidate {baseline_number}'
        return solution_htmlstr.format(candidate_number=next(i for i in range(len(candidate_img_paths)) 
                                                             if candidate == candidate_img_paths[i]), 
                                       concept=concept, 
                                       baseline_number=next(i for i in range(len(candidate_img_paths)) 
                                                            if baseline == candidate_img_paths[i]))


def make_puzzleclass_indexpage(puzzle_class):
    with open('./scripts/puzzleindexpage.txt', 'r') as puzzle_index_formatfile:
        index_str = puzzle_index_formatfile.read()
        variants = [f[:-5] for f in os.listdir('./ann_config') if f.startswith(puzzle_class)]
        puzzle_list_htmlstr = '\n'.join(['<li> <a href=\"{variant}.html\">Variant {num}</a></li>'.format(
            variant=variants[i], num=str(i+1)) for i in range(len(variants))])
        result = index_str.format(puzzleclass=puzzle_class, 
                                  puzzle_list=puzzle_list_htmlstr)
        with open(f'./clevrwebsite/{puzzle_class}/index.html', 'w') as puzzleclass_index_page:
            puzzleclass_index_page.write(result)
        return None


def run(puzzle_class_name, clean=True):
    if clean:
        if os.path.exists(f'./clevrwebsite/{puzzle_class_name}/'):
            shutil.rmtree(f'./clevrwebsite/{puzzle_class_name}/')
    os.makedirs(f'./clevrwebsite/{puzzle_class_name}')
    with open('./scripts/puzzlepage.txt', 'r') as puzzle_page_formatfile:
        puzzlepage_str = puzzle_page_formatfile.read()
    for f in os.listdir('./ann_config'):
        if not f.startswith(puzzle_class_name):
            continue
        with open(f'./ann_config/{f}', 'r') as infile:
            puzzlename = f[:-5]
            configdict = json.load(infile)
            train_img_paths = configdict['train']
            candidate_img_paths = configdict['test']
            #train_img_relpaths = [f'./clevrwebsite/{tr_pth}' for tr_pth in train_img_paths]
            #candidate_img_relpaths = [f'./clevrwebsite/{cand_pth}' for cand_pth in candidate_img_paths]
            train_imgs_htmlstr = make_imglist(train_img_paths)
            candidate_imgs_htmlstr = make_imglist(candidate_img_paths)
            solution_htmlstr = make_solution(configdict, candidate_img_paths)
            result = puzzlepage_str.format(puzzlename=puzzlename, 
                                           train_imgs=train_imgs_htmlstr, 
                                           candidate_list=', '.join(str(i) for i in range(len(candidate_img_paths))), 
                                           candidate_imgs=candidate_imgs_htmlstr, 
                                           intended=configdict['intended'], 
                                           solution=solution_htmlstr
                                           )
        with open(f'./clevrwebsite/{puzzle_class_name}/{puzzlename}.html', 'w') as puzzle_page:
            puzzle_page.write(result)
    make_puzzleclass_indexpage(puzzle_class_name)
    return None


def make_website_index(puzzle_class_names):
    with open('./scripts/mainindexpage.txt', 'r') as main_index_formatfile:
        index_str = main_index_formatfile.read()
        puzzleclass_list_htmlstr = '\n'.join(['<li> <a href="{puzzleclass}/index.html">{puzzleclass}</a></li>'.format(
            puzzleclass=puzzle_class) for puzzle_class in puzzle_class_names])
        result = index_str.format(puzzle_class_list=puzzleclass_list_htmlstr)
        with open(f'./clevrwebsite/index.html', 'w') as main_index_page:
            main_index_page.write(result)
        return None


puzzle_names = []
puzzle_name = 'agreement'
puzzle_names.append(puzzle_name)
puzzle_name = 'alternation'
puzzle_names.append(puzzle_name)
puzzle_name = 'aphaeresis'
puzzle_names.append(puzzle_name)
puzzle_name = 'apocope'
puzzle_names.append(puzzle_name)
puzzle_name = 'assimilation'
puzzle_names.append(puzzle_name)
puzzle_name = 'breaking'
puzzle_names.append(puzzle_name)
puzzle_name = 'circle-at-ends'
puzzle_names.append(puzzle_name)
puzzle_name = 'devoicing'
puzzle_names.append(puzzle_name)
puzzle_name = 'meeussen'
puzzle_names.append(puzzle_name)
puzzle_name = 'shield'
puzzle_names.append(puzzle_name)
puzzle_name = 'spy'
puzzle_names.append(puzzle_name)
puzzle_name = 'surround'
puzzle_names.append(puzzle_name)
puzzle_name = 'threepack'
puzzle_names.append(puzzle_name)
puzzle_name = 'train'
puzzle_names.append(puzzle_name)
for puzzle_name in puzzle_names:
    run(puzzle_name)
make_website_index(puzzle_names)

