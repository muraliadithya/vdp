# Making a new YOLO/SG puzzle and running it
* Start the AWS instance and navigate to `vdp`. Activate the `vdp` conda environment (`$ conda activate vdp`).
* Make a new config file in the config folder (`$ touch config/images-of-dogs.json`). Open this file and populate it using the following format:
    ```json
    {
        "name": "images-of-dogs",
        "train": [
            "/path/to/dog/train/image1.jpg",
            "/path/to/dog/train/image2.jpg",
            ...
        ],
        "test": [
            "/path/to/dog/test/image1.jpg",
            "/path/to/dog/test/image2.jpg",
            ...
        ]
    }
    ```
* Verify that the json is properly formatted and pass the json to the `vdp_driver.py` function using the `--config` flag. The command will look like this: `$ python main.py --config config/images-of-dogs.json`. For instance:
    ```bash
    (vdp) ubuntu@ip-172-31-47-88:~/vdp$ python main.py --config config/2on1_abc-d123.json 
    Namespace(config='config/2on1_abc-d123.json', dry=False, no_cache=False, use_sg=False)
    running: config/2on1_abc-d123.json
    CUDA-version: 10000 (10020), cuDNN: 7.5.1, CUDNN_HALF=1, GPU count: 1  
    ...
    ```
 
 * The outputs should be written to `{project dir}/data/natscene_data/ir/{name-of-puzzle}`
<!-- * To run the SG detector on the same puzzle, activate the `--use-sg` flag. For instance:
    ```bash
    (vdp) ubuntu@ip-172-31-47-88:~/vdp$ python main.py --config config/2on1_abc-d123.json --use-sg 
    Namespace(config='config/2on1_abc-d123.json', dry=False, no_cache=False, use_sg=False)
    running: config/2on1_abc-d123.json
    ... -->
 <!-- * The outputs should be written to `{project dir}/data/sg_ir/{name-of-puzzle}` -->

