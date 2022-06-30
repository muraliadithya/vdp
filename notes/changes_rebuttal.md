- agreement (42):
    - entire thing. \exists: sphere \exists: cylinder. samecolor fits everything and is a smaller formula. There may be other competing smaller formulae. Must check. If not, fixable by changing natural language description and re-running with -C=1
- alternation (7):
    - ml mistakes about size
- aphaeresis (31):
    - nl description is overly complicated. simpler logical concept present, namely \exists: cylinder. \exists: cube. left(cylinder, cube) (or behind(cylinder, cube). Can be re-run with -C=1. Images of the puzzle are not visually compelling. Big objects at the end make it look weird and confusing.
- apocope (50):
    - ok. puzzle can be visually better. Simpler concept exists: \exists: cylinder. \exists: sphere. right(cylinder, sphere) (or front(cylinder, sphere)). nl description too complex. Re-run with -C=1
- assimilation (42):
    - ok. re-run with -C=1. simpler concept exists: \exists: cylinder. \exists: sphere. samecolor(cylinder, sphere). nl description is fine. puzzle can be visually better
- breaking (48):
    - puzzle needs to be better visually. must be re-reun with -C=1 or fixing samecolor and -C=2
- circle-at-ends (7):
    - puzzle construction makes discriminator much smaller: \exists: sphere. \exists: sphere. disequal!0!1. 'wrong' options are too simple. re-run with -C=1 good concept [[[Try remaking -- a good concept can be \exists x1: sphere. \exists x2: sphere. \forall y: cube. left(x1, y) and right(x2, y) ]]]
- devoicing (7):
    - good concept. slightly better realisation possible. concept expresses nl description reasonably well
- meeussen (50):
    - good concept. better realisation required. needs to be re-run with 1 -C=1 (current being run with 2 -C=<something>)
- shield (7):
    - filled with incorrect ml detection. remaining do not realise the concept in a satisfactory way (there are only 7 in total)
- spy (7):
    - has to be run with smaller parameters. some ml detection mistakes. concept 'too simple'? only 7 in total.
- surround (43):
    - nl concept slightly wrong and even if corrected, simpler description of 'all spheres are behind all cylinders' exists and therefore \exists: sphere. \exists: cylinder behind(cylinder, sphere). Many times \exists: sphere. small(sphere) already works. actual reported discriminators all over the place. [[Try to scrap and replace -- can be inspired by surround but current nl description is unrealisable without an implication ]]
- threepack (18):
    - nl concept needs to be adjusted slightly (agnostic to shape and two, not three. sometimes it's all objects of a particular shape of the same color). re-run with -C=1. Must check for smaller concepts as well.
- train (50):
    - nl description needs to be modified to reflect a 'train' structure. current description specifies shape, which is not adhered to in the variants. simpler concept 'exists metal cube' with 1 quantifier exists for many concepts (~47). [[Try to remake]]


----
What to do in this case:
```
    Candidate: c0
    Concept: Forall q0: cylinder!0. Forall q1: cylinder!1. True
    Candidate Name: /home/ubuntu/vdp-tool-chain/clevr_inference/outputs/aatest/test/0.json
 ```