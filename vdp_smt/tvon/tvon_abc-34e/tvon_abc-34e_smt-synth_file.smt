(set-logic ALL)

(define-fun t1o1 () (_ BitVec 5) (_ bv0 5))
(define-fun t1o2 () (_ BitVec 5) (_ bv1 5))
(define-fun t1o3 () (_ BitVec 5) (_ bv2 5))
(define-fun t2o1 () (_ BitVec 5) (_ bv3 5))
(define-fun t2o2 () (_ BitVec 5) (_ bv4 5))
(define-fun t3o1 () (_ BitVec 5) (_ bv5 5))
(define-fun t3o2 () (_ BitVec 5) (_ bv6 5))
(define-fun c1o1 () (_ BitVec 5) (_ bv7 5))
(define-fun c1o2 () (_ BitVec 5) (_ bv8 5))
(define-fun c1o3 () (_ BitVec 5) (_ bv9 5))
(define-fun c1o4 () (_ BitVec 5) (_ bv10 5))
(define-fun c1o5 () (_ BitVec 5) (_ bv11 5))
(define-fun c1o6 () (_ BitVec 5) (_ bv12 5))
(define-fun c1o7 () (_ BitVec 5) (_ bv13 5))
(define-fun c1o8 () (_ BitVec 5) (_ bv14 5))
(define-fun c1o9 () (_ BitVec 5) (_ bv15 5))
(define-fun c1o10 () (_ BitVec 5) (_ bv16 5))
(define-fun c2o1 () (_ BitVec 5) (_ bv17 5))
(define-fun c2o2 () (_ BitVec 5) (_ bv18 5))
(define-fun c2o3 () (_ BitVec 5) (_ bv19 5))
(define-fun c2o4 () (_ BitVec 5) (_ bv20 5))
(define-fun c2o5 () (_ BitVec 5) (_ bv21 5))
(define-fun c3o1 () (_ BitVec 5) (_ bv22 5))
(define-fun c3o2 () (_ BitVec 5) (_ bv23 5))
(define-fun c3o3 () (_ BitVec 5) (_ bv24 5))


(define-fun person () (_ BitVec 3) (_ bv0 3))
(define-fun cat () (_ BitVec 3) (_ bv1 3))
(define-fun book () (_ BitVec 3) (_ bv2 3))
(define-fun chair () (_ BitVec 3) (_ bv3 3))
(define-fun tvmonitor () (_ BitVec 3) (_ bv4 3))
(define-fun pottedplant () (_ BitVec 3) (_ bv5 3))


(define-fun labelOf((obj (_ BitVec 5))(lbl (_ BitVec 3))) Bool
(or
(and (= obj t1o1) (= lbl tvmonitor))
(and (= obj t1o2) (= lbl cat))
(and (= obj t1o3) (= lbl cat))
(and (= obj t2o1) (= lbl tvmonitor))
(and (= obj t2o2) (= lbl person))
(and (= obj t3o1) (= lbl tvmonitor))
(and (= obj t3o2) (= lbl cat))
(and (= obj c1o1) (= lbl book))
(and (= obj c1o2) (= lbl book))
(and (= obj c1o3) (= lbl book))
(and (= obj c1o4) (= lbl book))
(and (= obj c1o5) (= lbl book))
(and (= obj c1o6) (= lbl book))
(and (= obj c1o7) (= lbl book))
(and (= obj c1o8) (= lbl book))
(and (= obj c1o9) (= lbl tvmonitor))
(and (= obj c1o10) (= lbl chair))
(and (= obj c2o1) (= lbl book))
(and (= obj c2o2) (= lbl book))
(and (= obj c2o3) (= lbl book))
(and (= obj c2o4) (= lbl tvmonitor))
(and (= obj c2o5) (= lbl pottedplant))
(and (= obj c3o1) (= lbl tvmonitor))
(and (= obj c3o2) (= lbl cat))
(and (= obj c3o3) (= lbl cat))

))

(define-fun leftOf ((x (_ BitVec 5))(y (_ BitVec 5))) Bool
(or
(and (= x c1o3) (= y c1o2))
(and (= x c1o4) (= y c1o1))
(and (= x c1o4) (= y c1o2))
(and (= x c1o4) (= y c1o3))
(and (= x c1o4) (= y c1o5))
(and (= x c1o4) (= y c1o6))
(and (= x c1o4) (= y c1o7))
(and (= x c1o4) (= y c1o8))
(and (= x c1o4) (= y c1o9))
(and (= x c1o5) (= y c1o1))
(and (= x c1o5) (= y c1o2))
(and (= x c1o5) (= y c1o3))
(and (= x c1o5) (= y c1o9))
(and (= x c1o6) (= y c1o1))
(and (= x c1o6) (= y c1o2))
(and (= x c1o6) (= y c1o3))
(and (= x c1o6) (= y c1o9))
(and (= x c1o7) (= y c1o1))
(and (= x c1o7) (= y c1o2))
(and (= x c1o7) (= y c1o3))
(and (= x c1o7) (= y c1o9))
(and (= x c1o8) (= y c1o1))
(and (= x c1o8) (= y c1o2))
(and (= x c1o8) (= y c1o3))
(and (= x c1o8) (= y c1o5))
(and (= x c1o8) (= y c1o6))
(and (= x c1o8) (= y c1o7))
(and (= x c1o8) (= y c1o9))
(and (= x c1o9) (= y c1o1))
(and (= x c1o9) (= y c1o2))
(and (= x c1o9) (= y c1o3))
(and (= x c1o10) (= y c1o1))
(and (= x c1o10) (= y c1o2))
(and (= x c1o10) (= y c1o3))
(and (= x c2o1) (= y c2o4))
(and (= x c2o1) (= y c2o5))
(and (= x c2o2) (= y c2o4))
(and (= x c2o2) (= y c2o5))
(and (= x c2o3) (= y c2o4))
(and (= x c2o3) (= y c2o5))

))

(define-fun rightOf ((x (_ BitVec 5))(y (_ BitVec 5))) Bool
(or
(and (= x c1o1) (= y c1o4))
(and (= x c1o1) (= y c1o5))
(and (= x c1o1) (= y c1o6))
(and (= x c1o1) (= y c1o7))
(and (= x c1o1) (= y c1o8))
(and (= x c1o1) (= y c1o9))
(and (= x c1o1) (= y c1o10))
(and (= x c1o2) (= y c1o3))
(and (= x c1o2) (= y c1o4))
(and (= x c1o2) (= y c1o5))
(and (= x c1o2) (= y c1o6))
(and (= x c1o2) (= y c1o7))
(and (= x c1o2) (= y c1o8))
(and (= x c1o2) (= y c1o9))
(and (= x c1o2) (= y c1o10))
(and (= x c1o3) (= y c1o4))
(and (= x c1o3) (= y c1o5))
(and (= x c1o3) (= y c1o6))
(and (= x c1o3) (= y c1o7))
(and (= x c1o3) (= y c1o8))
(and (= x c1o3) (= y c1o9))
(and (= x c1o3) (= y c1o10))
(and (= x c1o5) (= y c1o4))
(and (= x c1o5) (= y c1o8))
(and (= x c1o6) (= y c1o4))
(and (= x c1o6) (= y c1o8))
(and (= x c1o7) (= y c1o4))
(and (= x c1o7) (= y c1o8))
(and (= x c1o8) (= y c1o4))
(and (= x c1o9) (= y c1o4))
(and (= x c1o9) (= y c1o5))
(and (= x c1o9) (= y c1o6))
(and (= x c1o9) (= y c1o7))
(and (= x c1o9) (= y c1o8))
(and (= x c2o4) (= y c2o1))
(and (= x c2o4) (= y c2o2))
(and (= x c2o4) (= y c2o3))
(and (= x c2o5) (= y c2o1))
(and (= x c2o5) (= y c2o2))
(and (= x c2o5) (= y c2o3))

))

(define-fun above ((x (_ BitVec 5))(y (_ BitVec 5))) Bool
(or
(and (= x t1o1) (= y t1o2))
(and (= x t1o3) (= y t1o2))
(and (= x c1o4) (= y c1o2))
(and (= x c1o4) (= y c1o3))
(and (= x c1o4) (= y c1o7))
(and (= x c1o4) (= y c1o10))
(and (= x c1o5) (= y c1o1))
(and (= x c1o5) (= y c1o2))
(and (= x c1o5) (= y c1o3))
(and (= x c1o5) (= y c1o4))
(and (= x c1o5) (= y c1o6))
(and (= x c1o5) (= y c1o7))
(and (= x c1o5) (= y c1o8))
(and (= x c1o5) (= y c1o10))
(and (= x c1o6) (= y c1o2))
(and (= x c1o6) (= y c1o3))
(and (= x c1o6) (= y c1o7))
(and (= x c1o6) (= y c1o10))
(and (= x c1o8) (= y c1o2))
(and (= x c1o8) (= y c1o3))
(and (= x c1o8) (= y c1o7))
(and (= x c1o8) (= y c1o10))
(and (= x c1o9) (= y c1o1))
(and (= x c1o9) (= y c1o2))
(and (= x c1o9) (= y c1o3))
(and (= x c1o9) (= y c1o4))
(and (= x c1o9) (= y c1o6))
(and (= x c1o9) (= y c1o7))
(and (= x c1o9) (= y c1o8))
(and (= x c1o9) (= y c1o10))
(and (= x c2o2) (= y c2o3))
(and (= x c2o4) (= y c2o1))
(and (= x c2o4) (= y c2o2))
(and (= x c2o4) (= y c2o3))
(and (= x c2o5) (= y c2o1))
(and (= x c2o5) (= y c2o2))
(and (= x c2o5) (= y c2o3))
(and (= x c3o1) (= y c3o2))
(and (= x c3o3) (= y c3o2))

))

(define-fun below ((x (_ BitVec 5))(y (_ BitVec 5))) Bool
(or
(and (= x t1o2) (= y t1o1))
(and (= x t1o2) (= y t1o3))
(and (= x c1o1) (= y c1o5))
(and (= x c1o1) (= y c1o9))
(and (= x c1o2) (= y c1o4))
(and (= x c1o2) (= y c1o5))
(and (= x c1o2) (= y c1o6))
(and (= x c1o2) (= y c1o8))
(and (= x c1o2) (= y c1o9))
(and (= x c1o3) (= y c1o4))
(and (= x c1o3) (= y c1o5))
(and (= x c1o3) (= y c1o6))
(and (= x c1o3) (= y c1o8))
(and (= x c1o3) (= y c1o9))
(and (= x c1o4) (= y c1o5))
(and (= x c1o4) (= y c1o9))
(and (= x c1o6) (= y c1o5))
(and (= x c1o6) (= y c1o9))
(and (= x c1o7) (= y c1o4))
(and (= x c1o7) (= y c1o5))
(and (= x c1o7) (= y c1o6))
(and (= x c1o7) (= y c1o8))
(and (= x c1o7) (= y c1o9))
(and (= x c1o8) (= y c1o5))
(and (= x c1o8) (= y c1o9))
(and (= x c1o10) (= y c1o4))
(and (= x c1o10) (= y c1o5))
(and (= x c1o10) (= y c1o6))
(and (= x c1o10) (= y c1o8))
(and (= x c1o10) (= y c1o9))
(and (= x c2o1) (= y c2o4))
(and (= x c2o1) (= y c2o5))
(and (= x c2o2) (= y c2o4))
(and (= x c2o2) (= y c2o5))
(and (= x c2o3) (= y c2o2))
(and (= x c2o3) (= y c2o4))
(and (= x c2o3) (= y c2o5))
(and (= x c3o2) (= y c3o1))
(and (= x c3o2) (= y c3o3))

))

