import json
import os
import shutil


def make_imglist(image_names):
    include_img = '<img src=\"../images/{}\" style=\"width:300\">'
    joining_str = '\n'.join(['&nbsp;']*3)
    return joining_str.join([include_img.format(imgname) for imgname in image_names])


def make_solution(config_dict, candidate_imgs):
    chosen_candidate = config_dict.get('candidate', None)
    if chosen_candidate is None:
        return "The tool did not solve this puzzle."
    else:
        candidate = config_dict['candidate']
        concept = config_dict['concept']
        solution_htmlstr = 'The chosen answer is {candidate_number}.<br>\nThe discriminator is: {concept}'
        return solution_htmlstr.format(candidate_number=next(i for i in range(len(candidate_imgs)) 
                                                             if candidate == candidate_imgs[i]), 
                                       concept=concept)


def make_puzzleclass_indexpage(puzzle_class):
    with open('./scripts/puzzleindexpage.txt', 'r') as puzzle_index_formatfile:
        index_str = puzzle_index_formatfile.read()
        puzzle_list_htmlstr = '\n'.join(['<li> <a href=\"{puzzleclass}_{num}.html\">Variant {num}</a></li>'.format(
            puzzleclass=puzzle_class, num=str(i+1)) for i in range(20)])
        result = index_str.format(puzzleclass=puzzle_class, 
                                  puzzle_list=puzzle_list_htmlstr)
        with open(f'./yolowebsite/{puzzle_class}/index.html', 'w') as puzzleclass_index_page:
            puzzleclass_index_page.write(result)
        return None


def run(puzzle_class_name, clean=True):
    if clean:
        if os.path.exists(f'./yolowebsite/{puzzle_class_name}/'):
            shutil.rmtree(f'./yolowebsite/{puzzle_class_name}/')
    os.makedirs(f'./yolowebsite/{puzzle_class_name}')
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
            train_imgs = [tr_pth.split('/')[-1] for tr_pth in train_img_paths]
            candidate_imgs = [cand_pth.split('/')[-1] for cand_pth in candidate_img_paths]
            train_imgs_htmlstr = make_imglist(train_imgs)
            candidate_imgs_htmlstr = make_imglist(candidate_imgs)
            solution_htmlstr = make_solution(configdict, candidate_imgs)
            result = puzzlepage_str.format(puzzlename=puzzlename, 
                                           train_imgs=train_imgs_htmlstr, 
                                           candidate_list=', '.join(str(i) for i in range(len(candidate_imgs))), 
                                           candidate_imgs=candidate_imgs_htmlstr, 
                                           intended=configdict['intended'], 
                                           solution=solution_htmlstr
                                           )
        with open(f'./yolowebsite/{puzzle_class_name}/{puzzlename}.html', 'w') as puzzle_page:
            puzzle_page.write(result)
    make_puzzleclass_indexpage(puzzle_class_name)
    return None


def make_website_index(puzzle_class_names):
    with open('./scripts/mainindexpage.txt', 'r') as main_index_formatfile:
        index_str = main_index_formatfile.read()
        puzzleclass_list_htmlstr = '\n'.join(['<li> <a href="{puzzleclass}/index.html">{puzzleclass}</a></li>'.format(
            puzzleclass=puzzle_class) for puzzle_class in puzzle_class_names])
        result = index_str.format(puzzle_class_list=puzzleclass_list_htmlstr)
        with open(f'./yolowebsite/index.html', 'w') as main_index_page:
            main_index_page.write(result)
        return None


puzzle_names = []
puzzle_name = 'allteddysonsofas'
puzzle_names.append(puzzle_name)
puzzle_name = 'truck'
puzzle_names.append(puzzle_name)
puzzle_name = 'drivingdirection'
puzzle_names.append(puzzle_name)
puzzle_name = 'separatepiles'
puzzle_names.append(puzzle_name)
puzzle_name = 'middleball'
puzzle_names.append(puzzle_name)
puzzle_name = 'setplates'
puzzle_names.append(puzzle_name)
puzzle_name = 'personball'
puzzle_names.append(puzzle_name)
puzzle_name = 'dogherded'
puzzle_names.append(puzzle_name)
puzzle_name = 'parkmeter'
puzzle_names.append(puzzle_name)
puzzle_name = 'umbrella'
puzzle_names.append(puzzle_name)
puzzle_name = 'populatedbus'
puzzle_names.append(puzzle_name)
puzzle_name = 'alldogsonsofas'
puzzle_names.append(puzzle_name)
puzzle_name = 'desktop'
puzzle_names.append(puzzle_name)
puzzle_name = 'pplwearingties'
puzzle_names.append(puzzle_name)
puzzle_name = 'sleeping'
puzzle_names.append(puzzle_name)
puzzle_name = 'allcatsonsofas'
puzzle_names.append(puzzle_name)
puzzle_name = 'kitchen'
puzzle_names.append(puzzle_name)
puzzle_name = 'pplandties'
puzzle_names.append(puzzle_name)
puzzle_name = '2on1'
puzzle_names.append(puzzle_name)
puzzle_name = 'catontv'
puzzle_names.append(puzzle_name)
for puzzle_name in puzzle_names:
    run(puzzle_name)
make_website_index(puzzle_names)

