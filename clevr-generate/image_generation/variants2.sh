#!/bin/bash -i
# PUZZLES="agreement alternation alternate-color aphaeresis apocope assimilation breaking circle-at-ends devoicing spy shield surround threepack meeussen train"
PUZZLES="assimilation"
TRAIN_SET="3 4 5 6"
TEST_SET="0 1 2"
for puzzle in $PUZZLES; do
    variants=`ls ./home/ubuntu/vdp-tool-chain-repo/data/clevr-variants/"$puzzle"-*.json`
    for variant in $variants; do
        name=`basename ${variant/".json"/""}`
        bash -i ./driver.sh $variant $name "$TRAIN_SET" "$TEST_SET"
    done
done