(define-fun within ((x (_ BitVec 5))(y (_ BitVec 5))) Bool
(or
(and (= x t1o3) (= y t1o1))
(and (= x t2o2) (= y t2o1))
(and (= x t3o2) (= y t3o1))
(and (= x c3o3) (= y c3o1))

))



(define-fun eq ((x1 (_ BitVec 5))(x2 (_ BitVec 5))) Bool (= x1 x2))
(define-fun neq ((x1 (_ BitVec 5))(x2 (_ BitVec 5))) Bool (not (= x1 x2)))


(declare-const q1 Bool)
(declare-const q2 Bool)

(declare-const lbl_g1 (_ BitVec 3))
(assert (or
(= lbl_g1 person)
(= lbl_g1 cat)
(= lbl_g1 book)
(= lbl_g1 chair)
(= lbl_g1 tvmonitor)
(= lbl_g1 pottedplant)
)
)
(define-fun g1 ((x (_ BitVec 5))) Bool
(labelOf x lbl_g1)
)

(declare-const lbl_g2 (_ BitVec 3))
(assert (or
(= lbl_g2 person)
(= lbl_g2 cat)
(= lbl_g2 book)
(= lbl_g2 chair)
(= lbl_g2 tvmonitor)
(= lbl_g2 pottedplant)
)
)
(define-fun g2 ((x (_ BitVec 5))) Bool
(labelOf x lbl_g2)
)


(declare-const constval_person (_ BitVec 3))
(assert (= constval_person person))
(declare-const constval_cat (_ BitVec 3))
(assert (= constval_cat cat))
(declare-const constval_book (_ BitVec 3))
(assert (= constval_book book))
(declare-const constval_chair (_ BitVec 3))
(assert (= constval_chair chair))
(declare-const constval_tvmonitor (_ BitVec 3))
(assert (= constval_tvmonitor tvmonitor))
(declare-const constval_pottedplant (_ BitVec 3))
(assert (= constval_pottedplant pottedplant))

(declare-const eq_x1_x1 Bool)
(declare-const eq_x1_x2 Bool)
(declare-const eq_x2_x1 Bool)
(declare-const eq_x2_x2 Bool)
(declare-const neq_x1_x1 Bool)
(declare-const neq_x1_x2 Bool)
(declare-const neq_x2_x1 Bool)
(declare-const neq_x2_x2 Bool)
(declare-const labelOf_x1_person Bool)
(declare-const labelOf_x1_cat Bool)
(declare-const labelOf_x1_book Bool)
(declare-const labelOf_x1_chair Bool)
(declare-const labelOf_x1_tvmonitor Bool)
(declare-const labelOf_x1_pottedplant Bool)
(declare-const labelOf_x2_person Bool)
(declare-const labelOf_x2_cat Bool)
(declare-const labelOf_x2_book Bool)
(declare-const labelOf_x2_chair Bool)
(declare-const labelOf_x2_tvmonitor Bool)
(declare-const labelOf_x2_pottedplant Bool)
(declare-const leftOf_x1_x1 Bool)
(declare-const leftOf_x1_x2 Bool)
(declare-const leftOf_x2_x1 Bool)
(declare-const leftOf_x2_x2 Bool)
(declare-const rightOf_x1_x1 Bool)
(declare-const rightOf_x1_x2 Bool)
(declare-const rightOf_x2_x1 Bool)
(declare-const rightOf_x2_x2 Bool)
(declare-const above_x1_x1 Bool)
(declare-const above_x1_x2 Bool)
(declare-const above_x2_x1 Bool)
(declare-const above_x2_x2 Bool)
(declare-const below_x1_x1 Bool)
(declare-const below_x1_x2 Bool)
(declare-const below_x2_x1 Bool)
(declare-const below_x2_x2 Bool)
(declare-const within_x1_x1 Bool)
(declare-const within_x1_x2 Bool)
(declare-const within_x2_x1 Bool)
(declare-const within_x2_x2 Bool)

(define-fun f ((x1 (_ BitVec 5)) (x2 (_ BitVec 5))) Bool
(and
(=>
eq_x1_x1
(eq x1 x1)
)
(=>
eq_x1_x2
(eq x1 x2)
)
(=>
eq_x2_x1
(eq x2 x1)
)
(=>
eq_x2_x2
(eq x2 x2)
)
(=>
neq_x1_x1
(neq x1 x1)
)
(=>
neq_x1_x2
(neq x1 x2)
)
(=>
neq_x2_x1
(neq x2 x1)
)
(=>
neq_x2_x2
(neq x2 x2)
)
(=>
labelOf_x1_person
(labelOf x1 person)
)
(=>
labelOf_x1_cat
(labelOf x1 cat)
)
(=>
labelOf_x1_book
(labelOf x1 book)
)
(=>
labelOf_x1_chair
(labelOf x1 chair)
)
(=>
labelOf_x1_tvmonitor
(labelOf x1 tvmonitor)
)
(=>
labelOf_x1_pottedplant
(labelOf x1 pottedplant)
)
(=>
labelOf_x2_person
(labelOf x2 person)
)
(=>
labelOf_x2_cat
(labelOf x2 cat)
)
(=>
labelOf_x2_book
(labelOf x2 book)
)
(=>
labelOf_x2_chair
(labelOf x2 chair)
)
(=>
labelOf_x2_tvmonitor
(labelOf x2 tvmonitor)
)
(=>
labelOf_x2_pottedplant
(labelOf x2 pottedplant)
)
(=>
leftOf_x1_x1
(leftOf x1 x1)
)
(=>
leftOf_x1_x2
(leftOf x1 x2)
)
(=>
leftOf_x2_x1
(leftOf x2 x1)
)
(=>
leftOf_x2_x2
(leftOf x2 x2)
)
(=>
rightOf_x1_x1
(rightOf x1 x1)
)
(=>
rightOf_x1_x2
(rightOf x1 x2)
)
(=>
rightOf_x2_x1
(rightOf x2 x1)
)
(=>
rightOf_x2_x2
(rightOf x2 x2)
)
(=>
above_x1_x1
(above x1 x1)
)
(=>
above_x1_x2
(above x1 x2)
)
(=>
above_x2_x1
(above x2 x1)
)
(=>
above_x2_x2
(above x2 x2)
)
(=>
below_x1_x1
(below x1 x1)
)
(=>
below_x1_x2
(below x1 x2)
)
(=>
below_x2_x1
(below x2 x1)
)
(=>
below_x2_x2
(below x2 x2)
)
(=>
within_x1_x1
(within x1 x1)
)
(=>
within_x1_x2
(within x1 x2)
)
(=>
within_x2_x1
(within x2 x1)
)
(=>
within_x2_x2
(within x2 x2)
)
)

)

(declare-const c1 Bool)
(declare-const c2 Bool)
(declare-const c3 Bool)


(assert(or c1 c2 c3))
(assert (=> c1 (and (not c2) (not c3))))
(assert (=> c2 (and (not c1) (not c3))))
(assert (=> c3 (and (not c1) (not c2))))

