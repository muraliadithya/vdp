;Datatype of images
(declare-datatypes () ((Img
 s3 s2 s1 t2 t3 t1
)))
;Constant symbols for objects
;All values are distinct by default
(declare-datatypes () ((Obj
 s3_o1 s3_o3 s3_o2 s3_o5 s3_o4
 s2_o8 s2_o9 s2_o2 s2_o3 s2_o1 s2_o6 s2_o7 s2_o4 s2_o5 s2_o14 s2_o15 s2_o16 s2_o10 s2_o11 s2_o12 s2_o13
 s1_o3 s1_o2 s1_o1 s1_o6 s1_o5 s1_o4
 t2_o1 t2_o3 t2_o2
 t3_o6 t3_o7 t3_o4 t3_o5 t3_o2 t3_o3 t3_o1
 t1_o1 t1_o2 t1_o3 t1_o4 t1_o5 t1_o6 t1_o7 t1_o8
;extraneous objects
 fork cup sofa laptop bowl dog bed cat nullobj book tvmonitor chair vase
)))
;Membership of objects in images
;Extraneous objects belong to no images
(define-fun inImg ((x Obj )(y Img)) Bool
(or
(and (= x s3_o1) (= y s3))
(and (= x s3_o3) (= y s3))
(and (= x s3_o2) (= y s3))
(and (= x s3_o5) (= y s3))
(and (= x s3_o4) (= y s3))
(and (= x s2_o8) (= y s2))
(and (= x s2_o9) (= y s2))
(and (= x s2_o2) (= y s2))
(and (= x s2_o3) (= y s2))
(and (= x s2_o1) (= y s2))
(and (= x s2_o6) (= y s2))
(and (= x s2_o7) (= y s2))
(and (= x s2_o4) (= y s2))
(and (= x s2_o5) (= y s2))
(and (= x s2_o14) (= y s2))
(and (= x s2_o15) (= y s2))
(and (= x s2_o16) (= y s2))
(and (= x s2_o10) (= y s2))
(and (= x s2_o11) (= y s2))
(and (= x s2_o12) (= y s2))
(and (= x s2_o13) (= y s2))
(and (= x s1_o3) (= y s1))
(and (= x s1_o2) (= y s1))
(and (= x s1_o1) (= y s1))
(and (= x s1_o6) (= y s1))
(and (= x s1_o5) (= y s1))
(and (= x s1_o4) (= y s1))
(and (= x t2_o1) (= y t2))
(and (= x t2_o3) (= y t2))
(and (= x t2_o2) (= y t2))
(and (= x t3_o6) (= y t3))
(and (= x t3_o7) (= y t3))
(and (= x t3_o4) (= y t3))
(and (= x t3_o5) (= y t3))
(and (= x t3_o2) (= y t3))
(and (= x t3_o3) (= y t3))
(and (= x t3_o1) (= y t3))
(and (= x t1_o1) (= y t1))
(and (= x t1_o2) (= y t1))
(and (= x t1_o3) (= y t1))
(and (= x t1_o4) (= y t1))
(and (= x t1_o5) (= y t1))
(and (= x t1_o6) (= y t1))
(and (= x t1_o7) (= y t1))
(and (= x t1_o8) (= y t1))
))
;Datatype of relations--made into a uniform arity
(declare-datatypes () ((Rels neq labelOf sameLabel toLeft toRight above below within)))
;Relation evaluator
;All relations are made into a uniform arity using 'nullobj' as a default argument
(define-fun re ((r Rels)(a Obj)(b Obj)) Bool
(or
(and (= r neq) (not (= b a)))
(and (= r labelOf) (= a s3_o1) (= b book))
(and (= r labelOf) (= a s3_o3) (= b sofa))
(and (= r labelOf) (= a s3_o2) (= b bed))
(and (= r labelOf) (= a s3_o5) (= b dog))
(and (= r labelOf) (= a s3_o4) (= b sofa))
(and (= r labelOf) (= a s2_o8) (= b book))
(and (= r labelOf) (= a s2_o9) (= b book))
(and (= r labelOf) (= a s2_o2) (= b book))
(and (= r labelOf) (= a s2_o3) (= b book))
(and (= r labelOf) (= a s2_o1) (= b vase))
(and (= r labelOf) (= a s2_o6) (= b book))
(and (= r labelOf) (= a s2_o7) (= b book))
(and (= r labelOf) (= a s2_o4) (= b book))
(and (= r labelOf) (= a s2_o5) (= b book))
(and (= r labelOf) (= a s2_o14) (= b cup))
(and (= r labelOf) (= a s2_o15) (= b dog))
(and (= r labelOf) (= a s2_o16) (= b cat))
(and (= r labelOf) (= a s2_o10) (= b tvmonitor))
(and (= r labelOf) (= a s2_o11) (= b sofa))
(and (= r labelOf) (= a s2_o12) (= b sofa))
(and (= r labelOf) (= a s2_o13) (= b bowl))
(and (= r labelOf) (= a s1_o3) (= b dog))
(and (= r labelOf) (= a s1_o2) (= b dog))
(and (= r labelOf) (= a s1_o1) (= b sofa))
(and (= r labelOf) (= a s1_o6) (= b dog))
(and (= r labelOf) (= a s1_o5) (= b dog))
(and (= r labelOf) (= a s1_o4) (= b dog))
(and (= r labelOf) (= a t2_o1) (= b sofa))
(and (= r labelOf) (= a t2_o3) (= b dog))
(and (= r labelOf) (= a t2_o2) (= b dog))
(and (= r labelOf) (= a t3_o6) (= b dog))
(and (= r labelOf) (= a t3_o7) (= b dog))
(and (= r labelOf) (= a t3_o4) (= b chair))
(and (= r labelOf) (= a t3_o5) (= b fork))
(and (= r labelOf) (= a t3_o2) (= b chair))
(and (= r labelOf) (= a t3_o3) (= b sofa))
(and (= r labelOf) (= a t3_o1) (= b sofa))
(and (= r labelOf) (= a t1_o1) (= b book))
(and (= r labelOf) (= a t1_o2) (= b book))
(and (= r labelOf) (= a t1_o3) (= b book))
(and (= r labelOf) (= a t1_o4) (= b book))
(and (= r labelOf) (= a t1_o5) (= b laptop))
(and (= r labelOf) (= a t1_o6) (= b tvmonitor))
(and (= r labelOf) (= a t1_o7) (= b sofa))
(and (= r labelOf) (= a t1_o8) (= b cat))

(and (= r sameLabel) (= a s3_o1) (= b s3_o1))
(and (= r sameLabel) (= a s3_o3) (= b s3_o3))
(and (= r sameLabel) (= a s3_o3) (= b s3_o4))
(and (= r sameLabel) (= a s3_o2) (= b s3_o2))
(and (= r sameLabel) (= a s3_o5) (= b s3_o5))
(and (= r sameLabel) (= a s3_o4) (= b s3_o3))
(and (= r sameLabel) (= a s3_o4) (= b s3_o4))
(and (= r sameLabel) (= a s2_o8) (= b s2_o8))
(and (= r sameLabel) (= a s2_o8) (= b s2_o9))
(and (= r sameLabel) (= a s2_o8) (= b s2_o2))
(and (= r sameLabel) (= a s2_o8) (= b s2_o3))
(and (= r sameLabel) (= a s2_o8) (= b s2_o6))
(and (= r sameLabel) (= a s2_o8) (= b s2_o7))
(and (= r sameLabel) (= a s2_o8) (= b s2_o4))
(and (= r sameLabel) (= a s2_o8) (= b s2_o5))
(and (= r sameLabel) (= a s2_o9) (= b s2_o8))
(and (= r sameLabel) (= a s2_o9) (= b s2_o9))
(and (= r sameLabel) (= a s2_o9) (= b s2_o2))
(and (= r sameLabel) (= a s2_o9) (= b s2_o3))
(and (= r sameLabel) (= a s2_o9) (= b s2_o6))
(and (= r sameLabel) (= a s2_o9) (= b s2_o7))
(and (= r sameLabel) (= a s2_o9) (= b s2_o4))
(and (= r sameLabel) (= a s2_o9) (= b s2_o5))
(and (= r sameLabel) (= a s2_o2) (= b s2_o8))
(and (= r sameLabel) (= a s2_o2) (= b s2_o9))
(and (= r sameLabel) (= a s2_o2) (= b s2_o2))
(and (= r sameLabel) (= a s2_o2) (= b s2_o3))
(and (= r sameLabel) (= a s2_o2) (= b s2_o6))
(and (= r sameLabel) (= a s2_o2) (= b s2_o7))
(and (= r sameLabel) (= a s2_o2) (= b s2_o4))
(and (= r sameLabel) (= a s2_o2) (= b s2_o5))
(and (= r sameLabel) (= a s2_o3) (= b s2_o8))
(and (= r sameLabel) (= a s2_o3) (= b s2_o9))
(and (= r sameLabel) (= a s2_o3) (= b s2_o2))
(and (= r sameLabel) (= a s2_o3) (= b s2_o3))
(and (= r sameLabel) (= a s2_o3) (= b s2_o6))
(and (= r sameLabel) (= a s2_o3) (= b s2_o7))
(and (= r sameLabel) (= a s2_o3) (= b s2_o4))
(and (= r sameLabel) (= a s2_o3) (= b s2_o5))
(and (= r sameLabel) (= a s2_o1) (= b s2_o1))
(and (= r sameLabel) (= a s2_o6) (= b s2_o8))
(and (= r sameLabel) (= a s2_o6) (= b s2_o9))
(and (= r sameLabel) (= a s2_o6) (= b s2_o2))
(and (= r sameLabel) (= a s2_o6) (= b s2_o3))
(and (= r sameLabel) (= a s2_o6) (= b s2_o6))
(and (= r sameLabel) (= a s2_o6) (= b s2_o7))
(and (= r sameLabel) (= a s2_o6) (= b s2_o4))
(and (= r sameLabel) (= a s2_o6) (= b s2_o5))
(and (= r sameLabel) (= a s2_o7) (= b s2_o8))
(and (= r sameLabel) (= a s2_o7) (= b s2_o9))
(and (= r sameLabel) (= a s2_o7) (= b s2_o2))
(and (= r sameLabel) (= a s2_o7) (= b s2_o3))
(and (= r sameLabel) (= a s2_o7) (= b s2_o6))
(and (= r sameLabel) (= a s2_o7) (= b s2_o7))
(and (= r sameLabel) (= a s2_o7) (= b s2_o4))
(and (= r sameLabel) (= a s2_o7) (= b s2_o5))
(and (= r sameLabel) (= a s2_o4) (= b s2_o8))
(and (= r sameLabel) (= a s2_o4) (= b s2_o9))
(and (= r sameLabel) (= a s2_o4) (= b s2_o2))
(and (= r sameLabel) (= a s2_o4) (= b s2_o3))
(and (= r sameLabel) (= a s2_o4) (= b s2_o6))
(and (= r sameLabel) (= a s2_o4) (= b s2_o7))
(and (= r sameLabel) (= a s2_o4) (= b s2_o4))
(and (= r sameLabel) (= a s2_o4) (= b s2_o5))
(and (= r sameLabel) (= a s2_o5) (= b s2_o8))
(and (= r sameLabel) (= a s2_o5) (= b s2_o9))
(and (= r sameLabel) (= a s2_o5) (= b s2_o2))
(and (= r sameLabel) (= a s2_o5) (= b s2_o3))
(and (= r sameLabel) (= a s2_o5) (= b s2_o6))
(and (= r sameLabel) (= a s2_o5) (= b s2_o7))
(and (= r sameLabel) (= a s2_o5) (= b s2_o4))
(and (= r sameLabel) (= a s2_o5) (= b s2_o5))
(and (= r sameLabel) (= a s2_o14) (= b s2_o14))
(and (= r sameLabel) (= a s2_o15) (= b s2_o15))
(and (= r sameLabel) (= a s2_o16) (= b s2_o16))
(and (= r sameLabel) (= a s2_o10) (= b s2_o10))
(and (= r sameLabel) (= a s2_o11) (= b s2_o11))
(and (= r sameLabel) (= a s2_o11) (= b s2_o12))
(and (= r sameLabel) (= a s2_o12) (= b s2_o11))
(and (= r sameLabel) (= a s2_o12) (= b s2_o12))
(and (= r sameLabel) (= a s2_o13) (= b s2_o13))
(and (= r sameLabel) (= a s1_o3) (= b s1_o3))
(and (= r sameLabel) (= a s1_o3) (= b s1_o2))
(and (= r sameLabel) (= a s1_o3) (= b s1_o6))
(and (= r sameLabel) (= a s1_o3) (= b s1_o5))
(and (= r sameLabel) (= a s1_o3) (= b s1_o4))
(and (= r sameLabel) (= a s1_o2) (= b s1_o3))
(and (= r sameLabel) (= a s1_o2) (= b s1_o2))
(and (= r sameLabel) (= a s1_o2) (= b s1_o6))
(and (= r sameLabel) (= a s1_o2) (= b s1_o5))
(and (= r sameLabel) (= a s1_o2) (= b s1_o4))
(and (= r sameLabel) (= a s1_o1) (= b s1_o1))
(and (= r sameLabel) (= a s1_o6) (= b s1_o3))
(and (= r sameLabel) (= a s1_o6) (= b s1_o2))
(and (= r sameLabel) (= a s1_o6) (= b s1_o6))
(and (= r sameLabel) (= a s1_o6) (= b s1_o5))
(and (= r sameLabel) (= a s1_o6) (= b s1_o4))
(and (= r sameLabel) (= a s1_o5) (= b s1_o3))
(and (= r sameLabel) (= a s1_o5) (= b s1_o2))
(and (= r sameLabel) (= a s1_o5) (= b s1_o6))
(and (= r sameLabel) (= a s1_o5) (= b s1_o5))
(and (= r sameLabel) (= a s1_o5) (= b s1_o4))
(and (= r sameLabel) (= a s1_o4) (= b s1_o3))
(and (= r sameLabel) (= a s1_o4) (= b s1_o2))
(and (= r sameLabel) (= a s1_o4) (= b s1_o6))
(and (= r sameLabel) (= a s1_o4) (= b s1_o5))
(and (= r sameLabel) (= a s1_o4) (= b s1_o4))
(and (= r sameLabel) (= a t2_o1) (= b t2_o1))
(and (= r sameLabel) (= a t2_o3) (= b t2_o3))
(and (= r sameLabel) (= a t2_o3) (= b t2_o2))
(and (= r sameLabel) (= a t2_o2) (= b t2_o3))
(and (= r sameLabel) (= a t2_o2) (= b t2_o2))
(and (= r sameLabel) (= a t3_o6) (= b t3_o6))
(and (= r sameLabel) (= a t3_o6) (= b t3_o7))
(and (= r sameLabel) (= a t3_o7) (= b t3_o6))
(and (= r sameLabel) (= a t3_o7) (= b t3_o7))
(and (= r sameLabel) (= a t3_o4) (= b t3_o4))
(and (= r sameLabel) (= a t3_o4) (= b t3_o2))
(and (= r sameLabel) (= a t3_o5) (= b t3_o5))
(and (= r sameLabel) (= a t3_o2) (= b t3_o4))
(and (= r sameLabel) (= a t3_o2) (= b t3_o2))
(and (= r sameLabel) (= a t3_o3) (= b t3_o3))
(and (= r sameLabel) (= a t3_o3) (= b t3_o1))
(and (= r sameLabel) (= a t3_o1) (= b t3_o3))
(and (= r sameLabel) (= a t3_o1) (= b t3_o1))
(and (= r sameLabel) (= a t1_o1) (= b t1_o1))
(and (= r sameLabel) (= a t1_o1) (= b t1_o2))
(and (= r sameLabel) (= a t1_o1) (= b t1_o3))
(and (= r sameLabel) (= a t1_o1) (= b t1_o4))
(and (= r sameLabel) (= a t1_o2) (= b t1_o1))
(and (= r sameLabel) (= a t1_o2) (= b t1_o2))
(and (= r sameLabel) (= a t1_o2) (= b t1_o3))
(and (= r sameLabel) (= a t1_o2) (= b t1_o4))
(and (= r sameLabel) (= a t1_o3) (= b t1_o1))
(and (= r sameLabel) (= a t1_o3) (= b t1_o2))
(and (= r sameLabel) (= a t1_o3) (= b t1_o3))
(and (= r sameLabel) (= a t1_o3) (= b t1_o4))
(and (= r sameLabel) (= a t1_o4) (= b t1_o1))
(and (= r sameLabel) (= a t1_o4) (= b t1_o2))
(and (= r sameLabel) (= a t1_o4) (= b t1_o3))
(and (= r sameLabel) (= a t1_o4) (= b t1_o4))
(and (= r sameLabel) (= a t1_o5) (= b t1_o5))
(and (= r sameLabel) (= a t1_o6) (= b t1_o6))
(and (= r sameLabel) (= a t1_o7) (= b t1_o7))
(and (= r sameLabel) (= a t1_o8) (= b t1_o8))

(and (= r toLeft) (= a s3_o1) (= b s3_o2))
(and (= r toLeft) (= a s3_o1) (= b s3_o4))
(and (= r toLeft) (= a s3_o5) (= b s3_o4))
(and (= r toLeft) (= a s2_o8) (= b s2_o9))
(and (= r toLeft) (= a s2_o8) (= b s2_o2))
(and (= r toLeft) (= a s2_o8) (= b s2_o3))
(and (= r toLeft) (= a s2_o8) (= b s2_o1))
(and (= r toLeft) (= a s2_o8) (= b s2_o6))
(and (= r toLeft) (= a s2_o8) (= b s2_o4))
(and (= r toLeft) (= a s2_o8) (= b s2_o5))
(and (= r toLeft) (= a s2_o9) (= b s2_o1))
(and (= r toLeft) (= a s2_o9) (= b s2_o5))
(and (= r toLeft) (= a s2_o2) (= b s2_o3))
(and (= r toLeft) (= a s2_o2) (= b s2_o1))
(and (= r toLeft) (= a s2_o2) (= b s2_o6))
(and (= r toLeft) (= a s2_o2) (= b s2_o5))
(and (= r toLeft) (= a s2_o3) (= b s2_o1))
(and (= r toLeft) (= a s2_o3) (= b s2_o5))
(and (= r toLeft) (= a s2_o6) (= b s2_o1))
(and (= r toLeft) (= a s2_o6) (= b s2_o5))
(and (= r toLeft) (= a s2_o7) (= b s2_o9))
(and (= r toLeft) (= a s2_o7) (= b s2_o2))
(and (= r toLeft) (= a s2_o7) (= b s2_o3))
(and (= r toLeft) (= a s2_o7) (= b s2_o1))
(and (= r toLeft) (= a s2_o7) (= b s2_o6))
(and (= r toLeft) (= a s2_o7) (= b s2_o4))
(and (= r toLeft) (= a s2_o7) (= b s2_o5))
(and (= r toLeft) (= a s2_o4) (= b s2_o9))
(and (= r toLeft) (= a s2_o4) (= b s2_o3))
(and (= r toLeft) (= a s2_o4) (= b s2_o1))
(and (= r toLeft) (= a s2_o4) (= b s2_o6))
(and (= r toLeft) (= a s2_o4) (= b s2_o5))
(and (= r toLeft) (= a s2_o5) (= b s2_o1))
(and (= r toLeft) (= a s2_o14) (= b s2_o8))
(and (= r toLeft) (= a s2_o14) (= b s2_o9))
(and (= r toLeft) (= a s2_o14) (= b s2_o2))
(and (= r toLeft) (= a s2_o14) (= b s2_o3))
(and (= r toLeft) (= a s2_o14) (= b s2_o1))
(and (= r toLeft) (= a s2_o14) (= b s2_o6))
(and (= r toLeft) (= a s2_o14) (= b s2_o7))
(and (= r toLeft) (= a s2_o14) (= b s2_o4))
(and (= r toLeft) (= a s2_o14) (= b s2_o5))
(and (= r toLeft) (= a s2_o14) (= b s2_o15))
(and (= r toLeft) (= a s2_o16) (= b s2_o8))
(and (= r toLeft) (= a s2_o16) (= b s2_o9))
(and (= r toLeft) (= a s2_o16) (= b s2_o2))
(and (= r toLeft) (= a s2_o16) (= b s2_o3))
(and (= r toLeft) (= a s2_o16) (= b s2_o1))
(and (= r toLeft) (= a s2_o16) (= b s2_o6))
(and (= r toLeft) (= a s2_o16) (= b s2_o7))
(and (= r toLeft) (= a s2_o16) (= b s2_o4))
(and (= r toLeft) (= a s2_o16) (= b s2_o5))
(and (= r toLeft) (= a s2_o16) (= b s2_o14))
(and (= r toLeft) (= a s2_o16) (= b s2_o15))
(and (= r toLeft) (= a s2_o16) (= b s2_o10))
(and (= r toLeft) (= a s2_o16) (= b s2_o13))
(and (= r toLeft) (= a s2_o10) (= b s2_o8))
(and (= r toLeft) (= a s2_o10) (= b s2_o9))
(and (= r toLeft) (= a s2_o10) (= b s2_o2))
(and (= r toLeft) (= a s2_o10) (= b s2_o3))
(and (= r toLeft) (= a s2_o10) (= b s2_o1))
(and (= r toLeft) (= a s2_o10) (= b s2_o6))
(and (= r toLeft) (= a s2_o10) (= b s2_o7))
(and (= r toLeft) (= a s2_o10) (= b s2_o4))
(and (= r toLeft) (= a s2_o10) (= b s2_o5))
(and (= r toLeft) (= a s2_o10) (= b s2_o15))
(and (= r toLeft) (= a s2_o11) (= b s2_o8))
(and (= r toLeft) (= a s2_o11) (= b s2_o9))
(and (= r toLeft) (= a s2_o11) (= b s2_o2))
(and (= r toLeft) (= a s2_o11) (= b s2_o3))
(and (= r toLeft) (= a s2_o11) (= b s2_o1))
(and (= r toLeft) (= a s2_o11) (= b s2_o6))
(and (= r toLeft) (= a s2_o11) (= b s2_o7))
(and (= r toLeft) (= a s2_o11) (= b s2_o4))
(and (= r toLeft) (= a s2_o11) (= b s2_o5))
(and (= r toLeft) (= a s2_o11) (= b s2_o15))
(and (= r toLeft) (= a s2_o12) (= b s2_o8))
(and (= r toLeft) (= a s2_o12) (= b s2_o9))
(and (= r toLeft) (= a s2_o12) (= b s2_o2))
(and (= r toLeft) (= a s2_o12) (= b s2_o3))
(and (= r toLeft) (= a s2_o12) (= b s2_o1))
(and (= r toLeft) (= a s2_o12) (= b s2_o6))
(and (= r toLeft) (= a s2_o12) (= b s2_o7))
(and (= r toLeft) (= a s2_o12) (= b s2_o4))
(and (= r toLeft) (= a s2_o12) (= b s2_o5))
(and (= r toLeft) (= a s2_o12) (= b s2_o14))
(and (= r toLeft) (= a s2_o12) (= b s2_o15))
(and (= r toLeft) (= a s2_o13) (= b s2_o8))
(and (= r toLeft) (= a s2_o13) (= b s2_o9))
(and (= r toLeft) (= a s2_o13) (= b s2_o2))
(and (= r toLeft) (= a s2_o13) (= b s2_o3))
(and (= r toLeft) (= a s2_o13) (= b s2_o1))
(and (= r toLeft) (= a s2_o13) (= b s2_o6))
(and (= r toLeft) (= a s2_o13) (= b s2_o7))
(and (= r toLeft) (= a s2_o13) (= b s2_o4))
(and (= r toLeft) (= a s2_o13) (= b s2_o5))
(and (= r toLeft) (= a s2_o13) (= b s2_o15))
(and (= r toLeft) (= a s1_o6) (= b s1_o3))
(and (= r toLeft) (= a s1_o6) (= b s1_o4))
(and (= r toLeft) (= a s1_o5) (= b s1_o3))
(and (= r toLeft) (= a s1_o5) (= b s1_o2))
(and (= r toLeft) (= a s1_o5) (= b s1_o4))
(and (= r toLeft) (= a t3_o6) (= b t3_o7))
(and (= r toLeft) (= a t3_o6) (= b t3_o4))
(and (= r toLeft) (= a t3_o6) (= b t3_o5))
(and (= r toLeft) (= a t3_o6) (= b t3_o3))
(and (= r toLeft) (= a t3_o5) (= b t3_o7))
(and (= r toLeft) (= a t3_o5) (= b t3_o4))
(and (= r toLeft) (= a t3_o5) (= b t3_o3))
(and (= r toLeft) (= a t3_o2) (= b t3_o7))
(and (= r toLeft) (= a t3_o2) (= b t3_o4))
(and (= r toLeft) (= a t3_o2) (= b t3_o3))
(and (= r toLeft) (= a t3_o1) (= b t3_o7))
(and (= r toLeft) (= a t3_o1) (= b t3_o4))
(and (= r toLeft) (= a t3_o1) (= b t3_o3))
(and (= r toLeft) (= a t1_o1) (= b t1_o2))
(and (= r toLeft) (= a t1_o1) (= b t1_o3))
(and (= r toLeft) (= a t1_o1) (= b t1_o7))
(and (= r toLeft) (= a t1_o1) (= b t1_o8))
(and (= r toLeft) (= a t1_o2) (= b t1_o8))
(and (= r toLeft) (= a t1_o3) (= b t1_o8))
(and (= r toLeft) (= a t1_o4) (= b t1_o1))
(and (= r toLeft) (= a t1_o4) (= b t1_o2))
(and (= r toLeft) (= a t1_o4) (= b t1_o3))
(and (= r toLeft) (= a t1_o4) (= b t1_o5))
(and (= r toLeft) (= a t1_o4) (= b t1_o7))
(and (= r toLeft) (= a t1_o4) (= b t1_o8))
(and (= r toLeft) (= a t1_o5) (= b t1_o2))
(and (= r toLeft) (= a t1_o5) (= b t1_o3))
(and (= r toLeft) (= a t1_o5) (= b t1_o8))
(and (= r toLeft) (= a t1_o6) (= b t1_o1))
(and (= r toLeft) (= a t1_o6) (= b t1_o2))
(and (= r toLeft) (= a t1_o6) (= b t1_o3))
(and (= r toLeft) (= a t1_o6) (= b t1_o5))
(and (= r toLeft) (= a t1_o6) (= b t1_o7))
(and (= r toLeft) (= a t1_o6) (= b t1_o8))

(and (= r toRight) (= a s3_o2) (= b s3_o1))
(and (= r toRight) (= a s3_o4) (= b s3_o1))
(and (= r toRight) (= a s3_o4) (= b s3_o5))
(and (= r toRight) (= a s2_o8) (= b s2_o14))
(and (= r toRight) (= a s2_o8) (= b s2_o16))
(and (= r toRight) (= a s2_o8) (= b s2_o10))
(and (= r toRight) (= a s2_o8) (= b s2_o11))
(and (= r toRight) (= a s2_o8) (= b s2_o12))
(and (= r toRight) (= a s2_o8) (= b s2_o13))
(and (= r toRight) (= a s2_o9) (= b s2_o8))
(and (= r toRight) (= a s2_o9) (= b s2_o7))
(and (= r toRight) (= a s2_o9) (= b s2_o4))
(and (= r toRight) (= a s2_o9) (= b s2_o14))
(and (= r toRight) (= a s2_o9) (= b s2_o16))
(and (= r toRight) (= a s2_o9) (= b s2_o10))
(and (= r toRight) (= a s2_o9) (= b s2_o11))
(and (= r toRight) (= a s2_o9) (= b s2_o12))
(and (= r toRight) (= a s2_o9) (= b s2_o13))
(and (= r toRight) (= a s2_o2) (= b s2_o8))
(and (= r toRight) (= a s2_o2) (= b s2_o7))
(and (= r toRight) (= a s2_o2) (= b s2_o14))
(and (= r toRight) (= a s2_o2) (= b s2_o16))
(and (= r toRight) (= a s2_o2) (= b s2_o10))
(and (= r toRight) (= a s2_o2) (= b s2_o11))
(and (= r toRight) (= a s2_o2) (= b s2_o12))
(and (= r toRight) (= a s2_o2) (= b s2_o13))
(and (= r toRight) (= a s2_o3) (= b s2_o8))
(and (= r toRight) (= a s2_o3) (= b s2_o2))
(and (= r toRight) (= a s2_o3) (= b s2_o7))
(and (= r toRight) (= a s2_o3) (= b s2_o4))
(and (= r toRight) (= a s2_o3) (= b s2_o14))
(and (= r toRight) (= a s2_o3) (= b s2_o16))
(and (= r toRight) (= a s2_o3) (= b s2_o10))
(and (= r toRight) (= a s2_o3) (= b s2_o11))
(and (= r toRight) (= a s2_o3) (= b s2_o12))
(and (= r toRight) (= a s2_o3) (= b s2_o13))
(and (= r toRight) (= a s2_o1) (= b s2_o8))
(and (= r toRight) (= a s2_o1) (= b s2_o9))
(and (= r toRight) (= a s2_o1) (= b s2_o2))
(and (= r toRight) (= a s2_o1) (= b s2_o3))
(and (= r toRight) (= a s2_o1) (= b s2_o6))
(and (= r toRight) (= a s2_o1) (= b s2_o7))
(and (= r toRight) (= a s2_o1) (= b s2_o4))
(and (= r toRight) (= a s2_o1) (= b s2_o5))
(and (= r toRight) (= a s2_o1) (= b s2_o14))
(and (= r toRight) (= a s2_o1) (= b s2_o16))
(and (= r toRight) (= a s2_o1) (= b s2_o10))
(and (= r toRight) (= a s2_o1) (= b s2_o11))
(and (= r toRight) (= a s2_o1) (= b s2_o12))
(and (= r toRight) (= a s2_o1) (= b s2_o13))
(and (= r toRight) (= a s2_o6) (= b s2_o8))
(and (= r toRight) (= a s2_o6) (= b s2_o2))
(and (= r toRight) (= a s2_o6) (= b s2_o7))
(and (= r toRight) (= a s2_o6) (= b s2_o4))
(and (= r toRight) (= a s2_o6) (= b s2_o14))
(and (= r toRight) (= a s2_o6) (= b s2_o16))
(and (= r toRight) (= a s2_o6) (= b s2_o10))
(and (= r toRight) (= a s2_o6) (= b s2_o11))
(and (= r toRight) (= a s2_o6) (= b s2_o12))
(and (= r toRight) (= a s2_o6) (= b s2_o13))
(and (= r toRight) (= a s2_o7) (= b s2_o14))
(and (= r toRight) (= a s2_o7) (= b s2_o16))
(and (= r toRight) (= a s2_o7) (= b s2_o10))
(and (= r toRight) (= a s2_o7) (= b s2_o11))
(and (= r toRight) (= a s2_o7) (= b s2_o12))
(and (= r toRight) (= a s2_o7) (= b s2_o13))
(and (= r toRight) (= a s2_o4) (= b s2_o8))
(and (= r toRight) (= a s2_o4) (= b s2_o7))
(and (= r toRight) (= a s2_o4) (= b s2_o14))
(and (= r toRight) (= a s2_o4) (= b s2_o16))
(and (= r toRight) (= a s2_o4) (= b s2_o10))
(and (= r toRight) (= a s2_o4) (= b s2_o11))
(and (= r toRight) (= a s2_o4) (= b s2_o12))
(and (= r toRight) (= a s2_o4) (= b s2_o13))
(and (= r toRight) (= a s2_o5) (= b s2_o8))
(and (= r toRight) (= a s2_o5) (= b s2_o9))
(and (= r toRight) (= a s2_o5) (= b s2_o2))
(and (= r toRight) (= a s2_o5) (= b s2_o3))
(and (= r toRight) (= a s2_o5) (= b s2_o6))
(and (= r toRight) (= a s2_o5) (= b s2_o7))
(and (= r toRight) (= a s2_o5) (= b s2_o4))
(and (= r toRight) (= a s2_o5) (= b s2_o14))
(and (= r toRight) (= a s2_o5) (= b s2_o16))
(and (= r toRight) (= a s2_o5) (= b s2_o10))
(and (= r toRight) (= a s2_o5) (= b s2_o11))
(and (= r toRight) (= a s2_o5) (= b s2_o12))
(and (= r toRight) (= a s2_o5) (= b s2_o13))
(and (= r toRight) (= a s2_o14) (= b s2_o16))
(and (= r toRight) (= a s2_o14) (= b s2_o12))
(and (= r toRight) (= a s2_o15) (= b s2_o14))
(and (= r toRight) (= a s2_o15) (= b s2_o16))
(and (= r toRight) (= a s2_o15) (= b s2_o10))
(and (= r toRight) (= a s2_o15) (= b s2_o11))
(and (= r toRight) (= a s2_o15) (= b s2_o12))
(and (= r toRight) (= a s2_o15) (= b s2_o13))
(and (= r toRight) (= a s2_o10) (= b s2_o16))
(and (= r toRight) (= a s2_o13) (= b s2_o16))
(and (= r toRight) (= a s1_o3) (= b s1_o6))
(and (= r toRight) (= a s1_o3) (= b s1_o5))
(and (= r toRight) (= a s1_o2) (= b s1_o5))
(and (= r toRight) (= a s1_o4) (= b s1_o6))
(and (= r toRight) (= a s1_o4) (= b s1_o5))
(and (= r toRight) (= a t3_o7) (= b t3_o6))
(and (= r toRight) (= a t3_o7) (= b t3_o5))
(and (= r toRight) (= a t3_o7) (= b t3_o2))
(and (= r toRight) (= a t3_o7) (= b t3_o1))
(and (= r toRight) (= a t3_o4) (= b t3_o6))
(and (= r toRight) (= a t3_o4) (= b t3_o5))
(and (= r toRight) (= a t3_o4) (= b t3_o2))
(and (= r toRight) (= a t3_o4) (= b t3_o1))
(and (= r toRight) (= a t3_o5) (= b t3_o6))
(and (= r toRight) (= a t3_o3) (= b t3_o6))
(and (= r toRight) (= a t3_o3) (= b t3_o5))
(and (= r toRight) (= a t3_o3) (= b t3_o2))
(and (= r toRight) (= a t3_o3) (= b t3_o1))
(and (= r toRight) (= a t1_o1) (= b t1_o4))
(and (= r toRight) (= a t1_o1) (= b t1_o6))
(and (= r toRight) (= a t1_o2) (= b t1_o1))
(and (= r toRight) (= a t1_o2) (= b t1_o4))
(and (= r toRight) (= a t1_o2) (= b t1_o5))
(and (= r toRight) (= a t1_o2) (= b t1_o6))
(and (= r toRight) (= a t1_o3) (= b t1_o1))
(and (= r toRight) (= a t1_o3) (= b t1_o4))
(and (= r toRight) (= a t1_o3) (= b t1_o5))
(and (= r toRight) (= a t1_o3) (= b t1_o6))
(and (= r toRight) (= a t1_o5) (= b t1_o4))
(and (= r toRight) (= a t1_o5) (= b t1_o6))
(and (= r toRight) (= a t1_o7) (= b t1_o1))
(and (= r toRight) (= a t1_o7) (= b t1_o4))
(and (= r toRight) (= a t1_o7) (= b t1_o6))
(and (= r toRight) (= a t1_o8) (= b t1_o1))
(and (= r toRight) (= a t1_o8) (= b t1_o2))
(and (= r toRight) (= a t1_o8) (= b t1_o3))
(and (= r toRight) (= a t1_o8) (= b t1_o4))
(and (= r toRight) (= a t1_o8) (= b t1_o5))
(and (= r toRight) (= a t1_o8) (= b t1_o6))

(and (= r above) (= a s3_o5) (= b s3_o1))
(and (= r above) (= a s2_o8) (= b s2_o14))
(and (= r above) (= a s2_o8) (= b s2_o15))
(and (= r above) (= a s2_o8) (= b s2_o11))
(and (= r above) (= a s2_o8) (= b s2_o13))
(and (= r above) (= a s2_o9) (= b s2_o14))
(and (= r above) (= a s2_o9) (= b s2_o15))
(and (= r above) (= a s2_o9) (= b s2_o11))
(and (= r above) (= a s2_o9) (= b s2_o13))
(and (= r above) (= a s2_o2) (= b s2_o14))
(and (= r above) (= a s2_o2) (= b s2_o15))
(and (= r above) (= a s2_o2) (= b s2_o11))
(and (= r above) (= a s2_o2) (= b s2_o13))
(and (= r above) (= a s2_o3) (= b s2_o8))
(and (= r above) (= a s2_o3) (= b s2_o9))
(and (= r above) (= a s2_o3) (= b s2_o2))
(and (= r above) (= a s2_o3) (= b s2_o14))
(and (= r above) (= a s2_o3) (= b s2_o15))
(and (= r above) (= a s2_o3) (= b s2_o16))
(and (= r above) (= a s2_o3) (= b s2_o11))
(and (= r above) (= a s2_o3) (= b s2_o13))
(and (= r above) (= a s2_o1) (= b s2_o8))
(and (= r above) (= a s2_o1) (= b s2_o9))
(and (= r above) (= a s2_o1) (= b s2_o2))
(and (= r above) (= a s2_o1) (= b s2_o14))
(and (= r above) (= a s2_o1) (= b s2_o15))
(and (= r above) (= a s2_o1) (= b s2_o11))
(and (= r above) (= a s2_o1) (= b s2_o13))
(and (= r above) (= a s2_o6) (= b s2_o8))
(and (= r above) (= a s2_o6) (= b s2_o9))
(and (= r above) (= a s2_o6) (= b s2_o2))
(and (= r above) (= a s2_o6) (= b s2_o3))
(and (= r above) (= a s2_o6) (= b s2_o7))
(and (= r above) (= a s2_o6) (= b s2_o4))
(and (= r above) (= a s2_o6) (= b s2_o14))
(and (= r above) (= a s2_o6) (= b s2_o15))
(and (= r above) (= a s2_o6) (= b s2_o16))
(and (= r above) (= a s2_o6) (= b s2_o11))
(and (= r above) (= a s2_o6) (= b s2_o12))
(and (= r above) (= a s2_o6) (= b s2_o13))
(and (= r above) (= a s2_o7) (= b s2_o8))
(and (= r above) (= a s2_o7) (= b s2_o9))
(and (= r above) (= a s2_o7) (= b s2_o2))
(and (= r above) (= a s2_o7) (= b s2_o14))
(and (= r above) (= a s2_o7) (= b s2_o15))
(and (= r above) (= a s2_o7) (= b s2_o11))
(and (= r above) (= a s2_o7) (= b s2_o13))
(and (= r above) (= a s2_o4) (= b s2_o8))
(and (= r above) (= a s2_o4) (= b s2_o9))
(and (= r above) (= a s2_o4) (= b s2_o2))
(and (= r above) (= a s2_o4) (= b s2_o14))
(and (= r above) (= a s2_o4) (= b s2_o15))
(and (= r above) (= a s2_o4) (= b s2_o16))
(and (= r above) (= a s2_o4) (= b s2_o11))
(and (= r above) (= a s2_o4) (= b s2_o13))
(and (= r above) (= a s2_o5) (= b s2_o8))
(and (= r above) (= a s2_o5) (= b s2_o9))
(and (= r above) (= a s2_o5) (= b s2_o2))
(and (= r above) (= a s2_o5) (= b s2_o3))
(and (= r above) (= a s2_o5) (= b s2_o7))
(and (= r above) (= a s2_o5) (= b s2_o4))
(and (= r above) (= a s2_o5) (= b s2_o14))
(and (= r above) (= a s2_o5) (= b s2_o15))
(and (= r above) (= a s2_o5) (= b s2_o16))
(and (= r above) (= a s2_o5) (= b s2_o11))
(and (= r above) (= a s2_o5) (= b s2_o12))
(and (= r above) (= a s2_o5) (= b s2_o13))
(and (= r above) (= a s2_o16) (= b s2_o14))
(and (= r above) (= a s2_o16) (= b s2_o15))
(and (= r above) (= a s2_o16) (= b s2_o13))
(and (= r above) (= a s2_o10) (= b s2_o8))
(and (= r above) (= a s2_o10) (= b s2_o9))
(and (= r above) (= a s2_o10) (= b s2_o2))
(and (= r above) (= a s2_o10) (= b s2_o14))
(and (= r above) (= a s2_o10) (= b s2_o15))
(and (= r above) (= a s2_o10) (= b s2_o16))
(and (= r above) (= a s2_o10) (= b s2_o11))
(and (= r above) (= a s2_o10) (= b s2_o13))
(and (= r above) (= a s1_o3) (= b s1_o4))
(and (= r above) (= a t3_o6) (= b t3_o5))
(and (= r above) (= a t3_o7) (= b t3_o5))
(and (= r above) (= a t1_o1) (= b t1_o3))
(and (= r above) (= a t1_o1) (= b t1_o4))
(and (= r above) (= a t1_o1) (= b t1_o5))
(and (= r above) (= a t1_o1) (= b t1_o8))
(and (= r above) (= a t1_o2) (= b t1_o3))
(and (= r above) (= a t1_o2) (= b t1_o4))
(and (= r above) (= a t1_o2) (= b t1_o5))
(and (= r above) (= a t1_o2) (= b t1_o8))
(and (= r above) (= a t1_o3) (= b t1_o4))
(and (= r above) (= a t1_o3) (= b t1_o5))
(and (= r above) (= a t1_o3) (= b t1_o8))
(and (= r above) (= a t1_o4) (= b t1_o8))
(and (= r above) (= a t1_o5) (= b t1_o8))
(and (= r above) (= a t1_o6) (= b t1_o4))
(and (= r above) (= a t1_o6) (= b t1_o8))

(and (= r below) (= a s3_o1) (= b s3_o5))
(and (= r below) (= a s2_o8) (= b s2_o3))
(and (= r below) (= a s2_o8) (= b s2_o1))
(and (= r below) (= a s2_o8) (= b s2_o6))
(and (= r below) (= a s2_o8) (= b s2_o7))
(and (= r below) (= a s2_o8) (= b s2_o4))
(and (= r below) (= a s2_o8) (= b s2_o5))
(and (= r below) (= a s2_o8) (= b s2_o10))
(and (= r below) (= a s2_o9) (= b s2_o3))
(and (= r below) (= a s2_o9) (= b s2_o1))
(and (= r below) (= a s2_o9) (= b s2_o6))
(and (= r below) (= a s2_o9) (= b s2_o7))
(and (= r below) (= a s2_o9) (= b s2_o4))
(and (= r below) (= a s2_o9) (= b s2_o5))
(and (= r below) (= a s2_o9) (= b s2_o10))
(and (= r below) (= a s2_o2) (= b s2_o3))
(and (= r below) (= a s2_o2) (= b s2_o1))
(and (= r below) (= a s2_o2) (= b s2_o6))
(and (= r below) (= a s2_o2) (= b s2_o7))
(and (= r below) (= a s2_o2) (= b s2_o4))
(and (= r below) (= a s2_o2) (= b s2_o5))
(and (= r below) (= a s2_o2) (= b s2_o10))
(and (= r below) (= a s2_o3) (= b s2_o6))
(and (= r below) (= a s2_o3) (= b s2_o5))
(and (= r below) (= a s2_o7) (= b s2_o6))
(and (= r below) (= a s2_o7) (= b s2_o5))
(and (= r below) (= a s2_o4) (= b s2_o6))
(and (= r below) (= a s2_o4) (= b s2_o5))
(and (= r below) (= a s2_o14) (= b s2_o8))
(and (= r below) (= a s2_o14) (= b s2_o9))
(and (= r below) (= a s2_o14) (= b s2_o2))
(and (= r below) (= a s2_o14) (= b s2_o3))
(and (= r below) (= a s2_o14) (= b s2_o1))
(and (= r below) (= a s2_o14) (= b s2_o6))
(and (= r below) (= a s2_o14) (= b s2_o7))
(and (= r below) (= a s2_o14) (= b s2_o4))
(and (= r below) (= a s2_o14) (= b s2_o5))
(and (= r below) (= a s2_o14) (= b s2_o16))
(and (= r below) (= a s2_o14) (= b s2_o10))
(and (= r below) (= a s2_o15) (= b s2_o8))
(and (= r below) (= a s2_o15) (= b s2_o9))
(and (= r below) (= a s2_o15) (= b s2_o2))
(and (= r below) (= a s2_o15) (= b s2_o3))
(and (= r below) (= a s2_o15) (= b s2_o1))
(and (= r below) (= a s2_o15) (= b s2_o6))
(and (= r below) (= a s2_o15) (= b s2_o7))
(and (= r below) (= a s2_o15) (= b s2_o4))
(and (= r below) (= a s2_o15) (= b s2_o5))
(and (= r below) (= a s2_o15) (= b s2_o16))
(and (= r below) (= a s2_o15) (= b s2_o10))
(and (= r below) (= a s2_o16) (= b s2_o3))
(and (= r below) (= a s2_o16) (= b s2_o6))
(and (= r below) (= a s2_o16) (= b s2_o4))
(and (= r below) (= a s2_o16) (= b s2_o5))
(and (= r below) (= a s2_o16) (= b s2_o10))
(and (= r below) (= a s2_o11) (= b s2_o8))
(and (= r below) (= a s2_o11) (= b s2_o9))
(and (= r below) (= a s2_o11) (= b s2_o2))
(and (= r below) (= a s2_o11) (= b s2_o3))
(and (= r below) (= a s2_o11) (= b s2_o1))
(and (= r below) (= a s2_o11) (= b s2_o6))
(and (= r below) (= a s2_o11) (= b s2_o7))
(and (= r below) (= a s2_o11) (= b s2_o4))
(and (= r below) (= a s2_o11) (= b s2_o5))
(and (= r below) (= a s2_o11) (= b s2_o10))
(and (= r below) (= a s2_o12) (= b s2_o6))
(and (= r below) (= a s2_o12) (= b s2_o5))
(and (= r below) (= a s2_o13) (= b s2_o8))
(and (= r below) (= a s2_o13) (= b s2_o9))
(and (= r below) (= a s2_o13) (= b s2_o2))
(and (= r below) (= a s2_o13) (= b s2_o3))
(and (= r below) (= a s2_o13) (= b s2_o1))
(and (= r below) (= a s2_o13) (= b s2_o6))
(and (= r below) (= a s2_o13) (= b s2_o7))
(and (= r below) (= a s2_o13) (= b s2_o4))
(and (= r below) (= a s2_o13) (= b s2_o5))
(and (= r below) (= a s2_o13) (= b s2_o16))
(and (= r below) (= a s2_o13) (= b s2_o10))
(and (= r below) (= a s1_o4) (= b s1_o3))
(and (= r below) (= a t3_o5) (= b t3_o6))
(and (= r below) (= a t3_o5) (= b t3_o7))
(and (= r below) (= a t1_o3) (= b t1_o1))
(and (= r below) (= a t1_o3) (= b t1_o2))
(and (= r below) (= a t1_o4) (= b t1_o1))
(and (= r below) (= a t1_o4) (= b t1_o2))
(and (= r below) (= a t1_o4) (= b t1_o3))
(and (= r below) (= a t1_o4) (= b t1_o6))
(and (= r below) (= a t1_o5) (= b t1_o1))
(and (= r below) (= a t1_o5) (= b t1_o2))
(and (= r below) (= a t1_o5) (= b t1_o3))
(and (= r below) (= a t1_o8) (= b t1_o1))
(and (= r below) (= a t1_o8) (= b t1_o2))
(and (= r below) (= a t1_o8) (= b t1_o3))
(and (= r below) (= a t1_o8) (= b t1_o4))
(and (= r below) (= a t1_o8) (= b t1_o5))
(and (= r below) (= a t1_o8) (= b t1_o6))

(and (= r within) (= a s3_o5) (= b s3_o3))
(and (= r within) (= a s2_o14) (= b s2_o11))
(and (= r within) (= a s2_o13) (= b s2_o11))
(and (= r within) (= a s1_o3) (= b s1_o1))
(and (= r within) (= a s1_o2) (= b s1_o1))
(and (= r within) (= a s1_o6) (= b s1_o1))
(and (= r within) (= a t2_o3) (= b t2_o1))
(and (= r within) (= a t2_o2) (= b t2_o1))
(and (= r within) (= a t3_o6) (= b t3_o2))
(and (= r within) (= a t3_o7) (= b t3_o4))
(and (= r within) (= a t3_o7) (= b t3_o3))
(and (= r within) (= a t1_o2) (= b t1_o7))
(and (= r within) (= a t1_o3) (= b t1_o7))

))
;Datatype for indicating which quantifier to use in formula
(declare-datatypes () ((Quantifier all one)))
;Datatype of indirections to indicate what the arguments of relations in the abstract baseformula are-- i.e, a datatype of bindings 
;Constants/extraneous objects have bindings as well
(declare-datatypes () ((Binding
 bind_x1 bind_x2
;bindings for extraneous objects
 bind_fork bind_cup bind_sofa bind_laptop bind_bowl bind_dog bind_bed bind_cat bind_nullobj bind_book bind_tvmonitor bind_chair bind_vase
)))
;Defines how bindings correspond to valuations
;Default lookup is nullobj, but it is used since the function is defined for all bindings
(define-fun bindlook ((x1 Obj)(x2 Obj)(bind Binding)) Obj
(ite (= bind bind_x2) x2
(ite (= bind bind_x1) x1
;Bindings for extraneous objects
(ite (= bind bind_vase) vase
(ite (= bind bind_chair) chair
(ite (= bind bind_tvmonitor) tvmonitor
(ite (= bind bind_book) book
(ite (= bind bind_nullobj) nullobj
(ite (= bind bind_cat) cat
(ite (= bind bind_bed) bed
(ite (= bind bind_dog) dog
(ite (= bind bind_bowl) bowl
(ite (= bind bind_laptop) laptop
(ite (= bind bind_sofa) sofa
(ite (= bind bind_cup) cup
(ite (= bind bind_fork) fork
 nullobj)))))))))))))))
)
;Defines symbols used to indicate which boolean operators will be used, including negations, and their meanings as well
(declare-datatypes () ((Ops opand opor opimpl)))
(declare-datatypes () ((IfNeg yes no)))
(define-fun opeval ((op Ops) (arg1 Bool) (arg2 Bool)) Bool
 (ite (= op opand) (and arg1 arg2)
 (ite (= op opor) (or arg1 arg2)
  (=> arg1 arg2)
)))
(define-fun negeval ((val IfNeg)(arg Bool)) Bool
 (ite (= val yes)
  (not arg)
  arg
))
(declare-const q1 Quantifier)
(declare-const q2 Quantifier)

