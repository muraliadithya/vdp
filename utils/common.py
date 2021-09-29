import json, pickle, os, re
import numpy as np
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


rx_dict = {
    'candidate_num' : re.compile(r"Candidate: c(?P<candidate_num>\d)"),
    'concept' : re.compile(r"Concept: (?P<concept>.*)"),
    'candidate' : re.compile(r"Candidate Name: (?P<candidate>.*)"),
    'end' : re.compile(r"No discriminator found for puzzle (?P<cpath>.*)"),
    'bscores' : re.compile(r"The scores were (?P<score_list>\[[\d., e-]+\])."),
    'bcandidate' : re.compile(r"Best concept is @ idx (\d) ie: (?P<bcpath>.*)"),
    'path_match' : re.compile(r"([\w-]+)-(\d+).json")
}

yolo_rx_dict = {
    'english_desc' : re.compile(r"Intended concept: (?P<description>.*) <br>"),
    'candidate' : re.compile(r"The chosen answer is (?P<concept>.*).<br>"),
    'concept' : re.compile(r"The discriminator is: (?P<candidate>.*)"),
    'end' : re.compile(r"The tool did not solve this puzzle."),
}

img_template = '%s%%0%dd.png' % ('CLEVR_val_', 6)

flags = {('agreement', False): [0, 24], ('alternate-color', False): [25, 49], ('alternation', False): [50, 146], ('alternation', True): [51, 149], ('aphaeresis', False): [150, 174], ('apocope', False): [175, 247], ('apocope', True): [176, 249], ('assimilation', False): [250, 346], ('assimilation', True): [251, 349], ('breaking', False): [350, 398], ('breaking', True): [351, 399], ('circle-at-ends', False): [400, 448], ('circle-at-ends', True): [401, 449], ('devoicing', False): [450, 498], ('devoicing', True): [451, 499], ('meeussen', False): [500, 524], ('partition', False): [525, 549], ('shield', False): [550, 646], ('shield', True): [551, 649], ('spy', False): [650, 722], ('spy', True): [651, 724], ('threepack', False): [725, 773], ('threepack', True): [726, 774], ('train', False): [775, 823], ('train', True): [776, 824]}


swap_list = {
    'agreement' :           [0],
    'alternate-color' :     [0],
    'alternation' :         [0, 3, 4, 5],
    'aphaeresis' :          [0],
    'apocope' :             [0, 4, 5],
    'assimilation' :        [0, 3, 4, 5], 
    'breaking' :            [0, 3],
    'circle-at-ends' :      [0, 5],
    'threepack' :           [0, 5],
    'train' :               [0, 3],
    'partition':            [0],
    'spy' :                 [0, 3, 4],
    'shield' :              [0, 3, 4, 5],
    'devoicing' :           [0, 4],     # 
    'meeussen' :            [0],
}


flags_no_c = {
    'agreement' :           "- 3 -N 100",
    'alternate-color' :     "- 2 -N 100",
    'alternation' :         "- 2 -N 100",
    'aphaeresis' :          "- 3 -N 100",
    'apocope' :             "- 2 -N 100",
    'assimilation' :        "- 2 -N 100", 
    'breaking' :            "- 2 -N 100",
    'circle-at-ends' :      "- 3 -N 100",
    'threepack' :           "- 3 -N 100 ",
    'train' :               "- 2 -N 100",
    'partition':            "- 2 -N 100",
    'spy' :                 "- 2 -N 100",
    'shield' :              "- 2 -N 100",
    'devoicing' :           "- 3 -N 100",
    'meeussen' :            "- 2 -N 100",
}



yolo_flags_no_c = {
    'kitchen' :             "- 1 -N 100",
    'middleball' :          "- 1 -N 100",
    'dogherded' :           "- 1 -N 100",
    'desktop' :             "- 1 -N 100",
    'allcatsonsofas' :      "- 1 -N 100",
    'pplwearingties' :      "- 1 -N 100",
    'drivingdirection' :    "- 1 -N 100",
    'sleeping' :            "- 1 -N 100",
    'umbrella' :            "- 1 -N 100",
    'populatedbus' :        "- 1 -N 100",
    'separatepiles' :       "- 1 -N 100",
    'setplates' :           "- 1 -N 100",
    'truck' :               "- 1 -N 100",
    'allteddysonsofas' :    "- 1 -N 100",
    'parkmeter' :           "- 1 -N 100",
    'pplandties' :          "- 1 -N 100",
    'catontv' :             "- 1 -N 100",
    '2on1' :                "- 1 -N 100",
    'alldogsonsofas' :      "- 1 -N 100",
    'personball' :          "- 1 -N 100"
}

yolo_threshold = {
    'kitchen' :             [2, 0],
    'middleball' :          [3, 2],
    'dogherded' :           [2, 0],
    'desktop' :             [2, 0],
    'allcatsonsofas' :      [2, 1],
    'pplwearingties' :      [2, 1],
    'drivingdirection' :    [2, 1],
    'sleeping' :            [2, 1],
    'umbrella' :            [1, 0],
    'populatedbus' :        [2, 1],
    'separatepiles' :       [2, 1],
    'setplates' :           [2, 2],
    'truck' :               [1, 0],
    'allteddysonsofas' :    [2, 1],
    'parkmeter' :           [1, 0],
    'pplandties' :          [2, 0],
    'catontv' :             [2, 1], 
    '2on1' :                [3, 3], # timeout 15 second
    'alldogsonsofas' :      [2, 1],
    'personball' :          [2, 0]
}