(assert
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(and
(or
(g1 t1o1)
(g1 t1o2)
(g1 t1o3)
)
(and
(=>
(g1 t1o1)
(and
(or
(g2 t1o1)
(g2 t1o2)
(g2 t1o3)
)
(and
(=>
(g2 t1o1)
(f t1o1 t1o1)
)
(=>
(g2 t1o2)
(f t1o1 t1o2)
)
(=>
(g2 t1o3)
(f t1o1 t1o3)
)
)
)
)
(=>
(g1 t1o2)
(and
(or
(g2 t1o1)
(g2 t1o2)
(g2 t1o3)
)
(and
(=>
(g2 t1o1)
(f t1o2 t1o1)
)
(=>
(g2 t1o2)
(f t1o2 t1o2)
)
(=>
(g2 t1o3)
(f t1o2 t1o3)
)
)
)
)
(=>
(g1 t1o3)
(and
(or
(g2 t1o1)
(g2 t1o2)
(g2 t1o3)
)
(and
(=>
(g2 t1o1)
(f t1o3 t1o1)
)
(=>
(g2 t1o2)
(f t1o3 t1o2)
)
(=>
(g2 t1o3)
(f t1o3 t1o3)
)
)
)
)
)
)
)
(=>
(and
(= q1 true)
(= q2 false)
)
(and
(or
(g1 t1o1)
(g1 t1o2)
(g1 t1o3)
)
(and
(=>
(g1 t1o1)
(or
(and
(g2 t1o1)
(f t1o1 t1o1)
)
(and
(g2 t1o2)
(f t1o1 t1o2)
)
(and
(g2 t1o3)
(f t1o1 t1o3)
)
)
)
(=>
(g1 t1o2)
(or
(and
(g2 t1o1)
(f t1o2 t1o1)
)
(and
(g2 t1o2)
(f t1o2 t1o2)
)
(and
(g2 t1o3)
(f t1o2 t1o3)
)
)
)
(=>
(g1 t1o3)
(or
(and
(g2 t1o1)
(f t1o3 t1o1)
)
(and
(g2 t1o2)
(f t1o3 t1o2)
)
(and
(g2 t1o3)
(f t1o3 t1o3)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 true)
)
(or
(and
(g1 t1o1)
(and
(or
(g2 t1o1)
(g2 t1o2)
(g2 t1o3)
)
(and
(=>
(g2 t1o1)
(f t1o1 t1o1)
)
(=>
(g2 t1o2)
(f t1o1 t1o2)
)
(=>
(g2 t1o3)
(f t1o1 t1o3)
)
)
)
)
(and
(g1 t1o2)
(and
(or
(g2 t1o1)
(g2 t1o2)
(g2 t1o3)
)
(and
(=>
(g2 t1o1)
(f t1o2 t1o1)
)
(=>
(g2 t1o2)
(f t1o2 t1o2)
)
(=>
(g2 t1o3)
(f t1o2 t1o3)
)
)
)
)
(and
(g1 t1o3)
(and
(or
(g2 t1o1)
(g2 t1o2)
(g2 t1o3)
)
(and
(=>
(g2 t1o1)
(f t1o3 t1o1)
)
(=>
(g2 t1o2)
(f t1o3 t1o2)
)
(=>
(g2 t1o3)
(f t1o3 t1o3)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 false)
)
(or
(and
(g1 t1o1)
(or
(and
(g2 t1o1)
(f t1o1 t1o1)
)
(and
(g2 t1o2)
(f t1o1 t1o2)
)
(and
(g2 t1o3)
(f t1o1 t1o3)
)
)
)
(and
(g1 t1o2)
(or
(and
(g2 t1o1)
(f t1o2 t1o1)
)
(and
(g2 t1o2)
(f t1o2 t1o2)
)
(and
(g2 t1o3)
(f t1o2 t1o3)
)
)
)
(and
(g1 t1o3)
(or
(and
(g2 t1o1)
(f t1o3 t1o1)
)
(and
(g2 t1o2)
(f t1o3 t1o2)
)
(and
(g2 t1o3)
(f t1o3 t1o3)
)
)
)
)
)
)
)

(assert
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(and
(or
(g1 t2o1)
(g1 t2o2)
)
(and
(=>
(g1 t2o1)
(and
(or
(g2 t2o1)
(g2 t2o2)
)
(and
(=>
(g2 t2o1)
(f t2o1 t2o1)
)
(=>
(g2 t2o2)
(f t2o1 t2o2)
)
)
)
)
(=>
(g1 t2o2)
(and
(or
(g2 t2o1)
(g2 t2o2)
)
(and
(=>
(g2 t2o1)
(f t2o2 t2o1)
)
(=>
(g2 t2o2)
(f t2o2 t2o2)
)
)
)
)
)
)
)
(=>
(and
(= q1 true)
(= q2 false)
)
(and
(or
(g1 t2o1)
(g1 t2o2)
)
(and
(=>
(g1 t2o1)
(or
(and
(g2 t2o1)
(f t2o1 t2o1)
)
(and
(g2 t2o2)
(f t2o1 t2o2)
)
)
)
(=>
(g1 t2o2)
(or
(and
(g2 t2o1)
(f t2o2 t2o1)
)
(and
(g2 t2o2)
(f t2o2 t2o2)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 true)
)
(or
(and
(g1 t2o1)
(and
(or
(g2 t2o1)
(g2 t2o2)
)
(and
(=>
(g2 t2o1)
(f t2o1 t2o1)
)
(=>
(g2 t2o2)
(f t2o1 t2o2)
)
)
)
)
(and
(g1 t2o2)
(and
(or
(g2 t2o1)
(g2 t2o2)
)
(and
(=>
(g2 t2o1)
(f t2o2 t2o1)
)
(=>
(g2 t2o2)
(f t2o2 t2o2)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 false)
)
(or
(and
(g1 t2o1)
(or
(and
(g2 t2o1)
(f t2o1 t2o1)
)
(and
(g2 t2o2)
(f t2o1 t2o2)
)
)
)
(and
(g1 t2o2)
(or
(and
(g2 t2o1)
(f t2o2 t2o1)
)
(and
(g2 t2o2)
(f t2o2 t2o2)
)
)
)
)
)
)
)

(assert
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(and
(or
(g1 t3o1)
(g1 t3o2)
)
(and
(=>
(g1 t3o1)
(and
(or
(g2 t3o1)
(g2 t3o2)
)
(and
(=>
(g2 t3o1)
(f t3o1 t3o1)
)
(=>
(g2 t3o2)
(f t3o1 t3o2)
)
)
)
)
(=>
(g1 t3o2)
(and
(or
(g2 t3o1)
(g2 t3o2)
)
(and
(=>
(g2 t3o1)
(f t3o2 t3o1)
)
(=>
(g2 t3o2)
(f t3o2 t3o2)
)
)
)
)
)
)
)
(=>
(and
(= q1 true)
(= q2 false)
)
(and
(or
(g1 t3o1)
(g1 t3o2)
)
(and
(=>
(g1 t3o1)
(or
(and
(g2 t3o1)
(f t3o1 t3o1)
)
(and
(g2 t3o2)
(f t3o1 t3o2)
)
)
)
(=>
(g1 t3o2)
(or
(and
(g2 t3o1)
(f t3o2 t3o1)
)
(and
(g2 t3o2)
(f t3o2 t3o2)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 true)
)
(or
(and
(g1 t3o1)
(and
(or
(g2 t3o1)
(g2 t3o2)
)
(and
(=>
(g2 t3o1)
(f t3o1 t3o1)
)
(=>
(g2 t3o2)
(f t3o1 t3o2)
)
)
)
)
(and
(g1 t3o2)
(and
(or
(g2 t3o1)
(g2 t3o2)
)
(and
(=>
(g2 t3o1)
(f t3o2 t3o1)
)
(=>
(g2 t3o2)
(f t3o2 t3o2)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 false)
)
(or
(and
(g1 t3o1)
(or
(and
(g2 t3o1)
(f t3o1 t3o1)
)
(and
(g2 t3o2)
(f t3o1 t3o2)
)
)
)
(and
(g1 t3o2)
(or
(and
(g2 t3o1)
(f t3o2 t3o1)
)
(and
(g2 t3o2)
(f t3o2 t3o2)
)
)
)
)
)
)
)

(assert
(=>
(= c1 true)
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(and
(or
(g1 c1o1)
(g1 c1o2)
(g1 c1o3)
(g1 c1o4)
(g1 c1o5)
(g1 c1o6)
(g1 c1o7)
(g1 c1o8)
(g1 c1o9)
(g1 c1o10)
)
(and
(=>
(g1 c1o1)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o1 c1o1)
)
(=>
(g2 c1o2)
(f c1o1 c1o2)
)
(=>
(g2 c1o3)
(f c1o1 c1o3)
)
(=>
(g2 c1o4)
(f c1o1 c1o4)
)
(=>
(g2 c1o5)
(f c1o1 c1o5)
)
(=>
(g2 c1o6)
(f c1o1 c1o6)
)
(=>
(g2 c1o7)
(f c1o1 c1o7)
)
(=>
(g2 c1o8)
(f c1o1 c1o8)
)
(=>
(g2 c1o9)
(f c1o1 c1o9)
)
(=>
(g2 c1o10)
(f c1o1 c1o10)
)
)
)
)
(=>
(g1 c1o2)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o2 c1o1)
)
(=>
(g2 c1o2)
(f c1o2 c1o2)
)
(=>
(g2 c1o3)
(f c1o2 c1o3)
)
(=>
(g2 c1o4)
(f c1o2 c1o4)
)
(=>
(g2 c1o5)
(f c1o2 c1o5)
)
(=>
(g2 c1o6)
(f c1o2 c1o6)
)
(=>
(g2 c1o7)
(f c1o2 c1o7)
)
(=>
(g2 c1o8)
(f c1o2 c1o8)
)
(=>
(g2 c1o9)
(f c1o2 c1o9)
)
(=>
(g2 c1o10)
(f c1o2 c1o10)
)
)
)
)
(=>
(g1 c1o3)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o3 c1o1)
)
(=>
(g2 c1o2)
(f c1o3 c1o2)
)
(=>
(g2 c1o3)
(f c1o3 c1o3)
)
(=>
(g2 c1o4)
(f c1o3 c1o4)
)
(=>
(g2 c1o5)
(f c1o3 c1o5)
)
(=>
(g2 c1o6)
(f c1o3 c1o6)
)
(=>
(g2 c1o7)
(f c1o3 c1o7)
)
(=>
(g2 c1o8)
(f c1o3 c1o8)
)
(=>
(g2 c1o9)
(f c1o3 c1o9)
)
(=>
(g2 c1o10)
(f c1o3 c1o10)
)
)
)
)
(=>
(g1 c1o4)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o4 c1o1)
)
(=>
(g2 c1o2)
(f c1o4 c1o2)
)
(=>
(g2 c1o3)
(f c1o4 c1o3)
)
(=>
(g2 c1o4)
(f c1o4 c1o4)
)
(=>
(g2 c1o5)
(f c1o4 c1o5)
)
(=>
(g2 c1o6)
(f c1o4 c1o6)
)
(=>
(g2 c1o7)
(f c1o4 c1o7)
)
(=>
(g2 c1o8)
(f c1o4 c1o8)
)
(=>
(g2 c1o9)
(f c1o4 c1o9)
)
(=>
(g2 c1o10)
(f c1o4 c1o10)
)
)
)
)
(=>
(g1 c1o5)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o5 c1o1)
)
(=>
(g2 c1o2)
(f c1o5 c1o2)
)
(=>
(g2 c1o3)
(f c1o5 c1o3)
)
(=>
(g2 c1o4)
(f c1o5 c1o4)
)
(=>
(g2 c1o5)
(f c1o5 c1o5)
)
(=>
(g2 c1o6)
(f c1o5 c1o6)
)
(=>
(g2 c1o7)
(f c1o5 c1o7)
)
(=>
(g2 c1o8)
(f c1o5 c1o8)
)
(=>
(g2 c1o9)
(f c1o5 c1o9)
)
(=>
(g2 c1o10)
(f c1o5 c1o10)
)
)
)
)
(=>
(g1 c1o6)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o6 c1o1)
)
(=>
(g2 c1o2)
(f c1o6 c1o2)
)
(=>
(g2 c1o3)
(f c1o6 c1o3)
)
(=>
(g2 c1o4)
(f c1o6 c1o4)
)
(=>
(g2 c1o5)
(f c1o6 c1o5)
)
(=>
(g2 c1o6)
(f c1o6 c1o6)
)
(=>
(g2 c1o7)
(f c1o6 c1o7)
)
(=>
(g2 c1o8)
(f c1o6 c1o8)
)
(=>
(g2 c1o9)
(f c1o6 c1o9)
)
(=>
(g2 c1o10)
(f c1o6 c1o10)
)
)
)
)
(=>
(g1 c1o7)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o7 c1o1)
)
(=>
(g2 c1o2)
(f c1o7 c1o2)
)
(=>
(g2 c1o3)
(f c1o7 c1o3)
)
(=>
(g2 c1o4)
(f c1o7 c1o4)
)
(=>
(g2 c1o5)
(f c1o7 c1o5)
)
(=>
(g2 c1o6)
(f c1o7 c1o6)
)
(=>
(g2 c1o7)
(f c1o7 c1o7)
)
(=>
(g2 c1o8)
(f c1o7 c1o8)
)
(=>
(g2 c1o9)
(f c1o7 c1o9)
)
(=>
(g2 c1o10)
(f c1o7 c1o10)
)
)
)
)
(=>
(g1 c1o8)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o8 c1o1)
)
(=>
(g2 c1o2)
(f c1o8 c1o2)
)
(=>
(g2 c1o3)
(f c1o8 c1o3)
)
(=>
(g2 c1o4)
(f c1o8 c1o4)
)
(=>
(g2 c1o5)
(f c1o8 c1o5)
)
(=>
(g2 c1o6)
(f c1o8 c1o6)
)
(=>
(g2 c1o7)
(f c1o8 c1o7)
)
(=>
(g2 c1o8)
(f c1o8 c1o8)
)
(=>
(g2 c1o9)
(f c1o8 c1o9)
)
(=>
(g2 c1o10)
(f c1o8 c1o10)
)
)
)
)
(=>
(g1 c1o9)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o9 c1o1)
)
(=>
(g2 c1o2)
(f c1o9 c1o2)
)
(=>
(g2 c1o3)
(f c1o9 c1o3)
)
(=>
(g2 c1o4)
(f c1o9 c1o4)
)
(=>
(g2 c1o5)
(f c1o9 c1o5)
)
(=>
(g2 c1o6)
(f c1o9 c1o6)
)
(=>
(g2 c1o7)
(f c1o9 c1o7)
)
(=>
(g2 c1o8)
(f c1o9 c1o8)
)
(=>
(g2 c1o9)
(f c1o9 c1o9)
)
(=>
(g2 c1o10)
(f c1o9 c1o10)
)
)
)
)
(=>
(g1 c1o10)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o10 c1o1)
)
(=>
(g2 c1o2)
(f c1o10 c1o2)
)
(=>
(g2 c1o3)
(f c1o10 c1o3)
)
(=>
(g2 c1o4)
(f c1o10 c1o4)
)
(=>
(g2 c1o5)
(f c1o10 c1o5)
)
(=>
(g2 c1o6)
(f c1o10 c1o6)
)
(=>
(g2 c1o7)
(f c1o10 c1o7)
)
(=>
(g2 c1o8)
(f c1o10 c1o8)
)
(=>
(g2 c1o9)
(f c1o10 c1o9)
)
(=>
(g2 c1o10)
(f c1o10 c1o10)
)
)
)
)
)
)
)
(=>
(and
(= q1 true)
(= q2 false)
)
(and
(or
(g1 c1o1)
(g1 c1o2)
(g1 c1o3)
(g1 c1o4)
(g1 c1o5)
(g1 c1o6)
(g1 c1o7)
(g1 c1o8)
(g1 c1o9)
(g1 c1o10)
)
(and
(=>
(g1 c1o1)
(or
(and
(g2 c1o1)
(f c1o1 c1o1)
)
(and
(g2 c1o2)
(f c1o1 c1o2)
)
(and
(g2 c1o3)
(f c1o1 c1o3)
)
(and
(g2 c1o4)
(f c1o1 c1o4)
)
(and
(g2 c1o5)
(f c1o1 c1o5)
)
(and
(g2 c1o6)
(f c1o1 c1o6)
)
(and
(g2 c1o7)
(f c1o1 c1o7)
)
(and
(g2 c1o8)
(f c1o1 c1o8)
)
(and
(g2 c1o9)
(f c1o1 c1o9)
)
(and
(g2 c1o10)
(f c1o1 c1o10)
)
)
)
(=>
(g1 c1o2)
(or
(and
(g2 c1o1)
(f c1o2 c1o1)
)
(and
(g2 c1o2)
(f c1o2 c1o2)
)
(and
(g2 c1o3)
(f c1o2 c1o3)
)
(and
(g2 c1o4)
(f c1o2 c1o4)
)
(and
(g2 c1o5)
(f c1o2 c1o5)
)
(and
(g2 c1o6)
(f c1o2 c1o6)
)
(and
(g2 c1o7)
(f c1o2 c1o7)
)
(and
(g2 c1o8)
(f c1o2 c1o8)
)
(and
(g2 c1o9)
(f c1o2 c1o9)
)
(and
(g2 c1o10)
(f c1o2 c1o10)
)
)
)
(=>
(g1 c1o3)
(or
(and
(g2 c1o1)
(f c1o3 c1o1)
)
(and
(g2 c1o2)
(f c1o3 c1o2)
)
(and
(g2 c1o3)
(f c1o3 c1o3)
)
(and
(g2 c1o4)
(f c1o3 c1o4)
)
(and
(g2 c1o5)
(f c1o3 c1o5)
)
(and
(g2 c1o6)
(f c1o3 c1o6)
)
(and
(g2 c1o7)
(f c1o3 c1o7)
)
(and
(g2 c1o8)
(f c1o3 c1o8)
)
(and
(g2 c1o9)
(f c1o3 c1o9)
)
(and
(g2 c1o10)
(f c1o3 c1o10)
)
)
)
(=>
(g1 c1o4)
(or
(and
(g2 c1o1)
(f c1o4 c1o1)
)
(and
(g2 c1o2)
(f c1o4 c1o2)
)
(and
(g2 c1o3)
(f c1o4 c1o3)
)
(and
(g2 c1o4)
(f c1o4 c1o4)
)
(and
(g2 c1o5)
(f c1o4 c1o5)
)
(and
(g2 c1o6)
(f c1o4 c1o6)
)
(and
(g2 c1o7)
(f c1o4 c1o7)
)
(and
(g2 c1o8)
(f c1o4 c1o8)
)
(and
(g2 c1o9)
(f c1o4 c1o9)
)
(and
(g2 c1o10)
(f c1o4 c1o10)
)
)
)
(=>
(g1 c1o5)
(or
(and
(g2 c1o1)
(f c1o5 c1o1)
)
(and
(g2 c1o2)
(f c1o5 c1o2)
)
(and
(g2 c1o3)
(f c1o5 c1o3)
)
(and
(g2 c1o4)
(f c1o5 c1o4)
)
(and
(g2 c1o5)
(f c1o5 c1o5)
)
(and
(g2 c1o6)
(f c1o5 c1o6)
)
(and
(g2 c1o7)
(f c1o5 c1o7)
)
(and
(g2 c1o8)
(f c1o5 c1o8)
)
(and
(g2 c1o9)
(f c1o5 c1o9)
)
(and
(g2 c1o10)
(f c1o5 c1o10)
)
)
)
(=>
(g1 c1o6)
(or
(and
(g2 c1o1)
(f c1o6 c1o1)
)
(and
(g2 c1o2)
(f c1o6 c1o2)
)
(and
(g2 c1o3)
(f c1o6 c1o3)
)
(and
(g2 c1o4)
(f c1o6 c1o4)
)
(and
(g2 c1o5)
(f c1o6 c1o5)
)
(and
(g2 c1o6)
(f c1o6 c1o6)
)
(and
(g2 c1o7)
(f c1o6 c1o7)
)
(and
(g2 c1o8)
(f c1o6 c1o8)
)
(and
(g2 c1o9)
(f c1o6 c1o9)
)
(and
(g2 c1o10)
(f c1o6 c1o10)
)
)
)
(=>
(g1 c1o7)
(or
(and
(g2 c1o1)
(f c1o7 c1o1)
)
(and
(g2 c1o2)
(f c1o7 c1o2)
)
(and
(g2 c1o3)
(f c1o7 c1o3)
)
(and
(g2 c1o4)
(f c1o7 c1o4)
)
(and
(g2 c1o5)
(f c1o7 c1o5)
)
(and
(g2 c1o6)
(f c1o7 c1o6)
)
(and
(g2 c1o7)
(f c1o7 c1o7)
)
(and
(g2 c1o8)
(f c1o7 c1o8)
)
(and
(g2 c1o9)
(f c1o7 c1o9)
)
(and
(g2 c1o10)
(f c1o7 c1o10)
)
)
)
(=>
(g1 c1o8)
(or
(and
(g2 c1o1)
(f c1o8 c1o1)
)
(and
(g2 c1o2)
(f c1o8 c1o2)
)
(and
(g2 c1o3)
(f c1o8 c1o3)
)
(and
(g2 c1o4)
(f c1o8 c1o4)
)
(and
(g2 c1o5)
(f c1o8 c1o5)
)
(and
(g2 c1o6)
(f c1o8 c1o6)
)
(and
(g2 c1o7)
(f c1o8 c1o7)
)
(and
(g2 c1o8)
(f c1o8 c1o8)
)
(and
(g2 c1o9)
(f c1o8 c1o9)
)
(and
(g2 c1o10)
(f c1o8 c1o10)
)
)
)
(=>
(g1 c1o9)
(or
(and
(g2 c1o1)
(f c1o9 c1o1)
)
(and
(g2 c1o2)
(f c1o9 c1o2)
)
(and
(g2 c1o3)
(f c1o9 c1o3)
)
(and
(g2 c1o4)
(f c1o9 c1o4)
)
(and
(g2 c1o5)
(f c1o9 c1o5)
)
(and
(g2 c1o6)
(f c1o9 c1o6)
)
(and
(g2 c1o7)
(f c1o9 c1o7)
)
(and
(g2 c1o8)
(f c1o9 c1o8)
)
(and
(g2 c1o9)
(f c1o9 c1o9)
)
(and
(g2 c1o10)
(f c1o9 c1o10)
)
)
)
(=>
(g1 c1o10)
(or
(and
(g2 c1o1)
(f c1o10 c1o1)
)
(and
(g2 c1o2)
(f c1o10 c1o2)
)
(and
(g2 c1o3)
(f c1o10 c1o3)
)
(and
(g2 c1o4)
(f c1o10 c1o4)
)
(and
(g2 c1o5)
(f c1o10 c1o5)
)
(and
(g2 c1o6)
(f c1o10 c1o6)
)
(and
(g2 c1o7)
(f c1o10 c1o7)
)
(and
(g2 c1o8)
(f c1o10 c1o8)
)
(and
(g2 c1o9)
(f c1o10 c1o9)
)
(and
(g2 c1o10)
(f c1o10 c1o10)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 true)
)
(or
(and
(g1 c1o1)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o1 c1o1)
)
(=>
(g2 c1o2)
(f c1o1 c1o2)
)
(=>
(g2 c1o3)
(f c1o1 c1o3)
)
(=>
(g2 c1o4)
(f c1o1 c1o4)
)
(=>
(g2 c1o5)
(f c1o1 c1o5)
)
(=>
(g2 c1o6)
(f c1o1 c1o6)
)
(=>
(g2 c1o7)
(f c1o1 c1o7)
)
(=>
(g2 c1o8)
(f c1o1 c1o8)
)
(=>
(g2 c1o9)
(f c1o1 c1o9)
)
(=>
(g2 c1o10)
(f c1o1 c1o10)
)
)
)
)
(and
(g1 c1o2)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o2 c1o1)
)
(=>
(g2 c1o2)
(f c1o2 c1o2)
)
(=>
(g2 c1o3)
(f c1o2 c1o3)
)
(=>
(g2 c1o4)
(f c1o2 c1o4)
)
(=>
(g2 c1o5)
(f c1o2 c1o5)
)
(=>
(g2 c1o6)
(f c1o2 c1o6)
)
(=>
(g2 c1o7)
(f c1o2 c1o7)
)
(=>
(g2 c1o8)
(f c1o2 c1o8)
)
(=>
(g2 c1o9)
(f c1o2 c1o9)
)
(=>
(g2 c1o10)
(f c1o2 c1o10)
)
)
)
)
(and
(g1 c1o3)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o3 c1o1)
)
(=>
(g2 c1o2)
(f c1o3 c1o2)
)
(=>
(g2 c1o3)
(f c1o3 c1o3)
)
(=>
(g2 c1o4)
(f c1o3 c1o4)
)
(=>
(g2 c1o5)
(f c1o3 c1o5)
)
(=>
(g2 c1o6)
(f c1o3 c1o6)
)
(=>
(g2 c1o7)
(f c1o3 c1o7)
)
(=>
(g2 c1o8)
(f c1o3 c1o8)
)
(=>
(g2 c1o9)
(f c1o3 c1o9)
)
(=>
(g2 c1o10)
(f c1o3 c1o10)
)
)
)
)
(and
(g1 c1o4)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o4 c1o1)
)
(=>
(g2 c1o2)
(f c1o4 c1o2)
)
(=>
(g2 c1o3)
(f c1o4 c1o3)
)
(=>
(g2 c1o4)
(f c1o4 c1o4)
)
(=>
(g2 c1o5)
(f c1o4 c1o5)
)
(=>
(g2 c1o6)
(f c1o4 c1o6)
)
(=>
(g2 c1o7)
(f c1o4 c1o7)
)
(=>
(g2 c1o8)
(f c1o4 c1o8)
)
(=>
(g2 c1o9)
(f c1o4 c1o9)
)
(=>
(g2 c1o10)
(f c1o4 c1o10)
)
)
)
)
(and
(g1 c1o5)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o5 c1o1)
)
(=>
(g2 c1o2)
(f c1o5 c1o2)
)
(=>
(g2 c1o3)
(f c1o5 c1o3)
)
(=>
(g2 c1o4)
(f c1o5 c1o4)
)
(=>
(g2 c1o5)
(f c1o5 c1o5)
)
(=>
(g2 c1o6)
(f c1o5 c1o6)
)
(=>
(g2 c1o7)
(f c1o5 c1o7)
)
(=>
(g2 c1o8)
(f c1o5 c1o8)
)
(=>
(g2 c1o9)
(f c1o5 c1o9)
)
(=>
(g2 c1o10)
(f c1o5 c1o10)
)
)
)
)
(and
(g1 c1o6)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o6 c1o1)
)
(=>
(g2 c1o2)
(f c1o6 c1o2)
)
(=>
(g2 c1o3)
(f c1o6 c1o3)
)
(=>
(g2 c1o4)
(f c1o6 c1o4)
)
(=>
(g2 c1o5)
(f c1o6 c1o5)
)
(=>
(g2 c1o6)
(f c1o6 c1o6)
)
(=>
(g2 c1o7)
(f c1o6 c1o7)
)
(=>
(g2 c1o8)
(f c1o6 c1o8)
)
(=>
(g2 c1o9)
(f c1o6 c1o9)
)
(=>
(g2 c1o10)
(f c1o6 c1o10)
)
)
)
)
(and
(g1 c1o7)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o7 c1o1)
)
(=>
(g2 c1o2)
(f c1o7 c1o2)
)
(=>
(g2 c1o3)
(f c1o7 c1o3)
)
(=>
(g2 c1o4)
(f c1o7 c1o4)
)
(=>
(g2 c1o5)
(f c1o7 c1o5)
)
(=>
(g2 c1o6)
(f c1o7 c1o6)
)
(=>
(g2 c1o7)
(f c1o7 c1o7)
)
(=>
(g2 c1o8)
(f c1o7 c1o8)
)
(=>
(g2 c1o9)
(f c1o7 c1o9)
)
(=>
(g2 c1o10)
(f c1o7 c1o10)
)
)
)
)
(and
(g1 c1o8)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o8 c1o1)
)
(=>
(g2 c1o2)
(f c1o8 c1o2)
)
(=>
(g2 c1o3)
(f c1o8 c1o3)
)
(=>
(g2 c1o4)
(f c1o8 c1o4)
)
(=>
(g2 c1o5)
(f c1o8 c1o5)
)
(=>
(g2 c1o6)
(f c1o8 c1o6)
)
(=>
(g2 c1o7)
(f c1o8 c1o7)
)
(=>
(g2 c1o8)
(f c1o8 c1o8)
)
(=>
(g2 c1o9)
(f c1o8 c1o9)
)
(=>
(g2 c1o10)
(f c1o8 c1o10)
)
)
)
)
(and
(g1 c1o9)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o9 c1o1)
)
(=>
(g2 c1o2)
(f c1o9 c1o2)
)
(=>
(g2 c1o3)
(f c1o9 c1o3)
)
(=>
(g2 c1o4)
(f c1o9 c1o4)
)
(=>
(g2 c1o5)
(f c1o9 c1o5)
)
(=>
(g2 c1o6)
(f c1o9 c1o6)
)
(=>
(g2 c1o7)
(f c1o9 c1o7)
)
(=>
(g2 c1o8)
(f c1o9 c1o8)
)
(=>
(g2 c1o9)
(f c1o9 c1o9)
)
(=>
(g2 c1o10)
(f c1o9 c1o10)
)
)
)
)
(and
(g1 c1o10)
(and
(or
(g2 c1o1)
(g2 c1o2)
(g2 c1o3)
(g2 c1o4)
(g2 c1o5)
(g2 c1o6)
(g2 c1o7)
(g2 c1o8)
(g2 c1o9)
(g2 c1o10)
)
(and
(=>
(g2 c1o1)
(f c1o10 c1o1)
)
(=>
(g2 c1o2)
(f c1o10 c1o2)
)
(=>
(g2 c1o3)
(f c1o10 c1o3)
)
(=>
(g2 c1o4)
(f c1o10 c1o4)
)
(=>
(g2 c1o5)
(f c1o10 c1o5)
)
(=>
(g2 c1o6)
(f c1o10 c1o6)
)
(=>
(g2 c1o7)
(f c1o10 c1o7)
)
(=>
(g2 c1o8)
(f c1o10 c1o8)
)
(=>
(g2 c1o9)
(f c1o10 c1o9)
)
(=>
(g2 c1o10)
(f c1o10 c1o10)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 false)
)
(or
(and
(g1 c1o1)
(or
(and
(g2 c1o1)
(f c1o1 c1o1)
)
(and
(g2 c1o2)
(f c1o1 c1o2)
)
(and
(g2 c1o3)
(f c1o1 c1o3)
)
(and
(g2 c1o4)
(f c1o1 c1o4)
)
(and
(g2 c1o5)
(f c1o1 c1o5)
)
(and
(g2 c1o6)
(f c1o1 c1o6)
)
(and
(g2 c1o7)
(f c1o1 c1o7)
)
(and
(g2 c1o8)
(f c1o1 c1o8)
)
(and
(g2 c1o9)
(f c1o1 c1o9)
)
(and
(g2 c1o10)
(f c1o1 c1o10)
)
)
)
(and
(g1 c1o2)
(or
(and
(g2 c1o1)
(f c1o2 c1o1)
)
(and
(g2 c1o2)
(f c1o2 c1o2)
)
(and
(g2 c1o3)
(f c1o2 c1o3)
)
(and
(g2 c1o4)
(f c1o2 c1o4)
)
(and
(g2 c1o5)
(f c1o2 c1o5)
)
(and
(g2 c1o6)
(f c1o2 c1o6)
)
(and
(g2 c1o7)
(f c1o2 c1o7)
)
(and
(g2 c1o8)
(f c1o2 c1o8)
)
(and
(g2 c1o9)
(f c1o2 c1o9)
)
(and
(g2 c1o10)
(f c1o2 c1o10)
)
)
)
(and
(g1 c1o3)
(or
(and
(g2 c1o1)
(f c1o3 c1o1)
)
(and
(g2 c1o2)
(f c1o3 c1o2)
)
(and
(g2 c1o3)
(f c1o3 c1o3)
)
(and
(g2 c1o4)
(f c1o3 c1o4)
)
(and
(g2 c1o5)
(f c1o3 c1o5)
)
(and
(g2 c1o6)
(f c1o3 c1o6)
)
(and
(g2 c1o7)
(f c1o3 c1o7)
)
(and
(g2 c1o8)
(f c1o3 c1o8)
)
(and
(g2 c1o9)
(f c1o3 c1o9)
)
(and
(g2 c1o10)
(f c1o3 c1o10)
)
)
)
(and
(g1 c1o4)
(or
(and
(g2 c1o1)
(f c1o4 c1o1)
)
(and
(g2 c1o2)
(f c1o4 c1o2)
)
(and
(g2 c1o3)
(f c1o4 c1o3)
)
(and
(g2 c1o4)
(f c1o4 c1o4)
)
(and
(g2 c1o5)
(f c1o4 c1o5)
)
(and
(g2 c1o6)
(f c1o4 c1o6)
)
(and
(g2 c1o7)
(f c1o4 c1o7)
)
(and
(g2 c1o8)
(f c1o4 c1o8)
)
(and
(g2 c1o9)
(f c1o4 c1o9)
)
(and
(g2 c1o10)
(f c1o4 c1o10)
)
)
)
(and
(g1 c1o5)
(or
(and
(g2 c1o1)
(f c1o5 c1o1)
)
(and
(g2 c1o2)
(f c1o5 c1o2)
)
(and
(g2 c1o3)
(f c1o5 c1o3)
)
(and
(g2 c1o4)
(f c1o5 c1o4)
)
(and
(g2 c1o5)
(f c1o5 c1o5)
)
(and
(g2 c1o6)
(f c1o5 c1o6)
)
(and
(g2 c1o7)
(f c1o5 c1o7)
)
(and
(g2 c1o8)
(f c1o5 c1o8)
)
(and
(g2 c1o9)
(f c1o5 c1o9)
)
(and
(g2 c1o10)
(f c1o5 c1o10)
)
)
)
(and
(g1 c1o6)
(or
(and
(g2 c1o1)
(f c1o6 c1o1)
)
(and
(g2 c1o2)
(f c1o6 c1o2)
)
(and
(g2 c1o3)
(f c1o6 c1o3)
)
(and
(g2 c1o4)
(f c1o6 c1o4)
)
(and
(g2 c1o5)
(f c1o6 c1o5)
)
(and
(g2 c1o6)
(f c1o6 c1o6)
)
(and
(g2 c1o7)
(f c1o6 c1o7)
)
(and
(g2 c1o8)
(f c1o6 c1o8)
)
(and
(g2 c1o9)
(f c1o6 c1o9)
)
(and
(g2 c1o10)
(f c1o6 c1o10)
)
)
)
(and
(g1 c1o7)
(or
(and
(g2 c1o1)
(f c1o7 c1o1)
)
(and
(g2 c1o2)
(f c1o7 c1o2)
)
(and
(g2 c1o3)
(f c1o7 c1o3)
)
(and
(g2 c1o4)
(f c1o7 c1o4)
)
(and
(g2 c1o5)
(f c1o7 c1o5)
)
(and
(g2 c1o6)
(f c1o7 c1o6)
)
(and
(g2 c1o7)
(f c1o7 c1o7)
)
(and
(g2 c1o8)
(f c1o7 c1o8)
)
(and
(g2 c1o9)
(f c1o7 c1o9)
)
(and
(g2 c1o10)
(f c1o7 c1o10)
)
)
)
(and
(g1 c1o8)
(or
(and
(g2 c1o1)
(f c1o8 c1o1)
)
(and
(g2 c1o2)
(f c1o8 c1o2)
)
(and
(g2 c1o3)
(f c1o8 c1o3)
)
(and
(g2 c1o4)
(f c1o8 c1o4)
)
(and
(g2 c1o5)
(f c1o8 c1o5)
)
(and
(g2 c1o6)
(f c1o8 c1o6)
)
(and
(g2 c1o7)
(f c1o8 c1o7)
)
(and
(g2 c1o8)
(f c1o8 c1o8)
)
(and
(g2 c1o9)
(f c1o8 c1o9)
)
(and
(g2 c1o10)
(f c1o8 c1o10)
)
)
)
(and
(g1 c1o9)
(or
(and
(g2 c1o1)
(f c1o9 c1o1)
)
(and
(g2 c1o2)
(f c1o9 c1o2)
)
(and
(g2 c1o3)
(f c1o9 c1o3)
)
(and
(g2 c1o4)
(f c1o9 c1o4)
)
(and
(g2 c1o5)
(f c1o9 c1o5)
)
(and
(g2 c1o6)
(f c1o9 c1o6)
)
(and
(g2 c1o7)
(f c1o9 c1o7)
)
(and
(g2 c1o8)
(f c1o9 c1o8)
)
(and
(g2 c1o9)
(f c1o9 c1o9)
)
(and
(g2 c1o10)
(f c1o9 c1o10)
)
)
)
(and
(g1 c1o10)
(or
(and
(g2 c1o1)
(f c1o10 c1o1)
)
(and
(g2 c1o2)
(f c1o10 c1o2)
)
(and
(g2 c1o3)
(f c1o10 c1o3)
)
(and
(g2 c1o4)
(f c1o10 c1o4)
)
(and
(g2 c1o5)
(f c1o10 c1o5)
)
(and
(g2 c1o6)
(f c1o10 c1o6)
)
(and
(g2 c1o7)
(f c1o10 c1o7)
)
(and
(g2 c1o8)
(f c1o10 c1o8)
)
(and
(g2 c1o9)
(f c1o10 c1o9)
)
(and
(g2 c1o10)
(f c1o10 c1o10)
)
)
)
)
)
)
)
)

