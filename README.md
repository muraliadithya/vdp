# VDP Tool Chain

TODOS:
* ~~Annotate `tree` output~~
* ~~Add figures.~~
* ~~Add ## subsections.~~
* Add link to data (Email Authors or open an issue if not available).

This repository contains all the code for running the `vdp` project. The (general) organization and key scripts are detailed below:

```bash
.
├── driver.sh                                         # See ## Driver for details.
├── README.md                                         # This file.
├── clevr-generate                                    # Code for generating custom CLEVR-domain images.
│   ├── image_generation                              # (Code to regenerate clevr-instances)
│   ├── notebooks                                     # (Notebooks to aggregate clevr-data)
│   └── question_generation                           # (Not used: code to generate questions for cler-puzzles)
├── clevr-inference                                   # Code to infer object positions for CLEVR-domain images.
│   ├── reason                                        # (NS-VQA reasoning code.)
│   ├── driver.sh                                     # Script to run clevr-inference.
│   ├── ns-vqa-readme.md                              # Original setup instructions and citation
│   ├── running-ns-vqa-inference.md                   # Instructions to setup and run the code in this folder.
│   ├── collate.py                                    # Script that 'collects' the ns-vqa output for the vdp-solver solver
│   └── scene_parse                                   # (NS-VQA code for parsing clevr-scene)
├── data                                              # See ## Data for more details.
│   ├── clevr-ann                                     # Website data: CLEVR-annotations.
│   ├── clevr-better-puzzles-test                     # Experiments for making new puzzles
│   ├── clevr-irs                                     # IRs used to generate website data.
│   ├── clevr-puzzles                                 # Base CLEVR puzzles.
│   ├── clevr-variants                                # Variants of the base CLEVR puzzles
│   ├── images                                        # Website data: CLEVR-images
│   ├── inference-outputs                             # Output folder for inference.
│   ├── inference-gt-outputs                          # (Hand-made "inferred" puzzles.)
│   ├── ns-vqa-data                                   # ns-vqa pretrained models and raw data
│   ├── output                                        # Contains `clevr-generate` output scenes and images 
│   ├── submission_files                              # Files submitted as supplementary material for ICML21
│   └── vizs                                          # Matplotlib generated viz of each puzzle. 
├── notes                                             # Section containing some notes about experimentation.
├── pt-baseline                                       # Pretrained Baseline model (DeepRanking)
│   └── driver.sh                                     # Script to run pretrained baseline
│   ├── README.md                                     # Original README w/ citation and installation instructions 
│   ├── test_clevr.py                                 # Script to run a CLEVR-domain puzzle through model.
│   └── test_yolo.py                                  # Script to run a natural-scene puzzle through the model.
├── utils                                             # Scripts to help make and debug puzzles.
└── vdp-solver                                        # See ## VDP for details.
└── vdp                                               # See ## VDP for details.
```

## Running the entire pipeline


1. Start a `p2.xlarge` AWS instance (what was used for all these experiments).
1. Download `data.zip` from the link given and extract in the project directory.
1. Initialize the conda environments in from `data/conda_envs` with `conda env create -f {conda_env.yaml}`
1. `(base) $ python utils/generate-variants.py` will run the pipeline on the variants @ `data/clevr-cleaned-variants` (~5-8 hours).
1. `(torch) $ python utils/train_puzzles.py` will train the prototype network with the correct hyperparameters.
1. Other code used to aggregate the data can be found under `analysis/`. Also, `utils/` has a lot of misc. utilities that I found helpful!


## Driver
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
![pipeline.svg](notes/vdp-pipeline-fig.svg)

## Data

The `data/` folder contains all data used by the tool-chain. This includes pretrained models, csv files, json configuration files, etc. The data directory can be downloaded from here (5.6 GB): `TODO:PROVIDE DRIVE LINK`


## VDP

The `vdp-solver` folder is a bare-bones version of the symbolic solver that is available here: `https://github.com/anonymousocean/vdpicml2021/tree/master/satbasedsolver`

The `vdp` folder contains the code to generate the IR from the VDP images using the YOLO model.  