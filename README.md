# Composing Neural Learning and Symbolic Reasoning with an Application to Visual Discrimination

This repository serves as an entry point into processing/running visual discrimination puzzles (VDPs). To get started with understanding VDP's:

* Read our paper here!
* Try the demo notebook (`demo_vdp.ipynb`) to run/make your own natural scenes VDP puzzles in <5 minutes here: <a href="https://colab.research.google.com/github/anonymousocean/anonymousocean.github.io/blob/master/demo_vdp.ipynb" target="_parent"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>
!
* To replicate our results and make vdp's, check out the installation instructions in `## Install` section.


## Structure

This repository is organized generally based on the generation/inference module used for our evaluation datasets. These modules are adapted versions of pre-existing tools. For attributions, we recommend looking at the `##Citations` section.

```bash
.
├── analysis                # Code to reproduce the figures.
│   ├── analysis.ipynb
│   └── utils.py
├── clevr_driver.py         # Entry point into making CLEVR VDPs.
├── clevr_generate          # CLEVR Generation script.
│   └── gen_render_uconfig.py   # CLEVR rendering for custom scenes.
├── clevr_inference
│   ├── collate.py          # Collate inference results to solver's input.
│   ├── ns-vqa-readme.md    # Original instructions for installation.
│   ├── reason
│   └── scene_parse
├── data                    # Data bundle. Available at Box/Email authors.
│   ├── blender-2.78c-linux-glibc219-x86_64 # Compatible blender version
│   ├── clevr-cleaned-puzzles               # CLEVR domain puzzles (+images/IR/solver_output)
│   ├── clevr-cleaned-variants              # Variants of CLEVR puzzles              
│   ├── clevr_scene_data                    # CLEVR Generation files 
│   ├── conda-envs                          # Environment replication file
│   ├── demo_images                         # Demo attribution + CC domain images
│   ├── natscene_data                       # Data for natural scenes dataset. Please contact authors for access to this dataset!
│   ├── ns-vqa-data                         # Setup files for natural scenes inference engine.
│   ├── triplet_loss_baseline-data
│   └── yolo_data                           # Setup files for darknet.
├── demo_vdp.ipynb
├── natscene_driver.py      # Entry point to making/processing natural scenes images.
├── natscene_inference
├── protonet-baseline       # Protonet baseline
├── README.md               # This file!
├── triplet_loss_baseline   # Triplet loss baseline
├── utils                   # Miscellaneous aggregation/processing scripts.
├── vdp_solver              # Our First Order Scene Logic solver (based on Z3!)
└── vdp_website             # Data/Code to remake the hugo website!
61 directories, 89 files
```

## Installation

Our instructions are specifically tuned to make it easy to replicate our results with minimal setup errors. A lot of these steps can be avoided in case of resource constraints.