(assert
(=>
(= c1 false)
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(or
(and
(g1 c1o1)
(or
(and
(g2 c1o1)
(not
(f c1o1 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o1 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o1 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o1 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o1 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o1 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o1 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o1 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o1 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o1 c1o10)
)
)
)
)
(and
(g1 c1o2)
(or
(and
(g2 c1o1)
(not
(f c1o2 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o2 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o2 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o2 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o2 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o2 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o2 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o2 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o2 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o2 c1o10)
)
)
)
)
(and
(g1 c1o3)
(or
(and
(g2 c1o1)
(not
(f c1o3 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o3 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o3 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o3 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o3 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o3 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o3 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o3 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o3 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o3 c1o10)
)
)
)
)
(and
(g1 c1o4)
(or
(and
(g2 c1o1)
(not
(f c1o4 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o4 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o4 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o4 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o4 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o4 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o4 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o4 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o4 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o4 c1o10)
)
)
)
)
(and
(g1 c1o5)
(or
(and
(g2 c1o1)
(not
(f c1o5 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o5 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o5 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o5 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o5 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o5 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o5 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o5 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o5 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o5 c1o10)
)
)
)
)
(and
(g1 c1o6)
(or
(and
(g2 c1o1)
(not
(f c1o6 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o6 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o6 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o6 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o6 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o6 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o6 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o6 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o6 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o6 c1o10)
)
)
)
)
(and
(g1 c1o7)
(or
(and
(g2 c1o1)
(not
(f c1o7 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o7 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o7 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o7 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o7 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o7 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o7 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o7 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o7 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o7 c1o10)
)
)
)
)
(and
(g1 c1o8)
(or
(and
(g2 c1o1)
(not
(f c1o8 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o8 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o8 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o8 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o8 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o8 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o8 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o8 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o8 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o8 c1o10)
)
)
)
)
(and
(g1 c1o9)
(or
(and
(g2 c1o1)
(not
(f c1o9 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o9 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o9 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o9 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o9 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o9 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o9 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o9 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o9 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o9 c1o10)
)
)
)
)
(and
(g1 c1o10)
(or
(and
(g2 c1o1)
(not
(f c1o10 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o10 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o10 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o10 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o10 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o10 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o10 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o10 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o10 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o10 c1o10)
)
)
)
)
)
)
(=>
(and
(= q1 true)
(= q2 false)
)
(or
(and
(g1 c1o1)
(and
(=>
(g2 c1o1)
(not
(f c1o1 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o1 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o1 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o1 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o1 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o1 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o1 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o1 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o1 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o1 c1o10)
)
)
)
)
(and
(g1 c1o2)
(and
(=>
(g2 c1o1)
(not
(f c1o2 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o2 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o2 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o2 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o2 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o2 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o2 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o2 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o2 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o2 c1o10)
)
)
)
)
(and
(g1 c1o3)
(and
(=>
(g2 c1o1)
(not
(f c1o3 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o3 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o3 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o3 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o3 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o3 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o3 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o3 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o3 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o3 c1o10)
)
)
)
)
(and
(g1 c1o4)
(and
(=>
(g2 c1o1)
(not
(f c1o4 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o4 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o4 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o4 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o4 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o4 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o4 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o4 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o4 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o4 c1o10)
)
)
)
)
(and
(g1 c1o5)
(and
(=>
(g2 c1o1)
(not
(f c1o5 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o5 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o5 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o5 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o5 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o5 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o5 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o5 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o5 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o5 c1o10)
)
)
)
)
(and
(g1 c1o6)
(and
(=>
(g2 c1o1)
(not
(f c1o6 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o6 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o6 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o6 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o6 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o6 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o6 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o6 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o6 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o6 c1o10)
)
)
)
)
(and
(g1 c1o7)
(and
(=>
(g2 c1o1)
(not
(f c1o7 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o7 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o7 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o7 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o7 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o7 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o7 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o7 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o7 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o7 c1o10)
)
)
)
)
(and
(g1 c1o8)
(and
(=>
(g2 c1o1)
(not
(f c1o8 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o8 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o8 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o8 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o8 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o8 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o8 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o8 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o8 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o8 c1o10)
)
)
)
)
(and
(g1 c1o9)
(and
(=>
(g2 c1o1)
(not
(f c1o9 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o9 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o9 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o9 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o9 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o9 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o9 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o9 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o9 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o9 c1o10)
)
)
)
)
(and
(g1 c1o10)
(and
(=>
(g2 c1o1)
(not
(f c1o10 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o10 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o10 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o10 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o10 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o10 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o10 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o10 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o10 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o10 c1o10)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 true)
)
(and
(=>
(g1 c1o1)
(or
(and
(g2 c1o1)
(not
(f c1o1 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o1 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o1 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o1 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o1 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o1 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o1 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o1 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o1 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o1 c1o10)
)
)
)
)
(=>
(g1 c1o2)
(or
(and
(g2 c1o1)
(not
(f c1o2 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o2 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o2 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o2 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o2 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o2 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o2 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o2 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o2 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o2 c1o10)
)
)
)
)
(=>
(g1 c1o3)
(or
(and
(g2 c1o1)
(not
(f c1o3 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o3 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o3 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o3 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o3 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o3 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o3 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o3 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o3 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o3 c1o10)
)
)
)
)
(=>
(g1 c1o4)
(or
(and
(g2 c1o1)
(not
(f c1o4 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o4 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o4 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o4 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o4 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o4 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o4 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o4 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o4 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o4 c1o10)
)
)
)
)
(=>
(g1 c1o5)
(or
(and
(g2 c1o1)
(not
(f c1o5 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o5 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o5 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o5 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o5 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o5 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o5 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o5 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o5 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o5 c1o10)
)
)
)
)
(=>
(g1 c1o6)
(or
(and
(g2 c1o1)
(not
(f c1o6 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o6 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o6 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o6 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o6 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o6 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o6 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o6 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o6 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o6 c1o10)
)
)
)
)
(=>
(g1 c1o7)
(or
(and
(g2 c1o1)
(not
(f c1o7 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o7 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o7 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o7 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o7 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o7 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o7 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o7 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o7 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o7 c1o10)
)
)
)
)
(=>
(g1 c1o8)
(or
(and
(g2 c1o1)
(not
(f c1o8 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o8 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o8 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o8 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o8 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o8 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o8 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o8 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o8 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o8 c1o10)
)
)
)
)
(=>
(g1 c1o9)
(or
(and
(g2 c1o1)
(not
(f c1o9 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o9 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o9 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o9 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o9 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o9 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o9 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o9 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o9 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o9 c1o10)
)
)
)
)
(=>
(g1 c1o10)
(or
(and
(g2 c1o1)
(not
(f c1o10 c1o1)
)
)
(and
(g2 c1o2)
(not
(f c1o10 c1o2)
)
)
(and
(g2 c1o3)
(not
(f c1o10 c1o3)
)
)
(and
(g2 c1o4)
(not
(f c1o10 c1o4)
)
)
(and
(g2 c1o5)
(not
(f c1o10 c1o5)
)
)
(and
(g2 c1o6)
(not
(f c1o10 c1o6)
)
)
(and
(g2 c1o7)
(not
(f c1o10 c1o7)
)
)
(and
(g2 c1o8)
(not
(f c1o10 c1o8)
)
)
(and
(g2 c1o9)
(not
(f c1o10 c1o9)
)
)
(and
(g2 c1o10)
(not
(f c1o10 c1o10)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 false)
)
(and
(=>
(g1 c1o1)
(and
(=>
(g2 c1o1)
(not
(f c1o1 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o1 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o1 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o1 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o1 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o1 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o1 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o1 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o1 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o1 c1o10)
)
)
)
)
(=>
(g1 c1o2)
(and
(=>
(g2 c1o1)
(not
(f c1o2 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o2 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o2 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o2 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o2 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o2 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o2 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o2 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o2 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o2 c1o10)
)
)
)
)
(=>
(g1 c1o3)
(and
(=>
(g2 c1o1)
(not
(f c1o3 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o3 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o3 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o3 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o3 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o3 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o3 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o3 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o3 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o3 c1o10)
)
)
)
)
(=>
(g1 c1o4)
(and
(=>
(g2 c1o1)
(not
(f c1o4 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o4 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o4 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o4 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o4 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o4 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o4 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o4 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o4 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o4 c1o10)
)
)
)
)
(=>
(g1 c1o5)
(and
(=>
(g2 c1o1)
(not
(f c1o5 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o5 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o5 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o5 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o5 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o5 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o5 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o5 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o5 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o5 c1o10)
)
)
)
)
(=>
(g1 c1o6)
(and
(=>
(g2 c1o1)
(not
(f c1o6 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o6 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o6 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o6 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o6 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o6 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o6 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o6 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o6 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o6 c1o10)
)
)
)
)
(=>
(g1 c1o7)
(and
(=>
(g2 c1o1)
(not
(f c1o7 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o7 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o7 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o7 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o7 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o7 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o7 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o7 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o7 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o7 c1o10)
)
)
)
)
(=>
(g1 c1o8)
(and
(=>
(g2 c1o1)
(not
(f c1o8 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o8 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o8 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o8 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o8 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o8 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o8 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o8 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o8 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o8 c1o10)
)
)
)
)
(=>
(g1 c1o9)
(and
(=>
(g2 c1o1)
(not
(f c1o9 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o9 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o9 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o9 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o9 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o9 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o9 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o9 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o9 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o9 c1o10)
)
)
)
)
(=>
(g1 c1o10)
(and
(=>
(g2 c1o1)
(not
(f c1o10 c1o1)
)
)
(=>
(g2 c1o2)
(not
(f c1o10 c1o2)
)
)
(=>
(g2 c1o3)
(not
(f c1o10 c1o3)
)
)
(=>
(g2 c1o4)
(not
(f c1o10 c1o4)
)
)
(=>
(g2 c1o5)
(not
(f c1o10 c1o5)
)
)
(=>
(g2 c1o6)
(not
(f c1o10 c1o6)
)
)
(=>
(g2 c1o7)
(not
(f c1o10 c1o7)
)
)
(=>
(g2 c1o8)
(not
(f c1o10 c1o8)
)
)
(=>
(g2 c1o9)
(not
(f c1o10 c1o9)
)
)
(=>
(g2 c1o10)
(not
(f c1o10 c1o10)
)
)
)
)
)
)
)
)
)

(assert
(=>
(= c2 true)
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(and
(or
(g1 c2o1)
(g1 c2o2)
(g1 c2o3)
(g1 c2o4)
(g1 c2o5)
)
(and
(=>
(g1 c2o1)
(and
(or
(g2 c2o1)
(g2 c2o2)
(g2 c2o3)
(g2 c2o4)
(g2 c2o5)
)
(and
(=>
(g2 c2o1)
(f c2o1 c2o1)
)
(=>
(g2 c2o2)
(f c2o1 c2o2)
)
(=>
(g2 c2o3)
(f c2o1 c2o3)
)
(=>
(g2 c2o4)
(f c2o1 c2o4)
)
(=>
(g2 c2o5)
(f c2o1 c2o5)
)
)
)
)
(=>
(g1 c2o2)
(and
(or
(g2 c2o1)
(g2 c2o2)
(g2 c2o3)
(g2 c2o4)
(g2 c2o5)
)
(and
(=>
(g2 c2o1)
(f c2o2 c2o1)
)
(=>
(g2 c2o2)
(f c2o2 c2o2)
)
(=>
(g2 c2o3)
(f c2o2 c2o3)
)
(=>
(g2 c2o4)
(f c2o2 c2o4)
)
(=>
(g2 c2o5)
(f c2o2 c2o5)
)
)
)
)
(=>
(g1 c2o3)
(and
(or
(g2 c2o1)
(g2 c2o2)
(g2 c2o3)
(g2 c2o4)
(g2 c2o5)
)
(and
(=>
(g2 c2o1)
(f c2o3 c2o1)
)
(=>
(g2 c2o2)
(f c2o3 c2o2)
)
(=>
(g2 c2o3)
(f c2o3 c2o3)
)
(=>
(g2 c2o4)
(f c2o3 c2o4)
)
(=>
(g2 c2o5)
(f c2o3 c2o5)
)
)
)
)
(=>
(g1 c2o4)
(and
(or
(g2 c2o1)
(g2 c2o2)
(g2 c2o3)
(g2 c2o4)
(g2 c2o5)
)
(and
(=>
(g2 c2o1)
(f c2o4 c2o1)
)
(=>
(g2 c2o2)
(f c2o4 c2o2)
)
(=>
(g2 c2o3)
(f c2o4 c2o3)
)
(=>
(g2 c2o4)
(f c2o4 c2o4)
)
(=>
(g2 c2o5)
(f c2o4 c2o5)
)
)
)
)
(=>
(g1 c2o5)
(and
(or
(g2 c2o1)
(g2 c2o2)
(g2 c2o3)
(g2 c2o4)
(g2 c2o5)
)
(and
(=>
(g2 c2o1)
(f c2o5 c2o1)
)
(=>
(g2 c2o2)
(f c2o5 c2o2)
)
(=>
(g2 c2o3)
(f c2o5 c2o3)
)
(=>
(g2 c2o4)
(f c2o5 c2o4)
)
(=>
(g2 c2o5)
(f c2o5 c2o5)
)
)
)
)
)
)
)
(=>
(and
(= q1 true)
(= q2 false)
)
(and
(or
(g1 c2o1)
(g1 c2o2)
(g1 c2o3)
(g1 c2o4)
(g1 c2o5)
)
(and
(=>
(g1 c2o1)
(or
(and
(g2 c2o1)
(f c2o1 c2o1)
)
(and
(g2 c2o2)
(f c2o1 c2o2)
)
(and
(g2 c2o3)
(f c2o1 c2o3)
)
(and
(g2 c2o4)
(f c2o1 c2o4)
)
(and
(g2 c2o5)
(f c2o1 c2o5)
)
)
)
(=>
(g1 c2o2)
(or
(and
(g2 c2o1)
(f c2o2 c2o1)
)
(and
(g2 c2o2)
(f c2o2 c2o2)
)
(and
(g2 c2o3)
(f c2o2 c2o3)
)
(and
(g2 c2o4)
(f c2o2 c2o4)
)
(and
(g2 c2o5)
(f c2o2 c2o5)
)
)
)
(=>
(g1 c2o3)
(or
(and
(g2 c2o1)
(f c2o3 c2o1)
)
(and
(g2 c2o2)
(f c2o3 c2o2)
)
(and
(g2 c2o3)
(f c2o3 c2o3)
)
(and
(g2 c2o4)
(f c2o3 c2o4)
)
(and
(g2 c2o5)
(f c2o3 c2o5)
)
)
)
(=>
(g1 c2o4)
(or
(and
(g2 c2o1)
(f c2o4 c2o1)
)
(and
(g2 c2o2)
(f c2o4 c2o2)
)
(and
(g2 c2o3)
(f c2o4 c2o3)
)
(and
(g2 c2o4)
(f c2o4 c2o4)
)
(and
(g2 c2o5)
(f c2o4 c2o5)
)
)
)
(=>
(g1 c2o5)
(or
(and
(g2 c2o1)
(f c2o5 c2o1)
)
(and
(g2 c2o2)
(f c2o5 c2o2)
)
(and
(g2 c2o3)
(f c2o5 c2o3)
)
(and
(g2 c2o4)
(f c2o5 c2o4)
)
(and
(g2 c2o5)
(f c2o5 c2o5)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 true)
)
(or
(and
(g1 c2o1)
(and
(or
(g2 c2o1)
(g2 c2o2)
(g2 c2o3)
(g2 c2o4)
(g2 c2o5)
)
(and
(=>
(g2 c2o1)
(f c2o1 c2o1)
)
(=>
(g2 c2o2)
(f c2o1 c2o2)
)
(=>
(g2 c2o3)
(f c2o1 c2o3)
)
(=>
(g2 c2o4)
(f c2o1 c2o4)
)
(=>
(g2 c2o5)
(f c2o1 c2o5)
)
)
)
)
(and
(g1 c2o2)
(and
(or
(g2 c2o1)
(g2 c2o2)
(g2 c2o3)
(g2 c2o4)
(g2 c2o5)
)
(and
(=>
(g2 c2o1)
(f c2o2 c2o1)
)
(=>
(g2 c2o2)
(f c2o2 c2o2)
)
(=>
(g2 c2o3)
(f c2o2 c2o3)
)
(=>
(g2 c2o4)
(f c2o2 c2o4)
)
(=>
(g2 c2o5)
(f c2o2 c2o5)
)
)
)
)
(and
(g1 c2o3)
(and
(or
(g2 c2o1)
(g2 c2o2)
(g2 c2o3)
(g2 c2o4)
(g2 c2o5)
)
(and
(=>
(g2 c2o1)
(f c2o3 c2o1)
)
(=>
(g2 c2o2)
(f c2o3 c2o2)
)
(=>
(g2 c2o3)
(f c2o3 c2o3)
)
(=>
(g2 c2o4)
(f c2o3 c2o4)
)
(=>
(g2 c2o5)
(f c2o3 c2o5)
)
)
)
)
(and
(g1 c2o4)
(and
(or
(g2 c2o1)
(g2 c2o2)
(g2 c2o3)
(g2 c2o4)
(g2 c2o5)
)
(and
(=>
(g2 c2o1)
(f c2o4 c2o1)
)
(=>
(g2 c2o2)
(f c2o4 c2o2)
)
(=>
(g2 c2o3)
(f c2o4 c2o3)
)
(=>
(g2 c2o4)
(f c2o4 c2o4)
)
(=>
(g2 c2o5)
(f c2o4 c2o5)
)
)
)
)
(and
(g1 c2o5)
(and
(or
(g2 c2o1)
(g2 c2o2)
(g2 c2o3)
(g2 c2o4)
(g2 c2o5)
)
(and
(=>
(g2 c2o1)
(f c2o5 c2o1)
)
(=>
(g2 c2o2)
(f c2o5 c2o2)
)
(=>
(g2 c2o3)
(f c2o5 c2o3)
)
(=>
(g2 c2o4)
(f c2o5 c2o4)
)
(=>
(g2 c2o5)
(f c2o5 c2o5)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 false)
)
(or
(and
(g1 c2o1)
(or
(and
(g2 c2o1)
(f c2o1 c2o1)
)
(and
(g2 c2o2)
(f c2o1 c2o2)
)
(and
(g2 c2o3)
(f c2o1 c2o3)
)
(and
(g2 c2o4)
(f c2o1 c2o4)
)
(and
(g2 c2o5)
(f c2o1 c2o5)
)
)
)
(and
(g1 c2o2)
(or
(and
(g2 c2o1)
(f c2o2 c2o1)
)
(and
(g2 c2o2)
(f c2o2 c2o2)
)
(and
(g2 c2o3)
(f c2o2 c2o3)
)
(and
(g2 c2o4)
(f c2o2 c2o4)
)
(and
(g2 c2o5)
(f c2o2 c2o5)
)
)
)
(and
(g1 c2o3)
(or
(and
(g2 c2o1)
(f c2o3 c2o1)
)
(and
(g2 c2o2)
(f c2o3 c2o2)
)
(and
(g2 c2o3)
(f c2o3 c2o3)
)
(and
(g2 c2o4)
(f c2o3 c2o4)
)
(and
(g2 c2o5)
(f c2o3 c2o5)
)
)
)
(and
(g1 c2o4)
(or
(and
(g2 c2o1)
(f c2o4 c2o1)
)
(and
(g2 c2o2)
(f c2o4 c2o2)
)
(and
(g2 c2o3)
(f c2o4 c2o3)
)
(and
(g2 c2o4)
(f c2o4 c2o4)
)
(and
(g2 c2o5)
(f c2o4 c2o5)
)
)
)
(and
(g1 c2o5)
(or
(and
(g2 c2o1)
(f c2o5 c2o1)
)
(and
(g2 c2o2)
(f c2o5 c2o2)
)
(and
(g2 c2o3)
(f c2o5 c2o3)
)
(and
(g2 c2o4)
(f c2o5 c2o4)
)
(and
(g2 c2o5)
(f c2o5 c2o5)
)
)
)
)
)
)
)
)

(assert
(=>
(= c2 false)
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(or
(and
(g1 c2o1)
(or
(and
(g2 c2o1)
(not
(f c2o1 c2o1)
)
)
(and
(g2 c2o2)
(not
(f c2o1 c2o2)
)
)
(and
(g2 c2o3)
(not
(f c2o1 c2o3)
)
)
(and
(g2 c2o4)
(not
(f c2o1 c2o4)
)
)
(and
(g2 c2o5)
(not
(f c2o1 c2o5)
)
)
)
)
(and
(g1 c2o2)
(or
(and
(g2 c2o1)
(not
(f c2o2 c2o1)
)
)
(and
(g2 c2o2)
(not
(f c2o2 c2o2)
)
)
(and
(g2 c2o3)
(not
(f c2o2 c2o3)
)
)
(and
(g2 c2o4)
(not
(f c2o2 c2o4)
)
)
(and
(g2 c2o5)
(not
(f c2o2 c2o5)
)
)
)
)
(and
(g1 c2o3)
(or
(and
(g2 c2o1)
(not
(f c2o3 c2o1)
)
)
(and
(g2 c2o2)
(not
(f c2o3 c2o2)
)
)
(and
(g2 c2o3)
(not
(f c2o3 c2o3)
)
)
(and
(g2 c2o4)
(not
(f c2o3 c2o4)
)
)
(and
(g2 c2o5)
(not
(f c2o3 c2o5)
)
)
)
)
(and
(g1 c2o4)
(or
(and
(g2 c2o1)
(not
(f c2o4 c2o1)
)
)
(and
(g2 c2o2)
(not
(f c2o4 c2o2)
)
)
(and
(g2 c2o3)
(not
(f c2o4 c2o3)
)
)
(and
(g2 c2o4)
(not
(f c2o4 c2o4)
)
)
(and
(g2 c2o5)
(not
(f c2o4 c2o5)
)
)
)
)
(and
(g1 c2o5)
(or
(and
(g2 c2o1)
(not
(f c2o5 c2o1)
)
)
(and
(g2 c2o2)
(not
(f c2o5 c2o2)
)
)
(and
(g2 c2o3)
(not
(f c2o5 c2o3)
)
)
(and
(g2 c2o4)
(not
(f c2o5 c2o4)
)
)
(and
(g2 c2o5)
(not
(f c2o5 c2o5)
)
)
)
)
)
)
(=>
(and
(= q1 true)
(= q2 false)
)
(or
(and
(g1 c2o1)
(and
(=>
(g2 c2o1)
(not
(f c2o1 c2o1)
)
)
(=>
(g2 c2o2)
(not
(f c2o1 c2o2)
)
)
(=>
(g2 c2o3)
(not
(f c2o1 c2o3)
)
)
(=>
(g2 c2o4)
(not
(f c2o1 c2o4)
)
)
(=>
(g2 c2o5)
(not
(f c2o1 c2o5)
)
)
)
)
(and
(g1 c2o2)
(and
(=>
(g2 c2o1)
(not
(f c2o2 c2o1)
)
)
(=>
(g2 c2o2)
(not
(f c2o2 c2o2)
)
)
(=>
(g2 c2o3)
(not
(f c2o2 c2o3)
)
)
(=>
(g2 c2o4)
(not
(f c2o2 c2o4)
)
)
(=>
(g2 c2o5)
(not
(f c2o2 c2o5)
)
)
)
)
(and
(g1 c2o3)
(and
(=>
(g2 c2o1)
(not
(f c2o3 c2o1)
)
)
(=>
(g2 c2o2)
(not
(f c2o3 c2o2)
)
)
(=>
(g2 c2o3)
(not
(f c2o3 c2o3)
)
)
(=>
(g2 c2o4)
(not
(f c2o3 c2o4)
)
)
(=>
(g2 c2o5)
(not
(f c2o3 c2o5)
)
)
)
)
(and
(g1 c2o4)
(and
(=>
(g2 c2o1)
(not
(f c2o4 c2o1)
)
)
(=>
(g2 c2o2)
(not
(f c2o4 c2o2)
)
)
(=>
(g2 c2o3)
(not
(f c2o4 c2o3)
)
)
(=>
(g2 c2o4)
(not
(f c2o4 c2o4)
)
)
(=>
(g2 c2o5)
(not
(f c2o4 c2o5)
)
)
)
)
(and
(g1 c2o5)
(and
(=>
(g2 c2o1)
(not
(f c2o5 c2o1)
)
)
(=>
(g2 c2o2)
(not
(f c2o5 c2o2)
)
)
(=>
(g2 c2o3)
(not
(f c2o5 c2o3)
)
)
(=>
(g2 c2o4)
(not
(f c2o5 c2o4)
)
)
(=>
(g2 c2o5)
(not
(f c2o5 c2o5)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 true)
)
(and
(=>
(g1 c2o1)
(or
(and
(g2 c2o1)
(not
(f c2o1 c2o1)
)
)
(and
(g2 c2o2)
(not
(f c2o1 c2o2)
)
)
(and
(g2 c2o3)
(not
(f c2o1 c2o3)
)
)
(and
(g2 c2o4)
(not
(f c2o1 c2o4)
)
)
(and
(g2 c2o5)
(not
(f c2o1 c2o5)
)
)
)
)
(=>
(g1 c2o2)
(or
(and
(g2 c2o1)
(not
(f c2o2 c2o1)
)
)
(and
(g2 c2o2)
(not
(f c2o2 c2o2)
)
)
(and
(g2 c2o3)
(not
(f c2o2 c2o3)
)
)
(and
(g2 c2o4)
(not
(f c2o2 c2o4)
)
)
(and
(g2 c2o5)
(not
(f c2o2 c2o5)
)
)
)
)
(=>
(g1 c2o3)
(or
(and
(g2 c2o1)
(not
(f c2o3 c2o1)
)
)
(and
(g2 c2o2)
(not
(f c2o3 c2o2)
)
)
(and
(g2 c2o3)
(not
(f c2o3 c2o3)
)
)
(and
(g2 c2o4)
(not
(f c2o3 c2o4)
)
)
(and
(g2 c2o5)
(not
(f c2o3 c2o5)
)
)
)
)
(=>
(g1 c2o4)
(or
(and
(g2 c2o1)
(not
(f c2o4 c2o1)
)
)
(and
(g2 c2o2)
(not
(f c2o4 c2o2)
)
)
(and
(g2 c2o3)
(not
(f c2o4 c2o3)
)
)
(and
(g2 c2o4)
(not
(f c2o4 c2o4)
)
)
(and
(g2 c2o5)
(not
(f c2o4 c2o5)
)
)
)
)
(=>
(g1 c2o5)
(or
(and
(g2 c2o1)
(not
(f c2o5 c2o1)
)
)
(and
(g2 c2o2)
(not
(f c2o5 c2o2)
)
)
(and
(g2 c2o3)
(not
(f c2o5 c2o3)
)
)
(and
(g2 c2o4)
(not
(f c2o5 c2o4)
)
)
(and
(g2 c2o5)
(not
(f c2o5 c2o5)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 false)
)
(and
(=>
(g1 c2o1)
(and
(=>
(g2 c2o1)
(not
(f c2o1 c2o1)
)
)
(=>
(g2 c2o2)
(not
(f c2o1 c2o2)
)
)
(=>
(g2 c2o3)
(not
(f c2o1 c2o3)
)
)
(=>
(g2 c2o4)
(not
(f c2o1 c2o4)
)
)
(=>
(g2 c2o5)
(not
(f c2o1 c2o5)
)
)
)
)
(=>
(g1 c2o2)
(and
(=>
(g2 c2o1)
(not
(f c2o2 c2o1)
)
)
(=>
(g2 c2o2)
(not
(f c2o2 c2o2)
)
)
(=>
(g2 c2o3)
(not
(f c2o2 c2o3)
)
)
(=>
(g2 c2o4)
(not
(f c2o2 c2o4)
)
)
(=>
(g2 c2o5)
(not
(f c2o2 c2o5)
)
)
)
)
(=>
(g1 c2o3)
(and
(=>
(g2 c2o1)
(not
(f c2o3 c2o1)
)
)
(=>
(g2 c2o2)
(not
(f c2o3 c2o2)
)
)
(=>
(g2 c2o3)
(not
(f c2o3 c2o3)
)
)
(=>
(g2 c2o4)
(not
(f c2o3 c2o4)
)
)
(=>
(g2 c2o5)
(not
(f c2o3 c2o5)
)
)
)
)
(=>
(g1 c2o4)
(and
(=>
(g2 c2o1)
(not
(f c2o4 c2o1)
)
)
(=>
(g2 c2o2)
(not
(f c2o4 c2o2)
)
)
(=>
(g2 c2o3)
(not
(f c2o4 c2o3)
)
)
(=>
(g2 c2o4)
(not
(f c2o4 c2o4)
)
)
(=>
(g2 c2o5)
(not
(f c2o4 c2o5)
)
)
)
)
(=>
(g1 c2o5)
(and
(=>
(g2 c2o1)
(not
(f c2o5 c2o1)
)
)
(=>
(g2 c2o2)
(not
(f c2o5 c2o2)
)
)
(=>
(g2 c2o3)
(not
(f c2o5 c2o3)
)
)
(=>
(g2 c2o4)
(not
(f c2o5 c2o4)
)
)
(=>
(g2 c2o5)
(not
(f c2o5 c2o5)
)
)
)
)
)
)
)
)
)

(assert
(=>
(= c3 true)
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(and
(or
(g1 c3o1)
(g1 c3o2)
(g1 c3o3)
)
(and
(=>
(g1 c3o1)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
)
(and
(=>
(g2 c3o1)
(f c3o1 c3o1)
)
(=>
(g2 c3o2)
(f c3o1 c3o2)
)
(=>
(g2 c3o3)
(f c3o1 c3o3)
)
)
)
)
(=>
(g1 c3o2)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
)
(and
(=>
(g2 c3o1)
(f c3o2 c3o1)
)
(=>
(g2 c3o2)
(f c3o2 c3o2)
)
(=>
(g2 c3o3)
(f c3o2 c3o3)
)
)
)
)
(=>
(g1 c3o3)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
)
(and
(=>
(g2 c3o1)
(f c3o3 c3o1)
)
(=>
(g2 c3o2)
(f c3o3 c3o2)
)
(=>
(g2 c3o3)
(f c3o3 c3o3)
)
)
)
)
)
)
)
(=>
(and
(= q1 true)
(= q2 false)
)
(and
(or
(g1 c3o1)
(g1 c3o2)
(g1 c3o3)
)
(and
(=>
(g1 c3o1)
(or
(and
(g2 c3o1)
(f c3o1 c3o1)
)
(and
(g2 c3o2)
(f c3o1 c3o2)
)
(and
(g2 c3o3)
(f c3o1 c3o3)
)
)
)
(=>
(g1 c3o2)
(or
(and
(g2 c3o1)
(f c3o2 c3o1)
)
(and
(g2 c3o2)
(f c3o2 c3o2)
)
(and
(g2 c3o3)
(f c3o2 c3o3)
)
)
)
(=>
(g1 c3o3)
(or
(and
(g2 c3o1)
(f c3o3 c3o1)
)
(and
(g2 c3o2)
(f c3o3 c3o2)
)
(and
(g2 c3o3)
(f c3o3 c3o3)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 true)
)
(or
(and
(g1 c3o1)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
)
(and
(=>
(g2 c3o1)
(f c3o1 c3o1)
)
(=>
(g2 c3o2)
(f c3o1 c3o2)
)
(=>
(g2 c3o3)
(f c3o1 c3o3)
)
)
)
)
(and
(g1 c3o2)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
)
(and
(=>
(g2 c3o1)
(f c3o2 c3o1)
)
(=>
(g2 c3o2)
(f c3o2 c3o2)
)
(=>
(g2 c3o3)
(f c3o2 c3o3)
)
)
)
)
(and
(g1 c3o3)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
)
(and
(=>
(g2 c3o1)
(f c3o3 c3o1)
)
(=>
(g2 c3o2)
(f c3o3 c3o2)
)
(=>
(g2 c3o3)
(f c3o3 c3o3)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 false)
)
(or
(and
(g1 c3o1)
(or
(and
(g2 c3o1)
(f c3o1 c3o1)
)
(and
(g2 c3o2)
(f c3o1 c3o2)
)
(and
(g2 c3o3)
(f c3o1 c3o3)
)
)
)
(and
(g1 c3o2)
(or
(and
(g2 c3o1)
(f c3o2 c3o1)
)
(and
(g2 c3o2)
(f c3o2 c3o2)
)
(and
(g2 c3o3)
(f c3o2 c3o3)
)
)
)
(and
(g1 c3o3)
(or
(and
(g2 c3o1)
(f c3o3 c3o1)
)
(and
(g2 c3o2)
(f c3o3 c3o2)
)
(and
(g2 c3o3)
(f c3o3 c3o3)
)
)
)
)
)
)
)
)

(assert
(=>
(= c3 false)
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(or
(and
(g1 c3o1)
(or
(and
(g2 c3o1)
(not
(f c3o1 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o1 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o1 c3o3)
)
)
)
)
(and
(g1 c3o2)
(or
(and
(g2 c3o1)
(not
(f c3o2 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o2 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o2 c3o3)
)
)
)
)
(and
(g1 c3o3)
(or
(and
(g2 c3o1)
(not
(f c3o3 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o3 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o3 c3o3)
)
)
)
)
)
)
(=>
(and
(= q1 true)
(= q2 false)
)
(or
(and
(g1 c3o1)
(and
(=>
(g2 c3o1)
(not
(f c3o1 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o1 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o1 c3o3)
)
)
)
)
(and
(g1 c3o2)
(and
(=>
(g2 c3o1)
(not
(f c3o2 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o2 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o2 c3o3)
)
)
)
)
(and
(g1 c3o3)
(and
(=>
(g2 c3o1)
(not
(f c3o3 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o3 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o3 c3o3)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 true)
)
(and
(=>
(g1 c3o1)
(or
(and
(g2 c3o1)
(not
(f c3o1 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o1 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o1 c3o3)
)
)
)
)
(=>
(g1 c3o2)
(or
(and
(g2 c3o1)
(not
(f c3o2 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o2 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o2 c3o3)
)
)
)
)
(=>
(g1 c3o3)
(or
(and
(g2 c3o1)
(not
(f c3o3 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o3 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o3 c3o3)
)
)
)
)
)
)
(=>
(and
(= q1 false)
(= q2 false)
)
(and
(=>
(g1 c3o1)
(and
(=>
(g2 c3o1)
(not
(f c3o1 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o1 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o1 c3o3)
)
)
)
)
(=>
(g1 c3o2)
(and
(=>
(g2 c3o1)
(not
(f c3o2 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o2 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o2 c3o3)
)
)
)
)
(=>
(g1 c3o3)
(and
(=>
(g2 c3o1)
(not
(f c3o3 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o3 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o3 c3o3)
)
)
)
)
)
)
)
)
)


(check-sat)
(get-model)