#!/bin/bash -i

display_usage() { 
	echo "This script must be run with the following arguments." 
	echo -e "Usage:\n$0 {PUZZLE_PATH} {PUZZLE_NAME} {TRAIN_SET} {TEST_SET} {VDPFLAGS}" 
	echo -e "Example Usage:\n$0 data/clevr-puzzles/alternate-color.json test \"3 4 5 6\" \"0 1 2\" \"- 2 -N 100 -C 2\""
    }
# check whether user had supplied -h or --help . If yes display usage 
while getopts ":h" option; do
   case $option in
      h) # display Help
         display_usage
         exit;;
   esac
done
PUZZLE_DIR=$(dirname "$pathname")
PUZZLE=`realpath -s "$1"`
NAME="$2"
GTNAME=$(dirname "$PUZZLE")/${NAME}.json
TRAIN_SET="${3:-"3 4 5 6"}"
TEST_SET="${4:-"0 1 2"}"
VDPFLAGS="${5}"
OUTFILE=${GTNAME/"json"/"out"}
LOGFILE=${GTNAME/"json"/"log"}
ABSPATH="/home/ubuntu/vdp-tool-chain"
echo $PUZZLE $OUTFILE $LOGFILE
cd ${ABSPATH}/clevr_generate/image_generation/ &&
rm -v ${ABSPATH}/data/output/scenes/CLEVR_"$NAME"_scenes/*
rm -v ${ABSPATH}/data/output/images/"$NAME"/*
blender --background --python gen_render_uconfig.py -- --input_puzzle_path "$PUZZLE" --use_gpu 1 --split "$NAME" --output_scene_file ${ABSPATH}/data/output/CLEVR_"$NAME"_scenes.json --output_scene_dir ${ABSPATH}/data/output/scenes/CLEVR_"$NAME"_scenes/  --output_image_dir ${ABSPATH}/data/output/images/"$NAME" &&
cd ${ABSPATH}/clevr_generate/ &&
bash ./transfer.sh $NAME &&
cd ${ABSPATH}/clevr_inference &&
bash -i ./driver.sh $NAME "$TRAIN_SET" "$TEST_SET" &&
cd ${ABSPATH}/vdp_solver && 
python scripts/vdpsolve.py ${ABSPATH}/data/inference-outputs/"$NAME" $VDPFLAGS &&
cd ${ABSPATH}/triplet_loss_baseline &&
bash -i ./driver.sh $NAME  &&
# cd ${ABSPATH} &&
# rsync -a ${ABSPATH}/data/output/images/* ${ABSPATH}/data/clevr-cleaned-puzzles/ &&
echo "DONE!"