(declare-const op1 Ops)

(declare-const n1 IfNeg)
(declare-const n2 IfNeg)

(declare-const r1 Rels)
(declare-const r2 Rels)

(declare-const arg1_1 Binding)
(declare-const arg1_2 Binding)
(declare-const arg2_1 Binding)
(declare-const arg2_2 Binding)

(assert (=> (= r1 labelOf) (= n1 no)))
(assert (=> (= r2 labelOf) (= n2 no)))

;Defines the innermost (quantifier-free) formula
(define-fun baseformula ((x1 Obj)(x2 Obj)) Bool
(opeval op1
(negeval n1 (re r1 (bindlook x1 x2 arg1_1) (bindlook x1 x2 arg1_2)))
(negeval n2 (re r2 (bindlook x1 x2 arg2_1) (bindlook x1 x2 arg2_2))))
)
;Formula at quantifier level 2
(define-fun formula_level_2 ((x1 Obj) (img Img)) Bool
(ite (= q2 all)
 (forall ((x2 Obj)) (=> (inImg x2 img) (baseformula x1 x2)))
 (exists ((x2 Obj)) (and (inImg x2 img) (baseformula x1 x2)))
));Formula at quantifier level 1
(define-fun formula_level_1 ((img Img)) Bool
(ite (= q1 all)
 (forall ((x1 Obj)) (=> (inImg x1 img) (formula_level_2 x1 img)))
 (exists ((x1 Obj)) (and (inImg x1 img) (formula_level_2 x1 img)))
))