1. Setup a Amazon AWS `p2.xlarge` instance. We used the `Deep Learning AMI (Ubuntu 16.04) Version 38.0 (ami-067cf9e6ac97cfb53) ` Amazon Machine Image with 105 GiB gp2 storage volume. Running all the experiments from scratch takes about 24-30 hours of compute time (less than $30). We were able to replicate all our experiments on a different server with a different GPU. However, running the `clevr_inference` module *requires* a Ubuntu 16.04 machine.
2. Clone this git repository. The homepath should look like `/home/ubuntu/vdp-tool-chain` (this *exact string* has been hardcoded in a lot of places. If you prefer running this on a local machine then you'll need to group-replace this path with your the project path).
3. Install the conda environments. There should be 4 `*-spec.txt` files in the `data/conda-envs` folder. Create a conda environment from these. That is:
```bash
$ conda create --name ns-vqa --file data/conda-envs/ns-vqa-spec.txt
$ conda create --name deep-ranking --file data/conda-envs/deep-ranking-spec.txt
$ conda create --name torch --file data/conda-envs/torch-spec.txt
$ conda create --name vdp --file data/conda-envs/vdp-spec.txt
```
4. Download the `data.zip` data bundle merge this with the contents of `vdp-tool-chain/data`.
5. The `data.zip` file contains all the extra datafiles/configs/pretrained_models needed to replicate our results.
6. Setup darknet for getting bounding boxes from YOLOv4. Running `$ make clean && make` OR `$ ./build.sh` in `natscene_inference/darknet` should suffice. I suggest reading the readme in the darknet directory for setting up a particular GPU.


## Running a CLEVR puzzle.
cd
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
 -->

To run the CLEVR puzzle:
```bash
$ python clevr_driver.py --puzzle_dir data/clevr-cleaned-puzzles/test_puzzle --examples "3 4 5 6" --candidates "0 1 2" --vdp_flags "- 2 --autotune" --use_gpu
```
More information about `vdp_flags` can be found by running `python vdp_solver/scripts/vdpsolve.py --help`. Also, make sure you don't have any environment activated with `conda deactivate` before running this!

## Running a Natural scenes puzzle.

1. Assume we want to process a puzzle defined by `eg1.png, eg2.png, eg3.png, cand1.png, cand2.png, cand3.png`.
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


## Data

The `data/` folder contains all data used by the tool-chain. This includes pretrained models, csv files, json configuration files, etc. The data directory can be downloaded here and is subject to a fair use in research agreement (8.6 GB): `TODO:PROVIDE LINK`. 


## Communication

The fastest way to reach the authors for any debugging help is by opening a GitHub issue. This also helps us document and address potential "gotchas." For data related issues, please email the authors directly.


## Common Gotcha's (Known Issues)

* The triplet_loss_baseline is written in Tensorflow/Keras. Keras documents default behavior in `~/.keras/keras.json`. The default behavior of `image_dim_ordering` is different for the triplet loss baseline so if you run into batch dimension errors, messing with the `image_dim_ordering` will help.

## Citations

The following external tools were used for this project:

* GQA Dataset
    ```plaintext
    @article{hudson2018gqa,
        title={GQA: A New Dataset for Real-World Visual Reasoning 
        and Compositional Question Answering},
        author={Hudson, Drew A and Manning, Christopher D},
        journal={Conference on Computer Vision and Pattern Recognition (CVPR)},
        year={2019}
    }
    ```

* NS-VQA inference pipeline

    Link: [`https://github.com/kexinyi/ns-vqa`](https://github.com/kexinyi/ns-vqa)
    ```plaintext
    @inproceedings{yi2018neural,
    title={Neural-symbolic vqa: Disentangling reasoning from vision and language understanding},
    author={Yi, Kexin and Wu, Jiajun and Gan, Chuang and Torralba, Antonio and Kohli, Pushmeet and Tenenbaum, Joshua B.},
    booktitle={Advances in Neural Information Processing Systems},
    pages={1039--1050},
    year={2018}
    }
    ```

* CLEVR dataset generator 

    Link: [`https://github.com/facebookresearch/clevr-dataset-gen`](https://github.com/facebookresearch/clevr-dataset-gen)
    ```plaintext
    @inproceedings{johnson2017clevr,
      title={CLEVR: A Diagnostic Dataset for Compositional Language and Elementary Visual Reasoning},
      author={Johnson, Justin and Hariharan, Bharath and van der Maaten, Laurens
              and Fei-Fei, Li and Zitnick, C Lawrence and Girshick, Ross},
      booktitle={CVPR},
      year={2017}
    }
    ```
* Deep Ranking Similarity Baseline

    Link: [`https://github.com/USCDataScience/Image-Similarity-Deep-Ranking`](https://github.com/USCDataScience/Image-Similarity-Deep-Ranking)
    - Code
        ```plaintext
        Dr. Chris Mattmann, JPL.
        Purvak Lapsiya, USC.
        ```
    - Paper
        ```plaintext
        @article{DBLP:journals/corr/WangSLRWPCW14,
          author    = {Jiang Wang and Yang Song and Thomas Leung and Chuck Rosenberg and Jingbin Wang and James Philbin and Bo Chen and Ying Wu},
          title     = {Learning Fine-grained Image Similarity with Deep Ranking},
          journal   = {CoRR},
          volume    = {abs/1404.4661},
          year      = {2014},
          url       = {http://arxiv.org/abs/1404.4661},
          archivePrefix = {arXiv},
          eprint    = {1404.4661},
          timestamp = {Tue, 08 Sep 2020 16:29:29 +0200},
          biburl    = {https://dblp.org/rec/journals/corr/WangSLRWPCW14.bib},
          bibsource = {dblp computer science bibliography, https://dblp.org}
        }
        ```
* YOLOv4

    Link: [`https://github.com/pjreddie/darknet`](https://github.com/pjreddie/darknet)
    ```plaintext
    @article{DBLP:journals/corr/abs-2011-08036,
      author    = {Chien{-}Yao Wang and
                   Alexey Bochkovskiy and
                   Hong{-}Yuan Mark Liao},
      title     = {Scaled-YOLOv4: Scaling Cross Stage Partial Network},
      journal   = {CoRR},
      volume    = {abs/2011.08036},
      year      = {2020},
      url       = {https://arxiv.org/abs/2011.08036},
      archivePrefix = {arXiv},
      eprint    = {2011.08036},
      timestamp = {Wed, 18 Nov 2020 16:48:35 +0100},
      biburl    = {https://dblp.org/rec/journals/corr/abs-2011-08036.bib},
      bibsource = {dblp computer science bibliography, https://dblp.org}
    }
    ```