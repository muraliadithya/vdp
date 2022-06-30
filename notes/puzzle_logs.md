Puzzle Logs

1. Agreement
    For all cylinders (`shapeX`), there is a sphere (`shapeY`) on either side of it.
    ```bash
    python gt-to-gen.py clevr_generate/clevr-better-puzzles-test/agreement/agreement-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/agreement/agreement.json agreement "3 4 5" "0 1 2" "- 3 -N 100"
    ```

1. Alternation
    Two alternating shapes.
    ```bash
    python gt-to-gen.py clevr_generate/clevr-better-puzzles-test/alternation/alternation-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/alternation/alternation.json aatest "3 4 5" "0 1 2" "- 2 -N 100 -C 1"
    ```

1. Alternate Color
    Two shapes with alternating colors
    ```bash
    python gt-to-gen.py clevr_generate/clevr-better-puzzles-test/alternate-color/alternate-color-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/alternate-color/alternate-color.json agtest "3 4 5" "0 1 2" "- 2 -N 100 -C 1"
    ```
1. Aphaeresis
    Cylinder (`ShapeX`) is the leftmost object.
    ```bash
    python gt-to-gen.py data/clevr-cleaned-puzzles/aphaeresis/aphaeresis-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/aphaeresis/aphaeresis.json aphaeresis "3 4 5" "0 1 2" "- 2 -N 100 -C 1"    
    ```
1. Apocope
    Cylinder (`ShapeX`) is the rightmost object.    
    ```bash
    python gt-to-gen.py data/clevr-cleaned-puzzles/apocope/apocope-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/apocope/apocope.json apocope "3 4 5" "0 1 2" "- 2 -N 100 -C 1"
    ```
1. Assimilation
    Cylinders (`ShapeX`) and spheres (`shapeY`) have the same color
    ```bash
    python gt-to-gen.py data/clevr-cleaned-puzzles/assimilation/assimilation-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/assimilation/assimilation.json assimilation "3 4 5" "0 1 2" "- 2 -N 100 -C 1"
    ```
1. Breaking
    Two spheres (`ShapeX`) have heve the same color.
    ```bash
    python gt-to-gen.py data/clevr-cleaned-puzzles/breaking/breaking-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/breaking/breaking.json breaking "3 4 5" "0 1 2" "- 2 -N 100 -C 2"
    ```
1. Circle-at-ends
    (Dumbell) There is a leftmost and a rightmost sphere.
    ```bash
    python gt-to-gen.py data/clevr-cleaned-puzzles/circle-at-ends/circle-at-ends-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/circle-at-ends/circle-at-ends.json circle-at-ends "3 4 5" "0 1 2" "- 3 -N 100 -C 2"
    ```
1. Devoicing
    Cubes are to the left of cylinders and the rightmost cylinder is small
    ```bash
    python gt-to-gen.py data/clevr-cleaned-puzzles/devoicing/devoicing-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/devoicing/devoicing.json devoicing "3 4 5" "0 1 2" "- 2 -N 100 -C 1"
    ```
1. Meeusen
    ```bash
    python gt-to-gen.py data/clevr-cleaned-puzzles/meeusen/meeusen-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/meeusen/meeusen.json meeusen "3 4 5" "0 1 2" "- 2 -N 100 -C 2"
    ```
1. Train
    There is a metal box to the left of all cylinders.
    ```bash
    python gt-to-gen.py data/clevr-cleaned-puzzles/train/train-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/train/train.json train "3 4 5" "0 1 2" "- 2 -N 100 -C 2"
    ```
1. Threepack (Not sure how to make 2 quantifiers "Forall" + too many discriminators)
    There are three cylinders
    ```bash
    python gt-to-gen.py data/clevr-cleaned-puzzles/threepack/threepack-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/threepack/threepack.json threepack "3 4 5" "0 1 2" "- 3 -N 100 -C 2 "
    ```
1. Shield
    Each Cylinder has a sphere in front of it.
    ```bash
    python gt-to-gen.py data/clevr-cleaned-puzzles/shield/shield-gt.json True
    ./driver.sh clevr_generate/clevr-better-puzzles-test/shield/shield.json shield "3 4 5" "0 1 2" "- 2 -N 100"
    ```
1. Neutralization
    * Filter results.
1. Spy
    * Filter results.
1. Partition
    
