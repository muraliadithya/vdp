# Running the ns-vqa inference.

1. Goto `/home/ubuntu/vdp/clevr_inference` and inspect the `./output` folder. Look for the `val` training set and make sure the images and the `CLEVR_val_scenes.json` reflect the required data.
2. Run `transfer.sh`. This will transfer the `val` partition into the appropriate location in the ns-vqa folder.
3. Now navigate to the ns-vqa project directory (`/home/ubuntu/ns-vqa`).
4. Run the following commands:
    ```bash
    $ conda activate ns-vqa;

    $ cd scene_parse/mask_rcnn;

    $ python tools/test_net.py \
        --dataset clevr_original_val \
        --cfg configs/baselines/e2e_mask_rcnn_R-50-FPN_1x.yaml \
        --load_ckpt ../../data/pretrained/object_detector.pt \
        --output_dir ../../data/mask_rcnn/results/clevr_val_pretrained;
    
    $ cd ../attr_net;
    
    $ python tools/process_proposals.py \
        --dataset clevr \
        --proposal_path ../../data/mask_rcnn/results/clevr_val_pretrained/detections.pkl \
        --output_path ../../data/attr_net/objects/clevr_val_objs_pretrained.json;
    
    $ python tools/run_test.py \
        --run_dir ../../data/attr_net/results \
        --dataset clevr \
        --load_checkpoint_path ../../data/pretrained/attribute_net.pt \
        --clevr_val_ann_path ../../data/attr_net/objects/clevr_val_objs_pretrained.json \
        --output_path ../../data/attr_net/results/clevr_val_scenes_parsed_pretrained.json;
    
    $ cp ../../data/attr_net/results/clevr_val_scenes_parsed_pretrained.json ../../results.json
    ```

5. The inference results should be at `/home/ubuntu/ns-vqa/results.json`.
