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
6. Setup darknet for getting bounding boxes from YOLOv4. Running `$ makde clean && make` in `./darknet` should suffice. I'd suggest reading the readme in the darknet directory for setting up a particular GPU.


## Running a CLEVR puzzle.

1. Start by making a directory `data/clevr-cleaned-puzzles/top
Make sure you don't have any environment activated with `conda deactivate`!

```bash
$ python clevr_driver.py --puzzle_dir data/clevr-cleaned-puzzles/apocope --examples "3 4 5 6" --candidates "0 1 2" --vdp_flags "- 2 --autotune" --use_gpu
```



## Running a VDP puzzle.


<!-- No action is needed to generating the `vdp` and `gqa` datasets. The data bundle should have these datasets nicely formatted for the inference stage.

For the CLEVR dataset we need to setup blender and add a link to the CLEVR shapefile data.

* Download and extract Blender 2.78c from [here](https://download.blender.org/release/Blender2.78/blender-2.78c-linux-glibc219-x86_64.tar.bz2).
* Extract Blender to `{project_dir}/data/blender-2.78c-linux-glibc219-x86_64.tar.bz2`
* Alias the Blender Binary.
* Add the directory containing CLEVR shapefiles data. echo $PWD/image_generation >> /home/ubuntu/clevr/blender-2.78c-linux-glibc219-x86_64/2.78/python/lib/python3.5/site-packages/clevr.pth`
* Run blender using `blender --background --python render_images.py -- --num_images 10 --use_gpu 1`
* THe file that needs to be edited is @ `/home/ubuntu/clevr/clevr-dataset-gen/image_generation/render_images.py`

```
# Setup CLEVR Dataset. Replace {} with appropriate string.
$ cd data
$ wget https://download.blender.org/release/Blender2.78/blender-2.78c-linux-glibc219-x86_64.tar.bz2
$ tar xf blender-2.78c-linux-glibc219-x86_64.tar.bz2
$ alias blender='$PWD/blender-2.78c-linux-glibc219-x86_64/blender
$ echo "$PWD/__generate/clevr/" > blender-2.78c-linux-glibc219-x86_64/2.78/python/lib/python3.5/site-packages/clevr.pth
```
 -->



<!-- ## Running the entire pipeline


1. Start a `p2.xlarge` AWS instance (what was used for all these experiments).
1. Download `data.zip` from the link given and extract in the project directory.
1. Initialize the conda environments in from `data/conda_envs` with `conda env create -f {conda_env.yaml}`
1. `(base) $ python utils/generate-variants.py` will run the pipeline on the variants @ `data/clevr-cleaned-variants` (~5-8 hours).
1. `(torch) $ python utils/train_puzzles.py` will train the prototype network with the correct hyperparameters.
1. Other code used to aggregate the data can be found under `analysis/`. Also, `utils/` has a lot of misc. utilities that I found helpful!
 -->

<!-- ## Driver
The `driver.sh` file is the central file to run an experiment through the vdp-tool-chain. The help menu provides more details:
```bash
$ ./driver.sh -h
This script must be run with the following arguments.
Usage:
./driver.sh {PUZZLE_PATH} {PUZZLE_NAME} {TRAIN_SET} {TEST_SET} {VDPFLAGS}
Example Usage:
./driver.sh data/clevr-puzzles/alternate-color.json test "3 4 5 6" "0 1 2" "- 2 -N 100 -C 2"
``` 
Internally, the `driver.sh` file runs the corresponding "driver" script for each directory. A broad overview is presented below:
![pipeline.svg](notes/vdp-pipeline-fig.svg) -->

## Data

The `data/` folder contains all data used by the tool-chain. This includes pretrained models, csv files, json configuration files, etc. The data directory can be downloaded from here (5.6 GB): `TODO:PROVIDE DRIVE LINK`


## Citations

TODO (check website for now)
<!-- ## VDP

The `vdp_solver` folder is a bare-bones version of the symbolic solver that is available here: `https://github.com/anonymousocean/vdpicml2021/tree/master/satbasedsolver`

The `vdp` folder contains the code to generate the IR from the VDP images using the YOLO model.   -->