(assert (formula_level_1 t2))
(assert (formula_level_1 t3))
(assert (formula_level_1 t1))

(assert (formula_level_1 s3))
(assert (not (formula_level_1 s1)))
(assert (not (formula_level_1 s2)))

(assert (not (and
(= q1 all)
(= q2 one)
(= op1 opimpl)
(= r1 labelOf)
(= n1 no)
(= arg1_1 bind_x1)
(= arg1_2 bind_dog)
(= r2 within)
(= n2 no)
(= arg2_1 bind_x1)
(= arg2_2 bind_x2)
)))
(assert (not (and
(= q1 all)
(= q2 all)
(= op1 opimpl)
(= r1 labelOf)
(= n1 no)
(= arg1_1 bind_x1)
(= arg1_2 bind_dog)
(= r2 above)
(= n2 yes)
(= arg2_1 bind_x2)
(= arg2_2 bind_x1)
)))
(assert (not (and
(= q1 all)
(= q2 all)
(= op1 opimpl)
(= r1 labelOf)
(= n1 no)
(= arg1_1 bind_x1)
(= arg1_2 bind_dog)
(= r2 below)
(= n2 yes)
(= arg2_1 bind_x1)
(= arg2_2 bind_x2)
)))
(assert (not (and
(= q1 all)
(= q2 all)
(= op1 opimpl)
(= r1 labelOf)
(= n1 no)
(= arg1_1 bind_x2)
(= arg1_2 bind_dog)
(= r2 above)
(= n2 yes)
(= arg2_1 bind_x1)
(= arg2_2 bind_x2)
)))
(assert (not (and
(= q1 all)
(= q2 all)
(= op1 opimpl)
(= r1 labelOf)
(= n1 no)
(= arg1_1 bind_x2)
(= arg1_2 bind_dog)
(= r2 below)
(= n2 yes)
(= arg2_1 bind_x2)
(= arg2_2 bind_x1)
)))(check-sat)
(get-model)