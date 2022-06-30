CLEVR puzzle ideas:

P = Purple, G = Green, Y = Yellow 
C = Cylinder, B = Ball/Sphere, D = Cube/Dabba 
L = Large, S = small
M = Metal, R = Rubber
+ is training images
- is candidate images
formula/concept that is the discriminator is written below
lot of space separating the descriptions implies space to be created in the actual puzzle

0. Ground Truth (Alternation)

1. *Agreement
    For all cylinders, there is a sphere to its left and to its right that have the same color and material. 

    Gives correct but discriminator
    ```
    Candidate: c2
    Concept: Exists q0: cylinder!0. Forall q1: cylinder!1. Forall q2: sphere!2. And(disequal!0!2 disequal!1!2 same_material!0!2 same_material!1!2 same_material!2!0 same_material!2!1 large!0 same_color!0!2)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/agreement-final/test/0.json
    ```
    
    baseline answers:
    ```
    The scores were [0.08372046390754322, 0.11694518272584248, 0.09778277667238865].
    Best concept is @ idx 0 ie: /home/ubuntu/clevr_generate/output/images/agreement-final/CLEVR_agreement-final_000000.png
    ```
2. Alternate-color
    For each green cylinder, there is another red cylinder to its right.  
    Gives correct discriminator.
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/alternate-color/ - 2
    Candidate: c1
    Concept: Exists q0: cylinder!0. Exists q1: cylinder!1. And(right!1!0 red!0 green!1)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/alternate-color/test/0.json
    ```
    
    baseline (0 is the correct discriminator)
    ```
    The scores were [0.10248293853867547, 0.28303818579888124, 0.06616347432960112].
    Best concept is @ idx 2 ie: /home/ubuntu/clevr_generate/output/images/alternate-color-final/CLEVR_alternate-color-final_000002.png
    ```
3. Alternation
    For each cylinder there is a sphere in front of it (on its right diagonal).
    Gives correct discriminator.
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/alternation/ - 2
    Candidate: c2
    Concept: Forall q0: sphere!0. Exists q1: cylinder!1. And(front!0!1 right!0!1)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/alternation-final/test/0.json
    ```
    baseline (0 is the correct discriminator)
    ```
    The scores were [0.0009834752416819162, 0.003615889233358633, 0.0005608108864077912].
    Best concept is @ idx 2 ie: /home/ubuntu/clevr_generate/output/images/alternation-final/CLEVR_alternation-final_000002.png
    ```    
4. Aphaeresis:
    For every cube, there must be a cylinder on its left.
    Gives right discriminator. However, additional terms come with it.
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/aphaeresis/ - 2 -N=100
    Candidate: c2
    Concept: Exists q0: cylinder!0. Forall q1: cube!1. And(rubber!1 red!1 disequal!0!1 disequal!1!0 left!0!1)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/aphaeresis/test/0.json
    ```
    
    baseline (0 is the correct discriminator)
    ```
    The scores were [1.073864143486788e-05, 0.03204536612436497, 0.0012853216927321358].
    Best concept is @ idx 0 ie: /home/ubuntu/clevr_generate/output/images/aphaeresis-final/CLEVR_aphaeresis-final_000000.png
    ```    
    

5. Apocope:
    Small spheres never appear at the right edge of line.
    For every sphere, there is a cylinder in front of it (on its right diagonal)
    Gives right discriminator. However, additional terms come with it.
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/apocope-2/ - 2 -N 100
    Candidate: c2
    Concept: Exists q0: cylinder!0. Forall q1: sphere!1. And(front!0!1 rubber!0 left!1!0 disequal!0!1)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/apocope-final/test/0.json

    baseline (0 is the correct discriminator)
    ```
    The scores were [0.0018491773665049328, 0.001245392432017621, 0.0012935497221810688].
    Best concept is @ idx 1 ie: /home/ubuntu/clevr_generate/output/images/apocope/CLEVR_apocope_000001.png
    ```
6. Assimilation:
    Cylinders always have the same color as spheres.
    Gives right discriminator. However, additional terms come with it.
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/assimilation - 2 -N 100
    Candidate: c2
    Concept: Forall q0: cylinder!0. Forall q1: sphere!1. And(same_material!1!0 same_color!0!1)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/assimilation/test/0.json
    ```
    
    baseline (0 is the correct discriminator)
    ```
    The scores were [0.03590184214328308, 0.22642006936192596, 0.0880755993598855].
    Best concept is @ idx 0 ie: /home/ubuntu/clevr_generate/output/images/assimilation-final/CLEVR_assimilation-final_000000.png
    ```
