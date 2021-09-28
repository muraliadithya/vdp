Transition off of AWS.
* Clean up repo + document code
* Put the data on a drive/github storage
    -    Make a new github repo for the `vdp-tool-chain` + `yolo` and upload as much code as possible there.
    -    VDP account should have all the code necessary to rerun the experiments.
* Show updated puzzles (if time)
* clevr-inference 
* clevr-ref check


----
TODOs:

* ~~Assimilation~~
    exists exists same color fits descriptin.
    Needs to be forall forall same color
    C1/2 = 2 same color 1 diff color.
    C0 (R) [R] (R)
    C1 (R) [R] (B)
    
* ~~Circle At Ends~~
    Take care of -C 2 quantifier
E E F
    E E E is fine too

* ~~Devioicing~~
    - Add a candidate image so that large
    - S*C*(small Cube | Cube < Cylinder |  )
    - %consider making this into cube* cylinder* small-cy: exists cy1 forall cube forall cy2 cube-lt-cy2, cube-lt-cy1, small-cy1
* Meeussen (Scrap?)
    - E (sphere) F () ()
    - \exist red sphere s.t. forall cylinders (cylinders = green & cylinder to right of sphere) 
    T (R) [G] [Y]
    F (R) [Y] [Y]
    F (R) [P] [P]
    T []  []  (R) [G]
    T []  (R) [G] [Y]
    T []  (R) [G] [Y] 
    exists [G] to right of ()
* Threepack
    - Dont mix large and small cylinders
    

* New Puzzle Class idea:
    - E E1 E2  l1 r2 samecolor(1, 2)
    - Partitioning as a concept !!
    
 * Change relations in `utils/gt-to-solver.py` so that instead of Front/back, we get left/right (Done). 


* ~~New README format~~:
    ```plaintext
    ## Number of puzzle
    ## Train images
    {} {} {}
    ## Test images
    {} {} {}
    ## Intented Concept
        {leave black for }
    ## Solver output
        {smallest output goes here.}
    ```
* Baseline:
    - Detectron image embedding weights -> Fully connected network (Done)
    - Check PyTorch implementaiton (Done)
    - Fully connected network -> (X ask  for name) vector similarity network
    - 

* City Scapes:
    - https://github.com/NVIDIA/semantic-segmentation
        - Setup repository (Done)
        - Setup pipeline
            - Segmentation Run (Done)
            - https://www.kaggle.com/voglinio/from-masks-to-bounding-boxes
        - Go to google maps and find a nice puzzle.
        - 