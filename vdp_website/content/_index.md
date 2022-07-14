---
title: VDP
type: docs
---

# Visual Discrimination Puzzles Website

{{< columns >}}
## Natural Scenes VDP Dataset

The natural scenes dataset contains `3864` visual discrimination puzzles and our solver’s performance on the same. The pipeline uses YOLOv4 as the backend neural module.


<--->

## CLEVR VDP Dataset

The CLEVR dataset contains `825` visual discrimination puzzles and our solver’s performance on the same. The pipeline uses a MaskRCNN + Attribute network (from the NS-VQA project) as the backend neural module.

<--->

## GQA VDP Dataset

The GQA VDP dataset consists `5000` puzzles that were randomly generated using the [GQA dataset](https://cs.stanford.edu/people/dorarad/gqa/index.html).  More information about the generation process can be found [here](/docs/gqa-md). 

{{< /columns >}}

{{< button relref="/docs/yolo-md" >}}Explore Natural Scenes Puzzles{{< /button >}}

{{< button relref="/docs/clevr-md" >}}Explore CLEVR Puzzles{{< /button >}}

{{< button relref="/docs/gqa-md" >}}Explore GQA Puzzles{{< /button >}}


## Image Licenses

All images in the Natural Scenes Dataset belong to their respective owners. The GQA images are part of the COCO dataset. More information about the respective licenses for these images can be found [here](https://cocodataset.org/#termsofuse).


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