7. Breaking:
    There are two spheres in a line with the same color.
    Gives right discriminator. However, additional terms come with it.
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/breaking-final/ - 2 -N 100
    Candidate: c2
    Concept: Exists q0: sphere!0. Exists q1: sphere!1. And(disequal!0!1 right!0!1 left!1!0 same_material!0!1 same_color!0!1 same_size!1!0 same_shape!0!1)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/breaking-final/test/0.json
    ```
    
    ```
    The scores were [0.04480265664539928, 0.006968274723138994, 0.01991331521609364].
    Best concept is @ idx 1 ie: /home/ubuntu/clevr_generate/output/images/breaking-final/CLEVR_breaking-final_000001.png
    ```
8. Dumbell
    Two spheres at either end of a line of objects.
    Reailized as: for each sphere, there is another sphere to its right.

    Gives partially correct discriminator. However, with `N=100`, gives a lot of other trivial or derivative discriminators as well.
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/circle-at-ends/ - 2
    Candidate: c2
    Concept: Exists q0: sphere!0. Exists q1: sphere!1. And(right!0!1)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/circle-at-ends/test/0.json
    ```

    ```
    The scores were [0.00016817378916936436, 0.0002610355574238446, 0.0008113766688020517].
    Best concept is @ idx 0 ie: /home/ubuntu/clevr_generate/output/images/circle-at-ends-final/CLEVR_circle-at-ends-final_000000.png
    ```

9. *Devoicing:
    The rightmost object is a small cylinder. 
    Gives partially correct discriminator.  
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/devoicing/ - 1 -N 100
    Candidate: c1
    Concept: Exists q0: cylinder!0. And(small!0)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/devoicing/test/0.json
    ```
    
    ```
    The scores were [3.450705118773422e-06, 0.00013387544196671332, 0.0002835447035101699].
    Best concept is @ idx 0 ie: /home/ubuntu/clevr_generate/output/images/devoicing/CLEVR_devoicing_000000.png
    ```
    
10. *Spy
    A sphere must be accomponied by a cylinder of the same color.
    
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/spy-final/ - 2 -N 100
    Candidate: c2
    Concept: Exists q0: cylinder!0. Forall q1: sphere!1. True
    Candidate Name: /home/ubuntu/clevr_inference/outputs/spy-final/test/0.json
    ```
    

    ```
    The scores were [0.00134081965949799, 0.0035369061330027198, 0.006796439964432117].
    Best concept is @ idx 0 ie: /home/ubuntu/clevr_generate/output/images/spy-final/CLEVR_spy-final_000000.png
    ```

11. Shield:
    A cylinder has a metallic cube on its left of it.
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/shield/ - 2
    Candidate: c2
    Concept: Forall q0: cube!0. Exists q1: cylinder!1. And(right!0!1 rubber!1)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/shield/test/0.json
    ```
    
    ```
    The scores were [0.00134081965949799, 0.0035369061330027198, 0.006796439964432117].
    Best concept is @ idx 0 ie: /home/ubuntu/clevr_generate/output/images/spy-final/CLEVR_spy-final_000000.png
    ```
12. Surround:
    Large rubber cylinders have small rubber spheres on its left and right 
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/surround/ - 3 --quantifier-shape=ae
    Candidate: c2
    Concept: Forall q0: sphere!0. Exists q1: cylinder!1. Exists q2: cylinder!2. And(disequal!2!0 disequal!2!1 same_shape!1!2 same_shape!2!1 left!2!0 same_size!1!2 right!0!2 right!1!2 same_material!0!2 same_material!1!2 same_material!2!1)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/surround/test/0.json
    ```
    
    ```
    The scores were [0.0093552387753079, 0.00079027446223132, 0.0009302365422021982].
    Best concept is @ idx 1 ie: /home/ubuntu/clevr_generate/output/images/surround-final/CLEVR_surround-final_000001.png
    ```

15. Three pack: Three Cylinders in the image of the same color
    ```
    ubuntu@ip-172-31-25-222:~/vdp_solver$ python scripts/vdpsolve.py ~/clevr_inference/outputs/threepack/ - 3 --quantifier-shape=ae
    Candidate: c2
    Concept: Forall q0: cylinder!0. Exists q1: cylinder!1. Forall q2: cylinder!2. And(same_color!0!1 same_color!1!2)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/threepack/test/0.json
    ```
    
    ```
    The scores were [0.2884320155416483, 0.07918868908586943, 0.10428307108514141].
    Best concept is @ idx 1 ie: /home/ubuntu/clevr_generate/output/images/threepack-final/CLEVR_threepack-final_000001.png
    ```
    
14. Balancing

