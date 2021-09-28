#!/bin/bash -i
for number in {1..30}; do python baseline_generation.py $number > logs/bigvariant_generation_$number.log; done &&
for number in {1..30}; do ./run.sh puzzles/bigvariant$number.json bigvariant$number > logs/bigvariant$number.log; done
