import os
import glob

f = open("gt2puzzle.sh", 'w')
puzzles = read_json('proc_puzzle_specs.json')
# [
# 'apocope',
# 'spy',
# 'groundtruth',
# 'line-color',
# 'agreement',
# 'devoicing',
# 'shield',
# 'circle-at-ends',
# 'surround',
# 'assimilation',
# 'train',
# 'alternate-color',
# 'alternation',
# 'aphaeresis',
# 'breaking',
# 'threepack'
# ]

for p in puzzles:
   print(f"python from_gt.py ~/vdp-tool-chain-repo/clevr-inference/gt_outputs/{p}/results.json;", file=f)

f.close()