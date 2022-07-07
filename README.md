# VDP Tool Chain

TODOS:
* ~~Annotate `tree` output~~
* ~~Add figures.~~
* ~~Add ## subsections.~~
* Add link to data (Email authors or open an issue if not available).

This repository contains all the code for running the `vdp` project. The (general) organization and key scripts are detailed below:

```bash
.
├── analysis            # Code to process results for paper.
│   └── ...
├── clevr_driver.py     # Entry point for generating/running/testing CLEVR images.
├── natscene_driver.py  # Entry point for generating/running/testing natural scenes images.
├── clevr_generate      # Module for generating CLEVR images based on github.com/facebookresearch/clevr-dataset-gen 
│   └── ...
├── clevr_inference     # Module for inferring scene location of CLEVR images. Based on nsvqa.csail.mit.edu
│   └── ...
├── darknet             # Module for inferring scene location for natural scenes images. Based on github.com/pjreddie/darknet 
│   └── ...
├── data                # Data bundle
│   ├── blender-2.78c-linux-glibc219-x86_64
│   ├── clevr-cleaned-puzzles
│   ├── clevr_scene_data
│   ├── conda-envs
│   ├── inference-outputs
│   ├── intermediate-inference-outputs
│   ├── natscene_data
│   ├── ns-vqa-data
│   ├── ooo-inference-inputs
│   ├── ooo-inference-outputs
│   ├── output
│   ├── temp.pkl
│   ├── triplet_loss_baseline-data
│   └── yolo_data
├── lightning_logs          # Logs for training protonet baseline.      
│   └── ...
├── natscene_inference      # Supporting code for running natural scenes data.
│   └── ...
├── new-baseline            # code for Prototypical network baseline.
│   └── ...
├── README.md
├── triplet_loss_baseline   # code for triplet loss baseline (check citations).
│   ├── ...
├── utils                   # Uncategorized data cleaning / processing scripts.
│   └── ...
├── vdp_solver              # The Z3 solver code for solving a VDP.
│   └── ...
└── website_stuff           # Utilities for generating the vdp_website.
    └── ...
```

## Running from scratch

1. Setup a Amazon AWS `p2.xlarge` instance. We used the `Deep Learning AMI (Ubuntu 16.04) Version 38.0 (ami-067cf9e6ac97cfb53) ` Amazon Machine Image with 105 GiB gp2 storage volume. Running all the experiments from scratch takes about 24-30 hours of compute time (less than $30). We were able to replicate all our experiments on a different server with a different GPU. However, we found it almost-impossible to setup the `clevr_inference`  on a non-ubuntu-16.04 machine.
2. Clone this git repository. The homepath should look like `/home/ubuntu/vdp-tool-chain` (this *exact string* has been hardcoded in a lot of places. If you prefer running this on a local machine then you'll need to group-replace this path with your the project path).
3. Install the conda environments. There should be 4 `*-spec.txt` files in the `data/conda-envs` folder. Create a conda environment from these. That is:
```bash
$ conda create --name ns-vqa --file data/conda-envs/ns-vqa-spec.txt
$ conda create --name deep-ranking --file data/conda-envs/deep-ranking-spec.txt
$ conda create --name torch --file data/conda-envs/torch-spec.txt
$ conda create --name vdp --file data/conda-envs/vdp-spec.txt
```
4. Download the `data.zip` data bundle merge this with the contents of `vdp-tool-chain/data`.
5. The data.zip file contains all the extra datafiles/configs/pretrained_models needed to replicate our results.
6. Setup darknet for getting bounding boxes from YOLOv4. Running `$ make clean && make` in `./darknet` should suffice. I suggest reading the readme in the darknet directory for setting up a particular GPU.


## Running a CLEVR puzzle.

Start by making a directory `data/clevr-cleaned-puzzles/test_puzzle`. Make a file `scene_file.json` that follows this format:
```
[
    { # Image 0   
        "objects": [
            {
                "x": -2.0,          # [-3, 3]
                "y": -2.0,          # [-3, 3]
                "z": 0.0,           # Ideally use 0. The inference engine isn't trained for >0.
                "size": "small",    # ["small", "large"]
                "shape": "sphere",  # ["cube", "sphere", "cylinder"]
                "color": "yellow",  # ["gray", "red", "blue", "green", "brown", "purple", "cyan", "yellow"]
                "orientation": 0.0, # [0, 360)
                "material": "rubber" # ["rubber", "metal"]
            },
            ...
        ]

    },
    ...
]
```

To run the CLEVR puzzle:
```bash
$ python clevr_driver.py --puzzle_dir data/clevr-cleaned-puzzles/test_puzzle --examples "3 4 5 6" --candidates "0 1 2" --vdp_flags "- 2 --autotune" --use_gpu
```
More information about `vdp_flags` can be found by running `python vdp_solver/scripts/vdpsolve.py --help`. Also, make sure you don't have any environment activated with `conda deactivate` before running this!

## Running a Natural scenes puzzle.

1. Assume we want to process a puzzle defined by `eg1.png, eg2.png, eg3.png, cand1.png, cand2.png`.
1. Put the images in `data/natscene_data/images/`.
1. Create a directory `data/natscene_data/puzzles/test_puzzle`. Make a file `config.json` with the follow format:
    ```
    {
        "name": "test_puzzle",
        "train": [
            "data/natscene_data/images/eg1.png",
            "data/natscene_data/images/eg2.png",
            "data/natscene_data/images/eg3.png"
        ],
        "test": [
            "data/natscene_data/images/cand1.png",
            "data/natscene_data/images/cand2.png",
            "data/natscene_data/images/cand3.png"
        ]
    }
    ```
1. Run the natural scenes puzzles with the default YOLO bounding box detector:
    ```
    $ python natscene_driver.py --config "data/natscene_data/puzzles/test_puzzle/config.json" --vdp_flags "- 3 --autotune" --regenerate
    ```
1. The output of the solver will be written to `data/natscene_data/processed/test_puzzle.out`.


## Running a GQA scenes puzzle.

1. This requires access to the GQA dataset.


## Data

The `data/` folder contains all data used by the tool-chain. This includes pretrained models, csv files, json configuration files, etc. The data directory can be downloaded from here and is subject to a fair use in research agreement (5.6 GB): `TODO:PROVIDE LINK`. 



## Communication

The fastest way to reach the authors for any debugging help is by opening a GitHub issue. This also helps us document and address potential "gotchas." For data related issues, please email the authors directly.


## Common Gotcha's (Known Issues)

1. The triplet_loss_baseline is written in Tensorflow/Keras. Keras documents default behavior in `~/.keras/keras.json`. The default behavior of `image_dim_ordering` is different for the triplet loss baseline so if you run into batch dimension errors, messing with the `image_dim_ordering` will help.

## Citations

TODO (check website for now)
