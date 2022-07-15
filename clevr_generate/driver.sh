#!/bin/bash -i
PUZZLE=`realpath -s "$1"`
NAME="$2"
TRAIN_SET="${3:-"3 4 5 6"}"
TEST_SET="${4:-"0 1 2"}"
OUTFILE=${PUZZLE/"json"/"out"}
LOGFILE=${PUZZLE/"json"/"log"}
echo $PUZZLE $OUTFILE $LOGFILE
blender --background --python gen_render_uconfig.py -- --input_puzzle_path "$PUZZLE" --use_gpu 1 --split "$NAME" --output_scene_file /home/ubuntu/vdp/data/output/CLEVR_"$NAME"_scenes.json --output_scene_dir /home/ubuntu/vdp/data/output/scenes/CLEVR_"$NAME"_scenes/  --output_image_dir /home/ubuntu/vdp/data/output/images/"$NAME" &> $LOGFILE &&
cd .. &&
bash ./transfer.sh $NAME &>> $LOGFILE &&
cd /home/ubuntu/vdp/clevr_inference &&
bash ./driver.sh $NAME "$TRAIN_SET" "$TEST_SET" &>> $LOGFILE &&
cd /home/ubuntu/vdp/vdp_solver && 
python scripts/vdpsolve.py /home/ubuntu/vdp/data/inference-outputs/"$NAME" - 2 -N 100 -C 2 > $OUTFILE 2>> $LOGFILE &&
cd /home/ubuntu/vdp/triplet_loss_baseline &&
bash ./driver.sh $NAME >> $OUTFILE 2>> $LOGFILE &&
echo "DONE!"