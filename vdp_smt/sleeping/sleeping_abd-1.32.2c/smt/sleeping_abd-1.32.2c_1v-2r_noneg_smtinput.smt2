;Datatype of images
(declare-datatypes () ((Img
 s3 s2 s1 t2 t3 t1
)))
;Constant symbols for objects
;All values are distinct by default
(declare-datatypes () ((Obj
 s3_o10 s3_o1 s3_o3 s3_o2 s3_o5 s3_o4 s3_o7 s3_o6 s3_o9 s3_o8
 s2_o2 s2_o3 s2_o1
 s1_o2 s1_o1
 t2_o1 t2_o2
 t3_o2 t3_o1
 t1_o1 t1_o2 t1_o3 t1_o4
;extraneous objects
 nullobj bicycle person pottedplant cup bench dog cat
)))
;Membership of objects in images
;Extraneous objects belong to no images
(define-fun inImg ((x Obj )(y Img)) Bool
(or
(and (= x s3_o10) (= y s3))
(and (= x s3_o1) (= y s3))
(and (= x s3_o3) (= y s3))
(and (= x s3_o2) (= y s3))
(and (= x s3_o5) (= y s3))
(and (= x s3_o4) (= y s3))
(and (= x s3_o7) (= y s3))
(and (= x s3_o6) (= y s3))
(and (= x s3_o9) (= y s3))
(and (= x s3_o8) (= y s3))
(and (= x s2_o2) (= y s2))
(and (= x s2_o3) (= y s2))
(and (= x s2_o1) (= y s2))
(and (= x s1_o2) (= y s1))
(and (= x s1_o1) (= y s1))
(and (= x t2_o1) (= y t2))
(and (= x t2_o2) (= y t2))
(and (= x t3_o2) (= y t3))
(and (= x t3_o1) (= y t3))
(and (= x t1_o1) (= y t1))
(and (= x t1_o2) (= y t1))
(and (= x t1_o3) (= y t1))
(and (= x t1_o4) (= y t1))
))
;Datatype of relations--made into a uniform arity
(declare-datatypes () ((Rels neq labelOf sameLabel toLeft toRight above below within)))
;Relation evaluator
;All relations are made into a uniform arity using 'nullobj' as a default argument
(define-fun re ((r Rels)(a Obj)(b Obj)) Bool
(or
(and (= r neq) (not (= b a)))
(and (= r labelOf) (= a s3_o10) (= b person))
(and (= r labelOf) (= a s3_o1) (= b pottedplant))
(and (= r labelOf) (= a s3_o3) (= b bicycle))
(and (= r labelOf) (= a s3_o2) (= b bench))
(and (= r labelOf) (= a s3_o5) (= b person))
(and (= r labelOf) (= a s3_o4) (= b person))
(and (= r labelOf) (= a s3_o7) (= b person))
(and (= r labelOf) (= a s3_o6) (= b person))
(and (= r labelOf) (= a s3_o9) (= b person))
(and (= r labelOf) (= a s3_o8) (= b person))
(and (= r labelOf) (= a s2_o2) (= b dog))
(and (= r labelOf) (= a s2_o3) (= b bench))
(and (= r labelOf) (= a s2_o1) (= b cup))
(and (= r labelOf) (= a s1_o2) (= b bench))
(and (= r labelOf) (= a s1_o1) (= b cat))
(and (= r labelOf) (= a t2_o1) (= b bench))
(and (= r labelOf) (= a t2_o2) (= b person))
(and (= r labelOf) (= a t3_o2) (= b person))
(and (= r labelOf) (= a t3_o1) (= b bench))
(and (= r labelOf) (= a t1_o1) (= b bench))
(and (= r labelOf) (= a t1_o2) (= b bench))
(and (= r labelOf) (= a t1_o3) (= b bench))
(and (= r labelOf) (= a t1_o4) (= b person))

(and (= r sameLabel) (= a s3_o10) (= b s3_o10))
(and (= r sameLabel) (= a s3_o10) (= b s3_o5))
(and (= r sameLabel) (= a s3_o10) (= b s3_o4))
(and (= r sameLabel) (= a s3_o10) (= b s3_o7))
(and (= r sameLabel) (= a s3_o10) (= b s3_o6))
(and (= r sameLabel) (= a s3_o10) (= b s3_o9))
(and (= r sameLabel) (= a s3_o10) (= b s3_o8))
(and (= r sameLabel) (= a s3_o1) (= b s3_o1))
(and (= r sameLabel) (= a s3_o3) (= b s3_o3))
(and (= r sameLabel) (= a s3_o2) (= b s3_o2))
(and (= r sameLabel) (= a s3_o5) (= b s3_o10))
(and (= r sameLabel) (= a s3_o5) (= b s3_o5))
(and (= r sameLabel) (= a s3_o5) (= b s3_o4))
(and (= r sameLabel) (= a s3_o5) (= b s3_o7))
(and (= r sameLabel) (= a s3_o5) (= b s3_o6))
(and (= r sameLabel) (= a s3_o5) (= b s3_o9))
(and (= r sameLabel) (= a s3_o5) (= b s3_o8))
(and (= r sameLabel) (= a s3_o4) (= b s3_o10))
(and (= r sameLabel) (= a s3_o4) (= b s3_o5))
(and (= r sameLabel) (= a s3_o4) (= b s3_o4))
(and (= r sameLabel) (= a s3_o4) (= b s3_o7))
(and (= r sameLabel) (= a s3_o4) (= b s3_o6))
(and (= r sameLabel) (= a s3_o4) (= b s3_o9))
(and (= r sameLabel) (= a s3_o4) (= b s3_o8))
(and (= r sameLabel) (= a s3_o7) (= b s3_o10))
(and (= r sameLabel) (= a s3_o7) (= b s3_o5))
(and (= r sameLabel) (= a s3_o7) (= b s3_o4))
(and (= r sameLabel) (= a s3_o7) (= b s3_o7))
(and (= r sameLabel) (= a s3_o7) (= b s3_o6))
(and (= r sameLabel) (= a s3_o7) (= b s3_o9))
(and (= r sameLabel) (= a s3_o7) (= b s3_o8))
(and (= r sameLabel) (= a s3_o6) (= b s3_o10))
(and (= r sameLabel) (= a s3_o6) (= b s3_o5))
(and (= r sameLabel) (= a s3_o6) (= b s3_o4))
(and (= r sameLabel) (= a s3_o6) (= b s3_o7))
(and (= r sameLabel) (= a s3_o6) (= b s3_o6))
(and (= r sameLabel) (= a s3_o6) (= b s3_o9))
(and (= r sameLabel) (= a s3_o6) (= b s3_o8))
(and (= r sameLabel) (= a s3_o9) (= b s3_o10))
(and (= r sameLabel) (= a s3_o9) (= b s3_o5))
(and (= r sameLabel) (= a s3_o9) (= b s3_o4))
(and (= r sameLabel) (= a s3_o9) (= b s3_o7))
(and (= r sameLabel) (= a s3_o9) (= b s3_o6))
(and (= r sameLabel) (= a s3_o9) (= b s3_o9))
(and (= r sameLabel) (= a s3_o9) (= b s3_o8))
(and (= r sameLabel) (= a s3_o8) (= b s3_o10))
(and (= r sameLabel) (= a s3_o8) (= b s3_o5))
(and (= r sameLabel) (= a s3_o8) (= b s3_o4))
(and (= r sameLabel) (= a s3_o8) (= b s3_o7))
(and (= r sameLabel) (= a s3_o8) (= b s3_o6))
(and (= r sameLabel) (= a s3_o8) (= b s3_o9))
(and (= r sameLabel) (= a s3_o8) (= b s3_o8))
(and (= r sameLabel) (= a s2_o2) (= b s2_o2))
(and (= r sameLabel) (= a s2_o3) (= b s2_o3))
(and (= r sameLabel) (= a s2_o1) (= b s2_o1))
(and (= r sameLabel) (= a s1_o2) (= b s1_o2))
(and (= r sameLabel) (= a s1_o1) (= b s1_o1))
(and (= r sameLabel) (= a t2_o1) (= b t2_o1))
(and (= r sameLabel) (= a t2_o2) (= b t2_o2))
(and (= r sameLabel) (= a t3_o2) (= b t3_o2))
(and (= r sameLabel) (= a t3_o1) (= b t3_o1))
(and (= r sameLabel) (= a t1_o1) (= b t1_o1))
(and (= r sameLabel) (= a t1_o1) (= b t1_o2))
(and (= r sameLabel) (= a t1_o1) (= b t1_o3))
(and (= r sameLabel) (= a t1_o2) (= b t1_o1))
(and (= r sameLabel) (= a t1_o2) (= b t1_o2))
(and (= r sameLabel) (= a t1_o2) (= b t1_o3))
(and (= r sameLabel) (= a t1_o3) (= b t1_o1))
(and (= r sameLabel) (= a t1_o3) (= b t1_o2))
(and (= r sameLabel) (= a t1_o3) (= b t1_o3))
(and (= r sameLabel) (= a t1_o4) (= b t1_o4))

(and (= r toLeft) (= a s3_o10) (= b s3_o3))
(and (= r toLeft) (= a s3_o10) (= b s3_o6))
(and (= r toLeft) (= a s3_o10) (= b s3_o9))
(and (= r toLeft) (= a s3_o1) (= b s3_o3))
(and (= r toLeft) (= a s3_o1) (= b s3_o6))
(and (= r toLeft) (= a s3_o1) (= b s3_o9))
(and (= r toLeft) (= a s3_o5) (= b s3_o10))
(and (= r toLeft) (= a s3_o5) (= b s3_o1))
(and (= r toLeft) (= a s3_o5) (= b s3_o3))
(and (= r toLeft) (= a s3_o5) (= b s3_o4))
(and (= r toLeft) (= a s3_o5) (= b s3_o6))
(and (= r toLeft) (= a s3_o5) (= b s3_o9))
(and (= r toLeft) (= a s3_o4) (= b s3_o3))
(and (= r toLeft) (= a s3_o4) (= b s3_o6))
(and (= r toLeft) (= a s3_o4) (= b s3_o9))
(and (= r toLeft) (= a s3_o7) (= b s3_o10))
(and (= r toLeft) (= a s3_o7) (= b s3_o1))
(and (= r toLeft) (= a s3_o7) (= b s3_o3))
(and (= r toLeft) (= a s3_o7) (= b s3_o2))
(and (= r toLeft) (= a s3_o7) (= b s3_o5))
(and (= r toLeft) (= a s3_o7) (= b s3_o4))
(and (= r toLeft) (= a s3_o7) (= b s3_o6))
(and (= r toLeft) (= a s3_o7) (= b s3_o9))
(and (= r toLeft) (= a s3_o7) (= b s3_o8))
(and (= r toLeft) (= a s3_o8) (= b s3_o3))
(and (= r toLeft) (= a s3_o8) (= b s3_o6))
(and (= r toLeft) (= a s3_o8) (= b s3_o9))

(and (= r toRight) (= a s3_o10) (= b s3_o5))
(and (= r toRight) (= a s3_o10) (= b s3_o7))
(and (= r toRight) (= a s3_o1) (= b s3_o5))
(and (= r toRight) (= a s3_o1) (= b s3_o7))
(and (= r toRight) (= a s3_o3) (= b s3_o10))
(and (= r toRight) (= a s3_o3) (= b s3_o1))
(and (= r toRight) (= a s3_o3) (= b s3_o5))
(and (= r toRight) (= a s3_o3) (= b s3_o4))
(and (= r toRight) (= a s3_o3) (= b s3_o7))
(and (= r toRight) (= a s3_o3) (= b s3_o8))
(and (= r toRight) (= a s3_o2) (= b s3_o7))
(and (= r toRight) (= a s3_o5) (= b s3_o7))
(and (= r toRight) (= a s3_o4) (= b s3_o5))
(and (= r toRight) (= a s3_o4) (= b s3_o7))
(and (= r toRight) (= a s3_o6) (= b s3_o10))
(and (= r toRight) (= a s3_o6) (= b s3_o1))
(and (= r toRight) (= a s3_o6) (= b s3_o5))
(and (= r toRight) (= a s3_o6) (= b s3_o4))
(and (= r toRight) (= a s3_o6) (= b s3_o7))
(and (= r toRight) (= a s3_o6) (= b s3_o8))
(and (= r toRight) (= a s3_o9) (= b s3_o10))
(and (= r toRight) (= a s3_o9) (= b s3_o1))
(and (= r toRight) (= a s3_o9) (= b s3_o5))
(and (= r toRight) (= a s3_o9) (= b s3_o4))
(and (= r toRight) (= a s3_o9) (= b s3_o7))
(and (= r toRight) (= a s3_o9) (= b s3_o8))
(and (= r toRight) (= a s3_o8) (= b s3_o7))

(and (= r above) (= a s3_o10) (= b s3_o3))
(and (= r above) (= a s3_o10) (= b s3_o2))
(and (= r above) (= a s3_o10) (= b s3_o8))
(and (= r above) (= a s3_o1) (= b s3_o2))
(and (= r above) (= a s3_o1) (= b s3_o8))
(and (= r above) (= a s3_o5) (= b s3_o2))
(and (= r above) (= a s3_o5) (= b s3_o8))
(and (= r above) (= a s3_o4) (= b s3_o2))
(and (= r above) (= a s3_o4) (= b s3_o8))
(and (= r above) (= a s3_o7) (= b s3_o2))
(and (= r above) (= a s3_o7) (= b s3_o8))
(and (= r above) (= a s3_o6) (= b s3_o2))
(and (= r above) (= a s3_o6) (= b s3_o8))
(and (= r above) (= a s2_o1) (= b s2_o2))
(and (= r above) (= a t1_o3) (= b t1_o1))
(and (= r above) (= a t1_o4) (= b t1_o1))

(and (= r below) (= a s3_o3) (= b s3_o10))
(and (= r below) (= a s3_o2) (= b s3_o10))
(and (= r below) (= a s3_o2) (= b s3_o1))
(and (= r below) (= a s3_o2) (= b s3_o5))
(and (= r below) (= a s3_o2) (= b s3_o4))
(and (= r below) (= a s3_o2) (= b s3_o7))
(and (= r below) (= a s3_o2) (= b s3_o6))
(and (= r below) (= a s3_o8) (= b s3_o10))
(and (= r below) (= a s3_o8) (= b s3_o1))
(and (= r below) (= a s3_o8) (= b s3_o5))
(and (= r below) (= a s3_o8) (= b s3_o4))
(and (= r below) (= a s3_o8) (= b s3_o7))
(and (= r below) (= a s3_o8) (= b s3_o6))
(and (= r below) (= a s2_o2) (= b s2_o1))
(and (= r below) (= a t1_o1) (= b t1_o3))
(and (= r below) (= a t1_o1) (= b t1_o4))

(and (= r within) (= a s3_o8) (= b s3_o2))
(and (= r within) (= a s2_o1) (= b s2_o3))
(and (= r within) (= a s1_o1) (= b s1_o2))
(and (= r within) (= a t3_o2) (= b t3_o1))
(and (= r within) (= a t1_o4) (= b t1_o2))

))
;Datatype for indicating which quantifier to use in formula
(declare-datatypes () ((Quantifier all one)))
;Datatype of indirections to indicate what the arguments of relations in the abstract baseformula are-- i.e, a datatype of bindings 
;Constants/extraneous objects have bindings as well
(declare-datatypes () ((Binding
 bind_x1
;bindings for extraneous objects
 bind_nullobj bind_bicycle bind_person bind_pottedplant bind_cup bind_bench bind_dog bind_cat
)))
;Defines how bindings correspond to valuations
;Default lookup is nullobj, but it is used since the function is defined for all bindings
(define-fun bindlook ((x1 Obj)(bind Binding)) Obj
(ite (= bind bind_x1) x1
;Bindings for extraneous objects
(ite (= bind bind_cat) cat
(ite (= bind bind_dog) dog
(ite (= bind bind_bench) bench
(ite (= bind bind_cup) cup
(ite (= bind bind_pottedplant) pottedplant
(ite (= bind bind_person) person
(ite (= bind bind_bicycle) bicycle
(ite (= bind bind_nullobj) nullobj
 nullobj)))))))))
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
(define-fun baseformula ((x1 Obj)) Bool
(opeval op1
(negeval n1 (re r1 (bindlook x1 arg1_1) (bindlook x1 arg1_2)))
(negeval n2 (re r2 (bindlook x1 arg2_1) (bindlook x1 arg2_2))))
)
;Formula at quantifier level 1
(define-fun formula_level_1 ((img Img)) Bool
(ite (= q1 all)
 (forall ((x1 Obj)) (=> (inImg x1 img) (baseformula x1)))
 (exists ((x1 Obj)) (and (inImg x1 img) (baseformula x1)))
))

(assert (formula_level_1 t2))
(assert (formula_level_1 t3))
(assert (formula_level_1 t1))

(assert (formula_level_1 s3))
(assert (not (formula_level_1 s1)))
(assert (not (formula_level_1 s2)))

(assert (not (and
(= q1 one)
(= op1 opimpl)
(= r1 neq)
(= n1 no)
(= arg1_1 bind_bench)
(= arg1_2 bind_cat)
(= r2 labelOf)
(= n2 no)
(= arg2_1 bind_x1)
(= arg2_2 bind_person)
)))
(assert (not (and
(= q1 one)
(= op1 opor)
(= r1 above)
(= n1 no)
(= arg1_1 bind_x1)
(= arg1_2 bind_x1)
(= r2 labelOf)
(= n2 no)
(= arg2_1 bind_x1)
(= arg2_2 bind_person)
)))
(assert (not (and
(= q1 one)
(= op1 opor)
(= r1 toLeft)
(= n1 no)
(= arg1_1 bind_x1)
(= arg1_2 bind_x1)
(= r2 labelOf)
(= n2 no)
(= arg2_1 bind_x1)
(= arg2_2 bind_person)
)))(check-sat)
(get-model)