yolo_pzname_to_name = {
    'kitchen' :             "Kitchen",
    'middleball' :          "Middle Ball",
    'dogherded' :           "Dog Herding",
    'desktop' :             "Desktop",
    'allcatsonsofas' :      "All cats on sofas",
    'pplwearingties' :      "People wearing ties",
    'drivingdirection' :    "Driving direction",
    'sleeping' :            "Sleeping",
    'umbrella' :            "Umberella",
    'populatedbus' :        "Populated bus",
    'separatepiles' :       "Seperate piles",
    'setplates' :           "Set plates",
    'truck' :               "Truck",
    'allteddysonsofas' :    "All teddys on sofas",
    'parkmeter' :           "Parking meter",
    'pplandties' :          "People and ties",
    'catontv' :             "Cat on TV",
    '2on1' :                "2 cats on 1 couch",
    'alldogsonsofas' :      "All dogs on sofas",
    'personball' :          "Person playing with ball"
}
clevr_pzname2name = {
    'agreement' :           "Agreement",
    'alternate-color' :     "Color Follow",
    'alternation' :         "Shape Follow",
    'aphaeresis' :          "Aphaeresis",
    'apocope' :             "Apocope",
    'assimilation' :        "Assimilation", 
    'breaking' :            "Breaking",
    'circle-at-ends' :      "Circle at ends",
    'devoicing' :           "Devoicing",
    'shield' :              "Shield",
    'threepack' :           "Threepack",
    'train' :               "Train",
    'partition' :           "Partition",
    'spy' :                 "Spy",
    'meeussen' :            "Meeussen",
}

intended_concept = {
    'agreement' :           "For every cylinder there is a sphere to the left of it and to the right of it.",
    'alternate-color' :     "There is a red sphere to the left of a green sphere",
    'alternation' :         "There is a sphere to the right of every cylinder.",
    'aphaeresis' :          "There is a cube and there is a cylinder to the left of all cubes.",
    'apocope' :             "Every sphere has a cylinder to its right.",
    'assimilation' :        "All cylinders and spheres have the same color", 
    'breaking' :            "There is no color such that there is only one sphere of that color.",
    'circle-at-ends' :      "There is a leftmost sphere and rightmost sphere.",
    'devoicing' :           "All cubes are to the left of all cylinders and the rightmost cylinder is metal.",
    'shield' :              "Every cylinder has a cube to its right.",
    'threepack' :           "There are three cylinders of the same color.",
    'train' :               "There is a metal cube to the left of all cylinders.",
    'partition' :           "All cubes are to the left of all cylinders",
    'spy' :                 "Every cylinder has a cube behind it.",
    'meeussen' :            "All spheres are to the left of a green cylinder.",
}


vary_along = {
    'agreement' :           ["shape", "color", "material"],
    'alternate-color' :     ["shape", "color", "material"],
    'alternation' :         ["shape", "color", "material"],
    'aphaeresis' :          ["shape", "color", "material"],
    'apocope' :             ["shape", "color", "material"],
    'assimilation' :        ["shape", "color", "material"],
    'breaking' :            ["shape", "color", "material"],
    'circle-at-ends' :      ["shape", "color", "material"],
    'threepack' :           ["shape", "color", "material"],
    'train' :               ["shape", "color"],
    'partition':            ["shape", "color", "material"],
    'spy' :                 ["shape", "color", "material"],
    'shield' :              ["shape", "color", "material"],
    'devoicing' :           ["shape", "color"],
    'meeussen' :            ["shape", "color", "material"],
}


ROT45 = np.array([
    [ 1, 1, 0],
    [-1, 1, 0],
    [ 0, 0, 1],
])




properties = {
    'shape' : ['cylinder', 'sphere', 'cube',],
    'color' : ["gray", "red", "blue", "green", "brown", "purple", "cyan", "yellow",],
    'material' : ['rubber', 'metal'],
    'size' : ['large', 'small'],
}

def parse_solver_output(out):
    concepts = []
    for (key, line) in get_rx_lines(out.split("\n"), rx_dict):
        if key == 'end':
            return concepts

        if key == 'candidate_num':
            concept = {}
            concepts.append(concept)
        else:
            concept = concepts[-1]

        concept[key] = line


    return concepts

def out_parser(out_pth):
    # if 'swap' in out_pth:
    #     pz_pth = os.path.dirname(out_pth)
    #     pzname, swap_ext = os.path.basename(out_pth).split("-swap")
    #     swap, ext = os.path.splitext(swap_ext)
    #     out_pth = os.path.join(pz_pth, pzname +  ext)
    assert os.path.exists(out_pth), f"path not found w.r.t {os.getcwd()}"
    out = read_txt(out_pth)


    concepts = []
    gen = get_rx_lines(out, rx_dict)
    for (key, line) in gen:
        if key == 'end':
            break

        if key == 'candidate_num':
            concept = {}
            concepts.append(concept)
        else:
            concept = concepts[-1]

        concept[key] = line
    
    for (key, line) in gen:
        if key == 'bscores':
            concept = {}
            concepts.append(concept)
        else:
                concept = concepts[-1]
        concept[key] = line

    return concepts