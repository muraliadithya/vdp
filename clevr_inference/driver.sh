#!/bin/bash -i
NAME="${1:-results}"
TRAIN_SET=$2
TEST_SET=$3
GRAB_CONV=$4
eval "$(conda shell.bash hook)" &&
source activate ns-vqa &&

mkdir -p /home/ubuntu/vdp-tool-chain/data/inference-outputs/"$NAME"
cd scene_parse/mask_rcnn &&

# if [ "$GRAB_CONV" == "grab_conv" ]; then
#     python tools/test_net.py \
#         --dataset clevr_original_val \
#         --cfg configs/baselines/e2e_mask_rcnn_R-50-FPN_1x.yaml \
#         --load_ckpt /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/pretrained/object_detector.pt \
#         --output_dir /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/mask_rcnn/results/clevr_val_pretrained \
#         --name "$NAME" \
#         --grab_conv
#     exit 0
# else
python tools/test_net.py \
    --images_dir data/clevr-cleaned-puzzles/apocope/render/images \
    --rendersummary_path data/clevr-cleaned-puzzles/apocope/render/summary.json \
    --dataset clevr_original_val \
    --cfg configs/baselines/e2e_mask_rcnn_R-50-FPN_1x.yaml \
    --load_ckpt /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/pretrained/object_detector.pt \
    --output_dir /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/mask_rcnn/results/clevr_val_pretrained
# fi

cd ../attr_net

python tools/process_proposals.py \
    --dataset clevr \
    --proposal_path /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/mask_rcnn/results/clevr_val_pretrained/detections.pkl \
    --output_path /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/attr_net/objects/clevr_val_objs_pretrained.json &&

python tools/run_test.py \
    --run_dir /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/attr_net/results \
    --dataset clevr \
    --load_checkpoint_path /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/pretrained/attribute_net.pt \
    --clevr_val_ann_path /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/attr_net/objects/clevr_val_objs_pretrained.json \
    --output_path /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/attr_net/results/clevr_val_scenes_parsed_pretrained.json \
    --name "$NAME" &&
cp /home/ubuntu/vdp-tool-chain/data/ns-vqa-data/attr_net/results/clevr_val_scenes_parsed_pretrained.json /home/ubuntu/vdp-tool-chain/data/inference-outputs/"$NAME"/results.json
cd ../../
python collate.py "$TRAIN_SET" "$TEST_SET" /home/ubuntu/vdp-tool-chain/data/inference-outputs/"$NAME"/results.json /home/ubuntu/vdp-tool-chain/data/inference-outputs/"$NAME"/ 