15. Lengthening
16. Two of Three
17. Meeussen rule:
    A large sphere is deleted when preceeded by a large sphere => Only 1 large sphere can exist

    ```
    Candidate: c2
    Concept: Forall q0: sphere!0. Exists q1: sphere!1. And(large!1)
    Candidate Name: /home/ubuntu/clevr_inference/outputs/meeussen-final/test/0.json
    ```
    
    ```
    The scores were [0.2824105592454361, 0.19731162940900523, 0.22556453128922985].
    Best concept is @ idx 1 ie: /home/ubuntu/clevr_generate/output/images/meeussen-final/CLEVR_meeussen-final_000001.png








1. \forall x:C. \forall y:C. samecolour(x,y) [Misc]
+ CY CY CY
+ CY CY CY 
+ CY       CY`
+ CB CB
+ CR CR CR   CR
- CY CP
- CP CP


2. \forall y:O. \exists x:G. left(x,y) ["Train" variant]
+ GL P P P
+ GS P P
- G P
- P G


3. \exists x:G. \exists y:G. \forall z:B. left(x,z) and right(y,z) 
+ BG BP BY BG
+ BG BG BG
- BG BY BG
- BY BP BY BG

4. \forall x: G \exists y: P. left(y, x) [Alternation]
+ P G P G
+ P G P
- P G
- P G P G G


Az Ex Ey l(y, x) AND (l(z, x) => l(z, y))


5. \forall x:G. \exists y:G. behind(y,x) and sameshape(y,x) [Spy: Every green object has a green object behind it of same shape]

// 5. \forall x:Y. \exists y:Y. behind(y,x) and samematerial(y,x)

5. \forall x:Y. \exists y:M. front(y,x) and samesize(y,x) [Shield: Every yellow object has a metallic object in front of it. of the same size]


6. \exists x:L. \forall y:S samecolor(x,y) [Small cylinders only occur if a large cylinder is behind them]

8.  [Apocope: Small spheres never appear at the right edge of a cylinder line]
\forall x:S \exists y right(x, y) // y is to the right of x

{} () {}
{} {} ()
{} ()

() {}
{} (B)
{}  {} () {}
{} () {}  

9.  [Aphaeresis: Cubes never appear at the left edge of a line/train]
\forall x:D \exists y left(x, y)

10. [Devoicing: The rightmost object must be a Small Cylinder object.] // Everything else is 
\exists x:C \forall z: right(x, z)

[] () (S)
() [L]
(S) (S) (L)

() [] (S)
{} {} {S}
[] [] [S]

// 11. [Rhotacism: Two metallic objects must be seperated by a rubber object]
// \forall x:M \exists y:M \exists z:R disequal(x, y) and (

// 11. [Breaking: Metallic objects always occer in pairs]


* 12. [Agreement: A cylinder 'in between' two spheres of the same color inherits their color]
\forall sphere \exists sphere s.t samecolor(sphere, sphere), samecolor(sphere, cylinder)


13. [Word Final Breaking: The last sphere in a line is preceeded by another sphere in the body with the same color]
\forall sphere \exists sphere2 s.t. left(sphere2, sphere) 

() [] ()
() [] []
[] {} ()

[] () {} ()
() [] () ()
{} [] {} ()
{} [] []

14. [For a sphere to occur, it must be preceeded by a square and sucseeded by a cylinder of the same color]
\forall x:B \exists y:D \exists z:C left(x, y) and right(x, z) and samecolor(x, z)

15. [Balancing elements: Each cylinder on the left should have a circle on the right]
\forall x:C \exists y:B right(x, y) 

16. [Three or more cylinders of same color make a pack]
\forall x:C \exists y:C \exists z:C samecolor(x, y) and samecolor(y, z)

17. [Assimilation: Cylinders always have the same color as spheres]
\forall x:C \forall y:B samecolor(x, y)

{} ()
[] {} ()
() [] {}

{} () {} {}
[] {} () {}
() {} []
{} [] [] ()

18. [Lengthening: Large cylinders always surround small spheres]
\forall x:[S, B] \exists y:[L, C]  \exists z:[L, C]  left(x, y) and right(x, z)

19. Two of three large cylinders must have the same color
\forall x:C \exists y:C \exists z:C samecolor(x, y) or samecolor(y, z) or samecolor(x, z)

// 20. There are three objects which aren't cylinders
// \exists x \exists y \exists z:{}

21. The leftmost object and the rightmost object are both spheres

22. Circles behind Cylinders are always blue colored
\forall x:R \exists y:C behind(x, y) and color(x, 'blue')

23. Large metallic spheres have small rubber spheres behind them. (Exploit Guards)
\forall x:{B, M, L} \exists y:{R, S} behind(x, y) and sameshape(x, y)


24.
 
30.
Baseline NN: VDP Puzzles

30 * 6 * 4

TEMPLATES:
exists o1: k1 forall o2: k2 rel(o1,o2)
