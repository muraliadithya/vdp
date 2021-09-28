#!/bin/bash
eval "$(conda shell.bash hook)";
conda activate deep-ranking;
python test_clevr.py -p "$1"