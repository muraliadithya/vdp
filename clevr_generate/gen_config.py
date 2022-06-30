import sys, json
from collections import namedtuple  
# """
# A helper function to generate user-defined config files for `gen_render_uconfig.py`.
# """
Input = namedtuple('Input', ['camera_loc', 'images', 'num_images'])
Image = namedtuple('Image', ['objects', 'num_objects'])

def _read_json(pth):
  with open(pth, 'r') as f:
    return json.load(f)


def get_puzzle(pth = 'puzzles/line.json'):
    images = [Image(objects=img['objects'], num_objects=len(img['objects'])) for img in _read_json(pth)]
    input_args = dict(
        camera_loc = (0, 0, 0),
        images = images,
        num_images = len(images),
    )

    return input_args


if __name__ == "__main__":
    puzzle_pth = sys.argv[1] if len(sys.argv) > 1 else 'puzzles/line.json'
    print(get_puzzle(puzzle_pth))