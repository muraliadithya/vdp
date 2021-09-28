#!/bin/bash
PUZZLE="${1}"

# PROCESS THE JSON SCENES FILE
cp -v /home/ubuntu/vdp-tool-chain-repo/data/output/CLEVR_"$PUZZLE"_scenes.json /home/ubuntu/vdp-tool-chain-repo/data/output/CLEVR_val_scenes.json
find /home/ubuntu/vdp-tool-chain-repo/data/output/CLEVR_val_scenes.json -type f -exec sed -i "s/${PUZZLE}_/val_/g" {} \;


cp -Trv /home/ubuntu/vdp-tool-chain-repo/data/output/images/"$PUZZLE"/ /home/ubuntu/vdp-tool-chain-repo/data/output/images/val/
rename -v -f "s/${PUZZLE}_/val_/" /home/ubuntu/vdp-tool-chain-repo/data/output/images/val/CLEVR_"$PUZZLE"_0*

cp -v /home/ubuntu/vdp-tool-chain-repo/data/output/images/val/CLEVR_* /home/ubuntu/vdp-tool-chain-repo/data/ns-vqa-data/raw/CLEVR_v1.0/images/val/
cp -v /home/ubuntu/vdp-tool-chain-repo/data/output/CLEVR_val_scenes.json /home/ubuntu/vdp-tool-chain-repo/data/ns-vqa-data/raw/CLEVR_v1.0/scenes/
