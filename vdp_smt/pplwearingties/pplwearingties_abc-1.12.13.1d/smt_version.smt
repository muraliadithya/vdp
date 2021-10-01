(set-logic ALL)
(declare-datatypes ((Obj 0))
((
(t2o1)(t2o2)(t3o1)(t3o2)(t3o3)(t3o4)(c1o1)(c1o2)(c1o3)(c1o4)(c1o5)(c1o6)(c1o7)(c1o8)(c1o9)(c1o10)(c2o1)(c2o2)(c3o1)(c3o2)(c3o3)(c3o4)(c3o5)(c3o6)(c3o7)(c3o8)(c3o9)(c4o1)(c4o2)(c4o3)(c4o4)(c4o5)(c4o6)(c4o7)(c4o8)(c4o9)
)))

(declare-datatypes ((Label 0))
((
(dog)(tie)(person)(handbag)
)))

(define-fun labelOf((obj Obj)(lbl Label)) Bool
(or
(and (= obj t2o1) (= lbl tie))
(and (= obj t2o2) (= lbl person))
(and (= obj t3o1) (= lbl tie))
(and (= obj t3o2) (= lbl person))
(and (= obj t3o3) (= lbl person))
(and (= obj t3o4) (= lbl person))
(and (= obj c1o1) (= lbl handbag))
(and (= obj c1o2) (= lbl handbag))
(and (= obj c1o3) (= lbl handbag))
(and (= obj c1o4) (= lbl person))
(and (= obj c1o5) (= lbl person))
(and (= obj c1o6) (= lbl person))
(and (= obj c1o7) (= lbl person))
(and (= obj c1o8) (= lbl person))
(and (= obj c1o9) (= lbl person))
(and (= obj c1o10) (= lbl person))
(and (= obj c2o1) (= lbl tie))
(and (= obj c2o2) (= lbl dog))
(and (= obj c3o1) (= lbl tie))
(and (= obj c3o2) (= lbl tie))
(and (= obj c3o3) (= lbl tie))
(and (= obj c3o4) (= lbl tie))
(and (= obj c3o5) (= lbl tie))
(and (= obj c3o6) (= lbl tie))
(and (= obj c3o7) (= lbl tie))
(and (= obj c3o8) (= lbl tie))
(and (= obj c3o9) (= lbl person))
(and (= obj c4o1) (= lbl tie))
(and (= obj c4o2) (= lbl tie))
(and (= obj c4o3) (= lbl tie))
(and (= obj c4o4) (= lbl person))
(and (= obj c4o5) (= lbl person))
(and (= obj c4o6) (= lbl person))
(and (= obj c4o7) (= lbl person))
(and (= obj c4o8) (= lbl person))
(and (= obj c4o9) (= lbl person))

))

(define-fun leftOf((x Obj)(y Obj)) Bool
(or
(and (= x t3o1) (= y t3o2))
(and (= x t3o3) (= y t3o2))
(and (= x c1o2) (= y c1o1))
(and (= x c1o2) (= y c1o5))
(and (= x c1o2) (= y c1o6))
(and (= x c1o2) (= y c1o7))
(and (= x c1o2) (= y c1o8))
(and (= x c1o3) (= y c1o1))
(and (= x c1o3) (= y c1o5))
(and (= x c1o3) (= y c1o6))
(and (= x c1o3) (= y c1o7))
(and (= x c1o3) (= y c1o8))
(and (= x c1o4) (= y c1o1))
(and (= x c1o4) (= y c1o5))
(and (= x c1o4) (= y c1o6))
(and (= x c1o4) (= y c1o8))
(and (= x c1o5) (= y c1o1))
(and (= x c1o5) (= y c1o8))
(and (= x c1o6) (= y c1o1))
(and (= x c1o7) (= y c1o1))
(and (= x c1o7) (= y c1o6))
(and (= x c1o7) (= y c1o8))
(and (= x c1o9) (= y c1o1))
(and (= x c1o9) (= y c1o3))
(and (= x c1o9) (= y c1o4))
(and (= x c1o9) (= y c1o5))
(and (= x c1o9) (= y c1o6))
(and (= x c1o9) (= y c1o7))
(and (= x c1o9) (= y c1o8))
(and (= x c1o10) (= y c1o1))
(and (= x c1o10) (= y c1o5))
(and (= x c1o10) (= y c1o6))
(and (= x c1o10) (= y c1o7))
(and (= x c1o10) (= y c1o8))
(and (= x c3o1) (= y c3o2))
(and (= x c3o1) (= y c3o3))
(and (= x c3o1) (= y c3o5))
(and (= x c3o1) (= y c3o6))
(and (= x c3o1) (= y c3o8))
(and (= x c3o2) (= y c3o6))
(and (= x c3o3) (= y c3o2))
(and (= x c3o3) (= y c3o6))
(and (= x c3o4) (= y c3o1))
(and (= x c3o4) (= y c3o2))
(and (= x c3o4) (= y c3o3))
(and (= x c3o4) (= y c3o5))
(and (= x c3o4) (= y c3o6))
(and (= x c3o4) (= y c3o7))
(and (= x c3o4) (= y c3o8))
(and (= x c3o5) (= y c3o2))
(and (= x c3o5) (= y c3o3))
(and (= x c3o5) (= y c3o6))
(and (= x c3o7) (= y c3o1))
(and (= x c3o7) (= y c3o2))
(and (= x c3o7) (= y c3o3))
(and (= x c3o7) (= y c3o5))
(and (= x c3o7) (= y c3o6))
(and (= x c3o7) (= y c3o8))
(and (= x c3o8) (= y c3o2))
(and (= x c3o8) (= y c3o3))
(and (= x c3o8) (= y c3o5))
(and (= x c3o8) (= y c3o6))
(and (= x c3o9) (= y c3o1))
(and (= x c3o9) (= y c3o2))
(and (= x c3o9) (= y c3o3))
(and (= x c3o9) (= y c3o5))
(and (= x c3o9) (= y c3o6))
(and (= x c3o9) (= y c3o7))
(and (= x c3o9) (= y c3o8))
(and (= x c4o1) (= y c4o2))
(and (= x c4o1) (= y c4o3))
(and (= x c4o1) (= y c4o4))
(and (= x c4o1) (= y c4o6))
(and (= x c4o1) (= y c4o7))
(and (= x c4o1) (= y c4o8))
(and (= x c4o2) (= y c4o3))
(and (= x c4o2) (= y c4o4))
(and (= x c4o2) (= y c4o7))
(and (= x c4o5) (= y c4o2))
(and (= x c4o5) (= y c4o3))
(and (= x c4o5) (= y c4o4))
(and (= x c4o5) (= y c4o6))
(and (= x c4o5) (= y c4o7))
(and (= x c4o6) (= y c4o3))
(and (= x c4o6) (= y c4o4))
(and (= x c4o7) (= y c4o3))
(and (= x c4o8) (= y c4o2))
(and (= x c4o8) (= y c4o3))
(and (= x c4o8) (= y c4o4))
(and (= x c4o8) (= y c4o7))
(and (= x c4o9) (= y c4o1))
(and (= x c4o9) (= y c4o2))
(and (= x c4o9) (= y c4o3))
(and (= x c4o9) (= y c4o4))
(and (= x c4o9) (= y c4o6))
(and (= x c4o9) (= y c4o7))
(and (= x c4o9) (= y c4o8))

))

(define-fun rightOf((x Obj)(y Obj)) Bool
(or
(and (= x t3o2) (= y t3o1))
(and (= x t3o2) (= y t3o3))
(and (= x c1o1) (= y c1o2))
(and (= x c1o1) (= y c1o3))
(and (= x c1o1) (= y c1o4))
(and (= x c1o1) (= y c1o5))
(and (= x c1o1) (= y c1o6))
(and (= x c1o1) (= y c1o7))
(and (= x c1o1) (= y c1o9))
(and (= x c1o1) (= y c1o10))
(and (= x c1o3) (= y c1o9))
(and (= x c1o4) (= y c1o9))
(and (= x c1o5) (= y c1o2))
(and (= x c1o5) (= y c1o3))
(and (= x c1o5) (= y c1o4))
(and (= x c1o5) (= y c1o9))
(and (= x c1o5) (= y c1o10))
(and (= x c1o6) (= y c1o2))
(and (= x c1o6) (= y c1o3))
(and (= x c1o6) (= y c1o4))
(and (= x c1o6) (= y c1o7))
(and (= x c1o6) (= y c1o9))
(and (= x c1o6) (= y c1o10))
(and (= x c1o7) (= y c1o2))
(and (= x c1o7) (= y c1o3))
(and (= x c1o7) (= y c1o9))
(and (= x c1o7) (= y c1o10))
(and (= x c1o8) (= y c1o2))
(and (= x c1o8) (= y c1o3))
(and (= x c1o8) (= y c1o4))
(and (= x c1o8) (= y c1o5))
(and (= x c1o8) (= y c1o7))
(and (= x c1o8) (= y c1o9))
(and (= x c1o8) (= y c1o10))
(and (= x c3o1) (= y c3o4))
(and (= x c3o1) (= y c3o7))
(and (= x c3o1) (= y c3o9))
(and (= x c3o2) (= y c3o1))
(and (= x c3o2) (= y c3o3))
(and (= x c3o2) (= y c3o4))
(and (= x c3o2) (= y c3o5))
(and (= x c3o2) (= y c3o7))
(and (= x c3o2) (= y c3o8))
(and (= x c3o2) (= y c3o9))
(and (= x c3o3) (= y c3o1))
(and (= x c3o3) (= y c3o4))
(and (= x c3o3) (= y c3o5))
(and (= x c3o3) (= y c3o7))
(and (= x c3o3) (= y c3o8))
(and (= x c3o3) (= y c3o9))
(and (= x c3o5) (= y c3o1))
(and (= x c3o5) (= y c3o4))
(and (= x c3o5) (= y c3o7))
(and (= x c3o5) (= y c3o8))
(and (= x c3o5) (= y c3o9))
(and (= x c3o6) (= y c3o1))
(and (= x c3o6) (= y c3o2))
(and (= x c3o6) (= y c3o3))
(and (= x c3o6) (= y c3o4))
(and (= x c3o6) (= y c3o5))
(and (= x c3o6) (= y c3o7))
(and (= x c3o6) (= y c3o8))
(and (= x c3o6) (= y c3o9))
(and (= x c3o7) (= y c3o4))
(and (= x c3o7) (= y c3o9))
(and (= x c3o8) (= y c3o1))
(and (= x c3o8) (= y c3o4))
(and (= x c3o8) (= y c3o7))
(and (= x c3o8) (= y c3o9))
(and (= x c4o1) (= y c4o9))
(and (= x c4o2) (= y c4o1))
(and (= x c4o2) (= y c4o5))
(and (= x c4o2) (= y c4o8))
(and (= x c4o2) (= y c4o9))
(and (= x c4o3) (= y c4o1))
(and (= x c4o3) (= y c4o2))
(and (= x c4o3) (= y c4o5))
(and (= x c4o3) (= y c4o6))
(and (= x c4o3) (= y c4o7))
(and (= x c4o3) (= y c4o8))
(and (= x c4o3) (= y c4o9))
(and (= x c4o4) (= y c4o1))
(and (= x c4o4) (= y c4o2))
(and (= x c4o4) (= y c4o5))
(and (= x c4o4) (= y c4o6))
(and (= x c4o4) (= y c4o8))
(and (= x c4o4) (= y c4o9))
(and (= x c4o6) (= y c4o1))
(and (= x c4o6) (= y c4o5))
(and (= x c4o6) (= y c4o9))
(and (= x c4o7) (= y c4o1))
(and (= x c4o7) (= y c4o2))
(and (= x c4o7) (= y c4o5))
(and (= x c4o7) (= y c4o8))
(and (= x c4o7) (= y c4o9))
(and (= x c4o8) (= y c4o1))
(and (= x c4o8) (= y c4o9))

))

(define-fun above((x Obj)(y Obj)) Bool
(or
(and (= x c1o9) (= y c1o1))

))

(define-fun below((x Obj)(y Obj)) Bool
(or
(and (= x c1o1) (= y c1o9))

))

(define-fun within((x Obj)(y Obj)) Bool
(or
(and (= x t2o1) (= y t2o2))
(and (= x t3o1) (= y t3o4))
(and (= x c1o2) (= y c1o10))
(and (= x c1o3) (= y c1o4))
(and (= x c1o3) (= y c1o10))
(and (= x c1o9) (= y c1o10))
(and (= x c2o1) (= y c2o2))
(and (= x c4o1) (= y c4o5))
(and (= x c4o2) (= y c4o6))
(and (= x c4o3) (= y c4o4))

))


;(synth-fun q1 () Bool
;  ((Start Bool))
;  ((Start Bool 
;      (true false))
;))

;(synth-fun q2 () Bool
;  ((Start Bool))
;  ((Start Bool 
;      (true false))
;))
(declare-const q1 Bool)
(declare-const q2 Bool)

;(synth-fun g1 ((x Obj)) Bool
;((Start Bool) (Lb Label) (Ob Obj))
;((Start Bool
;		((labelOf Ob Lb)))
; (Lb Label
;	 	(dog tie person handbag))
; (Ob Obj
;	 	(x))
;))

;(synth-fun g2 ((x Obj)) Bool
;((Start Bool) (Lb Label) (Ob Obj))
;((Start Bool
;		((labelOf Ob Lb)))
; (Lb Label
;	 	(dog tie person handbag))
; (Ob Obj
;	 	(x))
;))
(define-fun g1 ((x Obj)) Bool
(labelOf x tie)
)
(define-fun g2 ((x Obj)) Bool
(labelOf x person)
)

;(synth-fun f ((x1 Obj)(x2 Obj)) Bool
;((B Bool) (Lb Label) (Ob Obj))
;((B Bool
;		(true
;		 false
;		 (= Ob Ob)
;		 (=> B B)
;		 (and B B)
;		 (or B B)
;		 (not B)
;		 (labelOf Ob Lb)
;		 (leftOf Ob Ob) (rightOf Ob Ob) (above Ob Ob) (below Ob Ob) (within Ob Ob)))
;(Lb Label
;	 	 (dog tie person handbag))
;(Ob Obj
;	 	 (x1 x2))
;	))

(define-fun f ((x1 Obj)(x2 Obj)) Bool
(within x1 x2)
)

;(synth-fun c1 () Bool
;  ((Start Bool))
;  ((Start Bool 
;        (true false))
;))
;(synth-fun c2 () Bool
;  ((Start Bool))
;  ((Start Bool 
;        (true false))
;))
;(synth-fun c3 () Bool
;  ((Start Bool))
;  ((Start Bool 
;        (true false))
;))
;(synth-fun c4 () Bool
;  ((Start Bool))
;  ((Start Bool 
;        (true false))
;))
(declare-const c1 Bool)
(declare-const c2 Bool)
(declare-const c3 Bool)
(declare-const c4 Bool)

(assert c4)
(assert(or c1 c2 c3 c4))
(assert (=> c1 (and (not c2) (not c3) (not c4))))
(assert (=> c2 (and (not c1) (not c3) (not c4))))
(assert (=> c3 (and (not c1) (not c2) (not c4))))
(assert (=> c4 (and (not c1) (not c2) (not c3))))

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
)
(and
(=>
(g1 c2o1)
(and
(or
(g2 c2o1)
(g2 c2o2)
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
)
)
)
(=>
(g1 c2o2)
(and
(or
(g2 c2o1)
(g2 c2o2)
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
)
)
)
(and
(g1 c2o2)
(and
(or
(g2 c2o1)
(g2 c2o2)
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
(g1 c3o4)
(g1 c3o5)
(g1 c3o6)
(g1 c3o7)
(g1 c3o8)
(g1 c3o9)
)
(and
(=>
(g1 c3o1)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o1 c3o4)
)
(=>
(g2 c3o5)
(f c3o1 c3o5)
)
(=>
(g2 c3o6)
(f c3o1 c3o6)
)
(=>
(g2 c3o7)
(f c3o1 c3o7)
)
(=>
(g2 c3o8)
(f c3o1 c3o8)
)
(=>
(g2 c3o9)
(f c3o1 c3o9)
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
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o2 c3o4)
)
(=>
(g2 c3o5)
(f c3o2 c3o5)
)
(=>
(g2 c3o6)
(f c3o2 c3o6)
)
(=>
(g2 c3o7)
(f c3o2 c3o7)
)
(=>
(g2 c3o8)
(f c3o2 c3o8)
)
(=>
(g2 c3o9)
(f c3o2 c3o9)
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
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o3 c3o4)
)
(=>
(g2 c3o5)
(f c3o3 c3o5)
)
(=>
(g2 c3o6)
(f c3o3 c3o6)
)
(=>
(g2 c3o7)
(f c3o3 c3o7)
)
(=>
(g2 c3o8)
(f c3o3 c3o8)
)
(=>
(g2 c3o9)
(f c3o3 c3o9)
)
)
)
)
(=>
(g1 c3o4)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o4 c3o1)
)
(=>
(g2 c3o2)
(f c3o4 c3o2)
)
(=>
(g2 c3o3)
(f c3o4 c3o3)
)
(=>
(g2 c3o4)
(f c3o4 c3o4)
)
(=>
(g2 c3o5)
(f c3o4 c3o5)
)
(=>
(g2 c3o6)
(f c3o4 c3o6)
)
(=>
(g2 c3o7)
(f c3o4 c3o7)
)
(=>
(g2 c3o8)
(f c3o4 c3o8)
)
(=>
(g2 c3o9)
(f c3o4 c3o9)
)
)
)
)
(=>
(g1 c3o5)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o5 c3o1)
)
(=>
(g2 c3o2)
(f c3o5 c3o2)
)
(=>
(g2 c3o3)
(f c3o5 c3o3)
)
(=>
(g2 c3o4)
(f c3o5 c3o4)
)
(=>
(g2 c3o5)
(f c3o5 c3o5)
)
(=>
(g2 c3o6)
(f c3o5 c3o6)
)
(=>
(g2 c3o7)
(f c3o5 c3o7)
)
(=>
(g2 c3o8)
(f c3o5 c3o8)
)
(=>
(g2 c3o9)
(f c3o5 c3o9)
)
)
)
)
(=>
(g1 c3o6)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o6 c3o1)
)
(=>
(g2 c3o2)
(f c3o6 c3o2)
)
(=>
(g2 c3o3)
(f c3o6 c3o3)
)
(=>
(g2 c3o4)
(f c3o6 c3o4)
)
(=>
(g2 c3o5)
(f c3o6 c3o5)
)
(=>
(g2 c3o6)
(f c3o6 c3o6)
)
(=>
(g2 c3o7)
(f c3o6 c3o7)
)
(=>
(g2 c3o8)
(f c3o6 c3o8)
)
(=>
(g2 c3o9)
(f c3o6 c3o9)
)
)
)
)
(=>
(g1 c3o7)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o7 c3o1)
)
(=>
(g2 c3o2)
(f c3o7 c3o2)
)
(=>
(g2 c3o3)
(f c3o7 c3o3)
)
(=>
(g2 c3o4)
(f c3o7 c3o4)
)
(=>
(g2 c3o5)
(f c3o7 c3o5)
)
(=>
(g2 c3o6)
(f c3o7 c3o6)
)
(=>
(g2 c3o7)
(f c3o7 c3o7)
)
(=>
(g2 c3o8)
(f c3o7 c3o8)
)
(=>
(g2 c3o9)
(f c3o7 c3o9)
)
)
)
)
(=>
(g1 c3o8)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o8 c3o1)
)
(=>
(g2 c3o2)
(f c3o8 c3o2)
)
(=>
(g2 c3o3)
(f c3o8 c3o3)
)
(=>
(g2 c3o4)
(f c3o8 c3o4)
)
(=>
(g2 c3o5)
(f c3o8 c3o5)
)
(=>
(g2 c3o6)
(f c3o8 c3o6)
)
(=>
(g2 c3o7)
(f c3o8 c3o7)
)
(=>
(g2 c3o8)
(f c3o8 c3o8)
)
(=>
(g2 c3o9)
(f c3o8 c3o9)
)
)
)
)
(=>
(g1 c3o9)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o9 c3o1)
)
(=>
(g2 c3o2)
(f c3o9 c3o2)
)
(=>
(g2 c3o3)
(f c3o9 c3o3)
)
(=>
(g2 c3o4)
(f c3o9 c3o4)
)
(=>
(g2 c3o5)
(f c3o9 c3o5)
)
(=>
(g2 c3o6)
(f c3o9 c3o6)
)
(=>
(g2 c3o7)
(f c3o9 c3o7)
)
(=>
(g2 c3o8)
(f c3o9 c3o8)
)
(=>
(g2 c3o9)
(f c3o9 c3o9)
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
(g1 c3o4)
(g1 c3o5)
(g1 c3o6)
(g1 c3o7)
(g1 c3o8)
(g1 c3o9)
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
(and
(g2 c3o4)
(f c3o1 c3o4)
)
(and
(g2 c3o5)
(f c3o1 c3o5)
)
(and
(g2 c3o6)
(f c3o1 c3o6)
)
(and
(g2 c3o7)
(f c3o1 c3o7)
)
(and
(g2 c3o8)
(f c3o1 c3o8)
)
(and
(g2 c3o9)
(f c3o1 c3o9)
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
(and
(g2 c3o4)
(f c3o2 c3o4)
)
(and
(g2 c3o5)
(f c3o2 c3o5)
)
(and
(g2 c3o6)
(f c3o2 c3o6)
)
(and
(g2 c3o7)
(f c3o2 c3o7)
)
(and
(g2 c3o8)
(f c3o2 c3o8)
)
(and
(g2 c3o9)
(f c3o2 c3o9)
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
(and
(g2 c3o4)
(f c3o3 c3o4)
)
(and
(g2 c3o5)
(f c3o3 c3o5)
)
(and
(g2 c3o6)
(f c3o3 c3o6)
)
(and
(g2 c3o7)
(f c3o3 c3o7)
)
(and
(g2 c3o8)
(f c3o3 c3o8)
)
(and
(g2 c3o9)
(f c3o3 c3o9)
)
)
)
(=>
(g1 c3o4)
(or
(and
(g2 c3o1)
(f c3o4 c3o1)
)
(and
(g2 c3o2)
(f c3o4 c3o2)
)
(and
(g2 c3o3)
(f c3o4 c3o3)
)
(and
(g2 c3o4)
(f c3o4 c3o4)
)
(and
(g2 c3o5)
(f c3o4 c3o5)
)
(and
(g2 c3o6)
(f c3o4 c3o6)
)
(and
(g2 c3o7)
(f c3o4 c3o7)
)
(and
(g2 c3o8)
(f c3o4 c3o8)
)
(and
(g2 c3o9)
(f c3o4 c3o9)
)
)
)
(=>
(g1 c3o5)
(or
(and
(g2 c3o1)
(f c3o5 c3o1)
)
(and
(g2 c3o2)
(f c3o5 c3o2)
)
(and
(g2 c3o3)
(f c3o5 c3o3)
)
(and
(g2 c3o4)
(f c3o5 c3o4)
)
(and
(g2 c3o5)
(f c3o5 c3o5)
)
(and
(g2 c3o6)
(f c3o5 c3o6)
)
(and
(g2 c3o7)
(f c3o5 c3o7)
)
(and
(g2 c3o8)
(f c3o5 c3o8)
)
(and
(g2 c3o9)
(f c3o5 c3o9)
)
)
)
(=>
(g1 c3o6)
(or
(and
(g2 c3o1)
(f c3o6 c3o1)
)
(and
(g2 c3o2)
(f c3o6 c3o2)
)
(and
(g2 c3o3)
(f c3o6 c3o3)
)
(and
(g2 c3o4)
(f c3o6 c3o4)
)
(and
(g2 c3o5)
(f c3o6 c3o5)
)
(and
(g2 c3o6)
(f c3o6 c3o6)
)
(and
(g2 c3o7)
(f c3o6 c3o7)
)
(and
(g2 c3o8)
(f c3o6 c3o8)
)
(and
(g2 c3o9)
(f c3o6 c3o9)
)
)
)
(=>
(g1 c3o7)
(or
(and
(g2 c3o1)
(f c3o7 c3o1)
)
(and
(g2 c3o2)
(f c3o7 c3o2)
)
(and
(g2 c3o3)
(f c3o7 c3o3)
)
(and
(g2 c3o4)
(f c3o7 c3o4)
)
(and
(g2 c3o5)
(f c3o7 c3o5)
)
(and
(g2 c3o6)
(f c3o7 c3o6)
)
(and
(g2 c3o7)
(f c3o7 c3o7)
)
(and
(g2 c3o8)
(f c3o7 c3o8)
)
(and
(g2 c3o9)
(f c3o7 c3o9)
)
)
)
(=>
(g1 c3o8)
(or
(and
(g2 c3o1)
(f c3o8 c3o1)
)
(and
(g2 c3o2)
(f c3o8 c3o2)
)
(and
(g2 c3o3)
(f c3o8 c3o3)
)
(and
(g2 c3o4)
(f c3o8 c3o4)
)
(and
(g2 c3o5)
(f c3o8 c3o5)
)
(and
(g2 c3o6)
(f c3o8 c3o6)
)
(and
(g2 c3o7)
(f c3o8 c3o7)
)
(and
(g2 c3o8)
(f c3o8 c3o8)
)
(and
(g2 c3o9)
(f c3o8 c3o9)
)
)
)
(=>
(g1 c3o9)
(or
(and
(g2 c3o1)
(f c3o9 c3o1)
)
(and
(g2 c3o2)
(f c3o9 c3o2)
)
(and
(g2 c3o3)
(f c3o9 c3o3)
)
(and
(g2 c3o4)
(f c3o9 c3o4)
)
(and
(g2 c3o5)
(f c3o9 c3o5)
)
(and
(g2 c3o6)
(f c3o9 c3o6)
)
(and
(g2 c3o7)
(f c3o9 c3o7)
)
(and
(g2 c3o8)
(f c3o9 c3o8)
)
(and
(g2 c3o9)
(f c3o9 c3o9)
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
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o1 c3o4)
)
(=>
(g2 c3o5)
(f c3o1 c3o5)
)
(=>
(g2 c3o6)
(f c3o1 c3o6)
)
(=>
(g2 c3o7)
(f c3o1 c3o7)
)
(=>
(g2 c3o8)
(f c3o1 c3o8)
)
(=>
(g2 c3o9)
(f c3o1 c3o9)
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
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o2 c3o4)
)
(=>
(g2 c3o5)
(f c3o2 c3o5)
)
(=>
(g2 c3o6)
(f c3o2 c3o6)
)
(=>
(g2 c3o7)
(f c3o2 c3o7)
)
(=>
(g2 c3o8)
(f c3o2 c3o8)
)
(=>
(g2 c3o9)
(f c3o2 c3o9)
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
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o3 c3o4)
)
(=>
(g2 c3o5)
(f c3o3 c3o5)
)
(=>
(g2 c3o6)
(f c3o3 c3o6)
)
(=>
(g2 c3o7)
(f c3o3 c3o7)
)
(=>
(g2 c3o8)
(f c3o3 c3o8)
)
(=>
(g2 c3o9)
(f c3o3 c3o9)
)
)
)
)
(and
(g1 c3o4)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o4 c3o1)
)
(=>
(g2 c3o2)
(f c3o4 c3o2)
)
(=>
(g2 c3o3)
(f c3o4 c3o3)
)
(=>
(g2 c3o4)
(f c3o4 c3o4)
)
(=>
(g2 c3o5)
(f c3o4 c3o5)
)
(=>
(g2 c3o6)
(f c3o4 c3o6)
)
(=>
(g2 c3o7)
(f c3o4 c3o7)
)
(=>
(g2 c3o8)
(f c3o4 c3o8)
)
(=>
(g2 c3o9)
(f c3o4 c3o9)
)
)
)
)
(and
(g1 c3o5)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o5 c3o1)
)
(=>
(g2 c3o2)
(f c3o5 c3o2)
)
(=>
(g2 c3o3)
(f c3o5 c3o3)
)
(=>
(g2 c3o4)
(f c3o5 c3o4)
)
(=>
(g2 c3o5)
(f c3o5 c3o5)
)
(=>
(g2 c3o6)
(f c3o5 c3o6)
)
(=>
(g2 c3o7)
(f c3o5 c3o7)
)
(=>
(g2 c3o8)
(f c3o5 c3o8)
)
(=>
(g2 c3o9)
(f c3o5 c3o9)
)
)
)
)
(and
(g1 c3o6)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o6 c3o1)
)
(=>
(g2 c3o2)
(f c3o6 c3o2)
)
(=>
(g2 c3o3)
(f c3o6 c3o3)
)
(=>
(g2 c3o4)
(f c3o6 c3o4)
)
(=>
(g2 c3o5)
(f c3o6 c3o5)
)
(=>
(g2 c3o6)
(f c3o6 c3o6)
)
(=>
(g2 c3o7)
(f c3o6 c3o7)
)
(=>
(g2 c3o8)
(f c3o6 c3o8)
)
(=>
(g2 c3o9)
(f c3o6 c3o9)
)
)
)
)
(and
(g1 c3o7)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o7 c3o1)
)
(=>
(g2 c3o2)
(f c3o7 c3o2)
)
(=>
(g2 c3o3)
(f c3o7 c3o3)
)
(=>
(g2 c3o4)
(f c3o7 c3o4)
)
(=>
(g2 c3o5)
(f c3o7 c3o5)
)
(=>
(g2 c3o6)
(f c3o7 c3o6)
)
(=>
(g2 c3o7)
(f c3o7 c3o7)
)
(=>
(g2 c3o8)
(f c3o7 c3o8)
)
(=>
(g2 c3o9)
(f c3o7 c3o9)
)
)
)
)
(and
(g1 c3o8)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o8 c3o1)
)
(=>
(g2 c3o2)
(f c3o8 c3o2)
)
(=>
(g2 c3o3)
(f c3o8 c3o3)
)
(=>
(g2 c3o4)
(f c3o8 c3o4)
)
(=>
(g2 c3o5)
(f c3o8 c3o5)
)
(=>
(g2 c3o6)
(f c3o8 c3o6)
)
(=>
(g2 c3o7)
(f c3o8 c3o7)
)
(=>
(g2 c3o8)
(f c3o8 c3o8)
)
(=>
(g2 c3o9)
(f c3o8 c3o9)
)
)
)
)
(and
(g1 c3o9)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o9 c3o1)
)
(=>
(g2 c3o2)
(f c3o9 c3o2)
)
(=>
(g2 c3o3)
(f c3o9 c3o3)
)
(=>
(g2 c3o4)
(f c3o9 c3o4)
)
(=>
(g2 c3o5)
(f c3o9 c3o5)
)
(=>
(g2 c3o6)
(f c3o9 c3o6)
)
(=>
(g2 c3o7)
(f c3o9 c3o7)
)
(=>
(g2 c3o8)
(f c3o9 c3o8)
)
(=>
(g2 c3o9)
(f c3o9 c3o9)
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
(and
(g2 c3o4)
(f c3o1 c3o4)
)
(and
(g2 c3o5)
(f c3o1 c3o5)
)
(and
(g2 c3o6)
(f c3o1 c3o6)
)
(and
(g2 c3o7)
(f c3o1 c3o7)
)
(and
(g2 c3o8)
(f c3o1 c3o8)
)
(and
(g2 c3o9)
(f c3o1 c3o9)
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
(and
(g2 c3o4)
(f c3o2 c3o4)
)
(and
(g2 c3o5)
(f c3o2 c3o5)
)
(and
(g2 c3o6)
(f c3o2 c3o6)
)
(and
(g2 c3o7)
(f c3o2 c3o7)
)
(and
(g2 c3o8)
(f c3o2 c3o8)
)
(and
(g2 c3o9)
(f c3o2 c3o9)
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
(and
(g2 c3o4)
(f c3o3 c3o4)
)
(and
(g2 c3o5)
(f c3o3 c3o5)
)
(and
(g2 c3o6)
(f c3o3 c3o6)
)
(and
(g2 c3o7)
(f c3o3 c3o7)
)
(and
(g2 c3o8)
(f c3o3 c3o8)
)
(and
(g2 c3o9)
(f c3o3 c3o9)
)
)
)
(and
(g1 c3o4)
(or
(and
(g2 c3o1)
(f c3o4 c3o1)
)
(and
(g2 c3o2)
(f c3o4 c3o2)
)
(and
(g2 c3o3)
(f c3o4 c3o3)
)
(and
(g2 c3o4)
(f c3o4 c3o4)
)
(and
(g2 c3o5)
(f c3o4 c3o5)
)
(and
(g2 c3o6)
(f c3o4 c3o6)
)
(and
(g2 c3o7)
(f c3o4 c3o7)
)
(and
(g2 c3o8)
(f c3o4 c3o8)
)
(and
(g2 c3o9)
(f c3o4 c3o9)
)
)
)
(and
(g1 c3o5)
(or
(and
(g2 c3o1)
(f c3o5 c3o1)
)
(and
(g2 c3o2)
(f c3o5 c3o2)
)
(and
(g2 c3o3)
(f c3o5 c3o3)
)
(and
(g2 c3o4)
(f c3o5 c3o4)
)
(and
(g2 c3o5)
(f c3o5 c3o5)
)
(and
(g2 c3o6)
(f c3o5 c3o6)
)
(and
(g2 c3o7)
(f c3o5 c3o7)
)
(and
(g2 c3o8)
(f c3o5 c3o8)
)
(and
(g2 c3o9)
(f c3o5 c3o9)
)
)
)
(and
(g1 c3o6)
(or
(and
(g2 c3o1)
(f c3o6 c3o1)
)
(and
(g2 c3o2)
(f c3o6 c3o2)
)
(and
(g2 c3o3)
(f c3o6 c3o3)
)
(and
(g2 c3o4)
(f c3o6 c3o4)
)
(and
(g2 c3o5)
(f c3o6 c3o5)
)
(and
(g2 c3o6)
(f c3o6 c3o6)
)
(and
(g2 c3o7)
(f c3o6 c3o7)
)
(and
(g2 c3o8)
(f c3o6 c3o8)
)
(and
(g2 c3o9)
(f c3o6 c3o9)
)
)
)
(and
(g1 c3o7)
(or
(and
(g2 c3o1)
(f c3o7 c3o1)
)
(and
(g2 c3o2)
(f c3o7 c3o2)
)
(and
(g2 c3o3)
(f c3o7 c3o3)
)
(and
(g2 c3o4)
(f c3o7 c3o4)
)
(and
(g2 c3o5)
(f c3o7 c3o5)
)
(and
(g2 c3o6)
(f c3o7 c3o6)
)
(and
(g2 c3o7)
(f c3o7 c3o7)
)
(and
(g2 c3o8)
(f c3o7 c3o8)
)
(and
(g2 c3o9)
(f c3o7 c3o9)
)
)
)
(and
(g1 c3o8)
(or
(and
(g2 c3o1)
(f c3o8 c3o1)
)
(and
(g2 c3o2)
(f c3o8 c3o2)
)
(and
(g2 c3o3)
(f c3o8 c3o3)
)
(and
(g2 c3o4)
(f c3o8 c3o4)
)
(and
(g2 c3o5)
(f c3o8 c3o5)
)
(and
(g2 c3o6)
(f c3o8 c3o6)
)
(and
(g2 c3o7)
(f c3o8 c3o7)
)
(and
(g2 c3o8)
(f c3o8 c3o8)
)
(and
(g2 c3o9)
(f c3o8 c3o9)
)
)
)
(and
(g1 c3o9)
(or
(and
(g2 c3o1)
(f c3o9 c3o1)
)
(and
(g2 c3o2)
(f c3o9 c3o2)
)
(and
(g2 c3o3)
(f c3o9 c3o3)
)
(and
(g2 c3o4)
(f c3o9 c3o4)
)
(and
(g2 c3o5)
(f c3o9 c3o5)
)
(and
(g2 c3o6)
(f c3o9 c3o6)
)
(and
(g2 c3o7)
(f c3o9 c3o7)
)
(and
(g2 c3o8)
(f c3o9 c3o8)
)
(and
(g2 c3o9)
(f c3o9 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o1 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o1 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o1 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o1 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o1 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o1 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o2 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o2 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o2 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o2 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o2 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o2 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o3 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o3 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o3 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o3 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o3 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o3 c3o9)
)
)
)
)
(and
(g1 c3o4)
(or
(and
(g2 c3o1)
(not
(f c3o4 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o4 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o4 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o4 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o4 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o4 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o4 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o4 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o4 c3o9)
)
)
)
)
(and
(g1 c3o5)
(or
(and
(g2 c3o1)
(not
(f c3o5 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o5 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o5 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o5 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o5 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o5 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o5 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o5 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o5 c3o9)
)
)
)
)
(and
(g1 c3o6)
(or
(and
(g2 c3o1)
(not
(f c3o6 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o6 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o6 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o6 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o6 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o6 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o6 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o6 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o6 c3o9)
)
)
)
)
(and
(g1 c3o7)
(or
(and
(g2 c3o1)
(not
(f c3o7 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o7 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o7 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o7 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o7 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o7 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o7 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o7 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o7 c3o9)
)
)
)
)
(and
(g1 c3o8)
(or
(and
(g2 c3o1)
(not
(f c3o8 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o8 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o8 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o8 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o8 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o8 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o8 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o8 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o8 c3o9)
)
)
)
)
(and
(g1 c3o9)
(or
(and
(g2 c3o1)
(not
(f c3o9 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o9 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o9 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o9 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o9 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o9 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o9 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o9 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o9 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o1 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o1 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o1 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o1 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o1 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o1 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o2 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o2 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o2 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o2 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o2 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o2 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o3 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o3 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o3 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o3 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o3 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o3 c3o9)
)
)
)
)
(and
(g1 c3o4)
(and
(=>
(g2 c3o1)
(not
(f c3o4 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o4 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o4 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o4 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o4 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o4 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o4 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o4 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o4 c3o9)
)
)
)
)
(and
(g1 c3o5)
(and
(=>
(g2 c3o1)
(not
(f c3o5 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o5 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o5 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o5 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o5 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o5 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o5 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o5 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o5 c3o9)
)
)
)
)
(and
(g1 c3o6)
(and
(=>
(g2 c3o1)
(not
(f c3o6 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o6 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o6 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o6 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o6 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o6 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o6 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o6 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o6 c3o9)
)
)
)
)
(and
(g1 c3o7)
(and
(=>
(g2 c3o1)
(not
(f c3o7 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o7 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o7 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o7 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o7 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o7 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o7 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o7 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o7 c3o9)
)
)
)
)
(and
(g1 c3o8)
(and
(=>
(g2 c3o1)
(not
(f c3o8 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o8 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o8 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o8 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o8 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o8 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o8 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o8 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o8 c3o9)
)
)
)
)
(and
(g1 c3o9)
(and
(=>
(g2 c3o1)
(not
(f c3o9 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o9 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o9 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o9 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o9 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o9 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o9 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o9 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o9 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o1 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o1 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o1 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o1 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o1 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o1 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o2 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o2 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o2 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o2 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o2 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o2 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o3 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o3 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o3 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o3 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o3 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o3 c3o9)
)
)
)
)
(=>
(g1 c3o4)
(or
(and
(g2 c3o1)
(not
(f c3o4 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o4 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o4 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o4 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o4 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o4 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o4 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o4 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o4 c3o9)
)
)
)
)
(=>
(g1 c3o5)
(or
(and
(g2 c3o1)
(not
(f c3o5 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o5 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o5 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o5 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o5 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o5 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o5 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o5 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o5 c3o9)
)
)
)
)
(=>
(g1 c3o6)
(or
(and
(g2 c3o1)
(not
(f c3o6 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o6 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o6 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o6 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o6 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o6 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o6 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o6 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o6 c3o9)
)
)
)
)
(=>
(g1 c3o7)
(or
(and
(g2 c3o1)
(not
(f c3o7 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o7 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o7 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o7 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o7 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o7 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o7 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o7 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o7 c3o9)
)
)
)
)
(=>
(g1 c3o8)
(or
(and
(g2 c3o1)
(not
(f c3o8 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o8 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o8 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o8 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o8 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o8 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o8 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o8 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o8 c3o9)
)
)
)
)
(=>
(g1 c3o9)
(or
(and
(g2 c3o1)
(not
(f c3o9 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o9 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o9 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o9 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o9 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o9 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o9 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o9 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o9 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o1 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o1 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o1 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o1 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o1 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o1 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o2 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o2 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o2 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o2 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o2 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o2 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o3 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o3 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o3 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o3 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o3 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o3 c3o9)
)
)
)
)
(=>
(g1 c3o4)
(and
(=>
(g2 c3o1)
(not
(f c3o4 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o4 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o4 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o4 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o4 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o4 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o4 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o4 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o4 c3o9)
)
)
)
)
(=>
(g1 c3o5)
(and
(=>
(g2 c3o1)
(not
(f c3o5 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o5 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o5 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o5 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o5 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o5 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o5 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o5 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o5 c3o9)
)
)
)
)
(=>
(g1 c3o6)
(and
(=>
(g2 c3o1)
(not
(f c3o6 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o6 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o6 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o6 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o6 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o6 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o6 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o6 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o6 c3o9)
)
)
)
)
(=>
(g1 c3o7)
(and
(=>
(g2 c3o1)
(not
(f c3o7 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o7 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o7 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o7 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o7 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o7 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o7 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o7 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o7 c3o9)
)
)
)
)
(=>
(g1 c3o8)
(and
(=>
(g2 c3o1)
(not
(f c3o8 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o8 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o8 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o8 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o8 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o8 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o8 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o8 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o8 c3o9)
)
)
)
)
(=>
(g1 c3o9)
(and
(=>
(g2 c3o1)
(not
(f c3o9 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o9 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o9 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o9 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o9 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o9 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o9 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o9 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o9 c3o9)
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
(= c4 true)
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(and
(or
(g1 c4o1)
(g1 c4o2)
(g1 c4o3)
(g1 c4o4)
(g1 c4o5)
(g1 c4o6)
(g1 c4o7)
(g1 c4o8)
(g1 c4o9)
)
(and
(=>
(g1 c4o1)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o1 c4o1)
)
(=>
(g2 c4o2)
(f c4o1 c4o2)
)
(=>
(g2 c4o3)
(f c4o1 c4o3)
)
(=>
(g2 c4o4)
(f c4o1 c4o4)
)
(=>
(g2 c4o5)
(f c4o1 c4o5)
)
(=>
(g2 c4o6)
(f c4o1 c4o6)
)
(=>
(g2 c4o7)
(f c4o1 c4o7)
)
(=>
(g2 c4o8)
(f c4o1 c4o8)
)
(=>
(g2 c4o9)
(f c4o1 c4o9)
)
)
)
)
(=>
(g1 c4o2)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o2 c4o1)
)
(=>
(g2 c4o2)
(f c4o2 c4o2)
)
(=>
(g2 c4o3)
(f c4o2 c4o3)
)
(=>
(g2 c4o4)
(f c4o2 c4o4)
)
(=>
(g2 c4o5)
(f c4o2 c4o5)
)
(=>
(g2 c4o6)
(f c4o2 c4o6)
)
(=>
(g2 c4o7)
(f c4o2 c4o7)
)
(=>
(g2 c4o8)
(f c4o2 c4o8)
)
(=>
(g2 c4o9)
(f c4o2 c4o9)
)
)
)
)
(=>
(g1 c4o3)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o3 c4o1)
)
(=>
(g2 c4o2)
(f c4o3 c4o2)
)
(=>
(g2 c4o3)
(f c4o3 c4o3)
)
(=>
(g2 c4o4)
(f c4o3 c4o4)
)
(=>
(g2 c4o5)
(f c4o3 c4o5)
)
(=>
(g2 c4o6)
(f c4o3 c4o6)
)
(=>
(g2 c4o7)
(f c4o3 c4o7)
)
(=>
(g2 c4o8)
(f c4o3 c4o8)
)
(=>
(g2 c4o9)
(f c4o3 c4o9)
)
)
)
)
(=>
(g1 c4o4)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o4 c4o1)
)
(=>
(g2 c4o2)
(f c4o4 c4o2)
)
(=>
(g2 c4o3)
(f c4o4 c4o3)
)
(=>
(g2 c4o4)
(f c4o4 c4o4)
)
(=>
(g2 c4o5)
(f c4o4 c4o5)
)
(=>
(g2 c4o6)
(f c4o4 c4o6)
)
(=>
(g2 c4o7)
(f c4o4 c4o7)
)
(=>
(g2 c4o8)
(f c4o4 c4o8)
)
(=>
(g2 c4o9)
(f c4o4 c4o9)
)
)
)
)
(=>
(g1 c4o5)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o5 c4o1)
)
(=>
(g2 c4o2)
(f c4o5 c4o2)
)
(=>
(g2 c4o3)
(f c4o5 c4o3)
)
(=>
(g2 c4o4)
(f c4o5 c4o4)
)
(=>
(g2 c4o5)
(f c4o5 c4o5)
)
(=>
(g2 c4o6)
(f c4o5 c4o6)
)
(=>
(g2 c4o7)
(f c4o5 c4o7)
)
(=>
(g2 c4o8)
(f c4o5 c4o8)
)
(=>
(g2 c4o9)
(f c4o5 c4o9)
)
)
)
)
(=>
(g1 c4o6)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o6 c4o1)
)
(=>
(g2 c4o2)
(f c4o6 c4o2)
)
(=>
(g2 c4o3)
(f c4o6 c4o3)
)
(=>
(g2 c4o4)
(f c4o6 c4o4)
)
(=>
(g2 c4o5)
(f c4o6 c4o5)
)
(=>
(g2 c4o6)
(f c4o6 c4o6)
)
(=>
(g2 c4o7)
(f c4o6 c4o7)
)
(=>
(g2 c4o8)
(f c4o6 c4o8)
)
(=>
(g2 c4o9)
(f c4o6 c4o9)
)
)
)
)
(=>
(g1 c4o7)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o7 c4o1)
)
(=>
(g2 c4o2)
(f c4o7 c4o2)
)
(=>
(g2 c4o3)
(f c4o7 c4o3)
)
(=>
(g2 c4o4)
(f c4o7 c4o4)
)
(=>
(g2 c4o5)
(f c4o7 c4o5)
)
(=>
(g2 c4o6)
(f c4o7 c4o6)
)
(=>
(g2 c4o7)
(f c4o7 c4o7)
)
(=>
(g2 c4o8)
(f c4o7 c4o8)
)
(=>
(g2 c4o9)
(f c4o7 c4o9)
)
)
)
)
(=>
(g1 c4o8)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o8 c4o1)
)
(=>
(g2 c4o2)
(f c4o8 c4o2)
)
(=>
(g2 c4o3)
(f c4o8 c4o3)
)
(=>
(g2 c4o4)
(f c4o8 c4o4)
)
(=>
(g2 c4o5)
(f c4o8 c4o5)
)
(=>
(g2 c4o6)
(f c4o8 c4o6)
)
(=>
(g2 c4o7)
(f c4o8 c4o7)
)
(=>
(g2 c4o8)
(f c4o8 c4o8)
)
(=>
(g2 c4o9)
(f c4o8 c4o9)
)
)
)
)
(=>
(g1 c4o9)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o9 c4o1)
)
(=>
(g2 c4o2)
(f c4o9 c4o2)
)
(=>
(g2 c4o3)
(f c4o9 c4o3)
)
(=>
(g2 c4o4)
(f c4o9 c4o4)
)
(=>
(g2 c4o5)
(f c4o9 c4o5)
)
(=>
(g2 c4o6)
(f c4o9 c4o6)
)
(=>
(g2 c4o7)
(f c4o9 c4o7)
)
(=>
(g2 c4o8)
(f c4o9 c4o8)
)
(=>
(g2 c4o9)
(f c4o9 c4o9)
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
(g1 c4o1)
(g1 c4o2)
(g1 c4o3)
(g1 c4o4)
(g1 c4o5)
(g1 c4o6)
(g1 c4o7)
(g1 c4o8)
(g1 c4o9)
)
(and
(=>
(g1 c4o1)
(or
(and
(g2 c4o1)
(f c4o1 c4o1)
)
(and
(g2 c4o2)
(f c4o1 c4o2)
)
(and
(g2 c4o3)
(f c4o1 c4o3)
)
(and
(g2 c4o4)
(f c4o1 c4o4)
)
(and
(g2 c4o5)
(f c4o1 c4o5)
)
(and
(g2 c4o6)
(f c4o1 c4o6)
)
(and
(g2 c4o7)
(f c4o1 c4o7)
)
(and
(g2 c4o8)
(f c4o1 c4o8)
)
(and
(g2 c4o9)
(f c4o1 c4o9)
)
)
)
(=>
(g1 c4o2)
(or
(and
(g2 c4o1)
(f c4o2 c4o1)
)
(and
(g2 c4o2)
(f c4o2 c4o2)
)
(and
(g2 c4o3)
(f c4o2 c4o3)
)
(and
(g2 c4o4)
(f c4o2 c4o4)
)
(and
(g2 c4o5)
(f c4o2 c4o5)
)
(and
(g2 c4o6)
(f c4o2 c4o6)
)
(and
(g2 c4o7)
(f c4o2 c4o7)
)
(and
(g2 c4o8)
(f c4o2 c4o8)
)
(and
(g2 c4o9)
(f c4o2 c4o9)
)
)
)
(=>
(g1 c4o3)
(or
(and
(g2 c4o1)
(f c4o3 c4o1)
)
(and
(g2 c4o2)
(f c4o3 c4o2)
)
(and
(g2 c4o3)
(f c4o3 c4o3)
)
(and
(g2 c4o4)
(f c4o3 c4o4)
)
(and
(g2 c4o5)
(f c4o3 c4o5)
)
(and
(g2 c4o6)
(f c4o3 c4o6)
)
(and
(g2 c4o7)
(f c4o3 c4o7)
)
(and
(g2 c4o8)
(f c4o3 c4o8)
)
(and
(g2 c4o9)
(f c4o3 c4o9)
)
)
)
(=>
(g1 c4o4)
(or
(and
(g2 c4o1)
(f c4o4 c4o1)
)
(and
(g2 c4o2)
(f c4o4 c4o2)
)
(and
(g2 c4o3)
(f c4o4 c4o3)
)
(and
(g2 c4o4)
(f c4o4 c4o4)
)
(and
(g2 c4o5)
(f c4o4 c4o5)
)
(and
(g2 c4o6)
(f c4o4 c4o6)
)
(and
(g2 c4o7)
(f c4o4 c4o7)
)
(and
(g2 c4o8)
(f c4o4 c4o8)
)
(and
(g2 c4o9)
(f c4o4 c4o9)
)
)
)
(=>
(g1 c4o5)
(or
(and
(g2 c4o1)
(f c4o5 c4o1)
)
(and
(g2 c4o2)
(f c4o5 c4o2)
)
(and
(g2 c4o3)
(f c4o5 c4o3)
)
(and
(g2 c4o4)
(f c4o5 c4o4)
)
(and
(g2 c4o5)
(f c4o5 c4o5)
)
(and
(g2 c4o6)
(f c4o5 c4o6)
)
(and
(g2 c4o7)
(f c4o5 c4o7)
)
(and
(g2 c4o8)
(f c4o5 c4o8)
)
(and
(g2 c4o9)
(f c4o5 c4o9)
)
)
)
(=>
(g1 c4o6)
(or
(and
(g2 c4o1)
(f c4o6 c4o1)
)
(and
(g2 c4o2)
(f c4o6 c4o2)
)
(and
(g2 c4o3)
(f c4o6 c4o3)
)
(and
(g2 c4o4)
(f c4o6 c4o4)
)
(and
(g2 c4o5)
(f c4o6 c4o5)
)
(and
(g2 c4o6)
(f c4o6 c4o6)
)
(and
(g2 c4o7)
(f c4o6 c4o7)
)
(and
(g2 c4o8)
(f c4o6 c4o8)
)
(and
(g2 c4o9)
(f c4o6 c4o9)
)
)
)
(=>
(g1 c4o7)
(or
(and
(g2 c4o1)
(f c4o7 c4o1)
)
(and
(g2 c4o2)
(f c4o7 c4o2)
)
(and
(g2 c4o3)
(f c4o7 c4o3)
)
(and
(g2 c4o4)
(f c4o7 c4o4)
)
(and
(g2 c4o5)
(f c4o7 c4o5)
)
(and
(g2 c4o6)
(f c4o7 c4o6)
)
(and
(g2 c4o7)
(f c4o7 c4o7)
)
(and
(g2 c4o8)
(f c4o7 c4o8)
)
(and
(g2 c4o9)
(f c4o7 c4o9)
)
)
)
(=>
(g1 c4o8)
(or
(and
(g2 c4o1)
(f c4o8 c4o1)
)
(and
(g2 c4o2)
(f c4o8 c4o2)
)
(and
(g2 c4o3)
(f c4o8 c4o3)
)
(and
(g2 c4o4)
(f c4o8 c4o4)
)
(and
(g2 c4o5)
(f c4o8 c4o5)
)
(and
(g2 c4o6)
(f c4o8 c4o6)
)
(and
(g2 c4o7)
(f c4o8 c4o7)
)
(and
(g2 c4o8)
(f c4o8 c4o8)
)
(and
(g2 c4o9)
(f c4o8 c4o9)
)
)
)
(=>
(g1 c4o9)
(or
(and
(g2 c4o1)
(f c4o9 c4o1)
)
(and
(g2 c4o2)
(f c4o9 c4o2)
)
(and
(g2 c4o3)
(f c4o9 c4o3)
)
(and
(g2 c4o4)
(f c4o9 c4o4)
)
(and
(g2 c4o5)
(f c4o9 c4o5)
)
(and
(g2 c4o6)
(f c4o9 c4o6)
)
(and
(g2 c4o7)
(f c4o9 c4o7)
)
(and
(g2 c4o8)
(f c4o9 c4o8)
)
(and
(g2 c4o9)
(f c4o9 c4o9)
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
(g1 c4o1)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o1 c4o1)
)
(=>
(g2 c4o2)
(f c4o1 c4o2)
)
(=>
(g2 c4o3)
(f c4o1 c4o3)
)
(=>
(g2 c4o4)
(f c4o1 c4o4)
)
(=>
(g2 c4o5)
(f c4o1 c4o5)
)
(=>
(g2 c4o6)
(f c4o1 c4o6)
)
(=>
(g2 c4o7)
(f c4o1 c4o7)
)
(=>
(g2 c4o8)
(f c4o1 c4o8)
)
(=>
(g2 c4o9)
(f c4o1 c4o9)
)
)
)
)
(and
(g1 c4o2)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o2 c4o1)
)
(=>
(g2 c4o2)
(f c4o2 c4o2)
)
(=>
(g2 c4o3)
(f c4o2 c4o3)
)
(=>
(g2 c4o4)
(f c4o2 c4o4)
)
(=>
(g2 c4o5)
(f c4o2 c4o5)
)
(=>
(g2 c4o6)
(f c4o2 c4o6)
)
(=>
(g2 c4o7)
(f c4o2 c4o7)
)
(=>
(g2 c4o8)
(f c4o2 c4o8)
)
(=>
(g2 c4o9)
(f c4o2 c4o9)
)
)
)
)
(and
(g1 c4o3)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o3 c4o1)
)
(=>
(g2 c4o2)
(f c4o3 c4o2)
)
(=>
(g2 c4o3)
(f c4o3 c4o3)
)
(=>
(g2 c4o4)
(f c4o3 c4o4)
)
(=>
(g2 c4o5)
(f c4o3 c4o5)
)
(=>
(g2 c4o6)
(f c4o3 c4o6)
)
(=>
(g2 c4o7)
(f c4o3 c4o7)
)
(=>
(g2 c4o8)
(f c4o3 c4o8)
)
(=>
(g2 c4o9)
(f c4o3 c4o9)
)
)
)
)
(and
(g1 c4o4)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o4 c4o1)
)
(=>
(g2 c4o2)
(f c4o4 c4o2)
)
(=>
(g2 c4o3)
(f c4o4 c4o3)
)
(=>
(g2 c4o4)
(f c4o4 c4o4)
)
(=>
(g2 c4o5)
(f c4o4 c4o5)
)
(=>
(g2 c4o6)
(f c4o4 c4o6)
)
(=>
(g2 c4o7)
(f c4o4 c4o7)
)
(=>
(g2 c4o8)
(f c4o4 c4o8)
)
(=>
(g2 c4o9)
(f c4o4 c4o9)
)
)
)
)
(and
(g1 c4o5)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o5 c4o1)
)
(=>
(g2 c4o2)
(f c4o5 c4o2)
)
(=>
(g2 c4o3)
(f c4o5 c4o3)
)
(=>
(g2 c4o4)
(f c4o5 c4o4)
)
(=>
(g2 c4o5)
(f c4o5 c4o5)
)
(=>
(g2 c4o6)
(f c4o5 c4o6)
)
(=>
(g2 c4o7)
(f c4o5 c4o7)
)
(=>
(g2 c4o8)
(f c4o5 c4o8)
)
(=>
(g2 c4o9)
(f c4o5 c4o9)
)
)
)
)
(and
(g1 c4o6)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o6 c4o1)
)
(=>
(g2 c4o2)
(f c4o6 c4o2)
)
(=>
(g2 c4o3)
(f c4o6 c4o3)
)
(=>
(g2 c4o4)
(f c4o6 c4o4)
)
(=>
(g2 c4o5)
(f c4o6 c4o5)
)
(=>
(g2 c4o6)
(f c4o6 c4o6)
)
(=>
(g2 c4o7)
(f c4o6 c4o7)
)
(=>
(g2 c4o8)
(f c4o6 c4o8)
)
(=>
(g2 c4o9)
(f c4o6 c4o9)
)
)
)
)
(and
(g1 c4o7)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o7 c4o1)
)
(=>
(g2 c4o2)
(f c4o7 c4o2)
)
(=>
(g2 c4o3)
(f c4o7 c4o3)
)
(=>
(g2 c4o4)
(f c4o7 c4o4)
)
(=>
(g2 c4o5)
(f c4o7 c4o5)
)
(=>
(g2 c4o6)
(f c4o7 c4o6)
)
(=>
(g2 c4o7)
(f c4o7 c4o7)
)
(=>
(g2 c4o8)
(f c4o7 c4o8)
)
(=>
(g2 c4o9)
(f c4o7 c4o9)
)
)
)
)
(and
(g1 c4o8)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o8 c4o1)
)
(=>
(g2 c4o2)
(f c4o8 c4o2)
)
(=>
(g2 c4o3)
(f c4o8 c4o3)
)
(=>
(g2 c4o4)
(f c4o8 c4o4)
)
(=>
(g2 c4o5)
(f c4o8 c4o5)
)
(=>
(g2 c4o6)
(f c4o8 c4o6)
)
(=>
(g2 c4o7)
(f c4o8 c4o7)
)
(=>
(g2 c4o8)
(f c4o8 c4o8)
)
(=>
(g2 c4o9)
(f c4o8 c4o9)
)
)
)
)
(and
(g1 c4o9)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o9 c4o1)
)
(=>
(g2 c4o2)
(f c4o9 c4o2)
)
(=>
(g2 c4o3)
(f c4o9 c4o3)
)
(=>
(g2 c4o4)
(f c4o9 c4o4)
)
(=>
(g2 c4o5)
(f c4o9 c4o5)
)
(=>
(g2 c4o6)
(f c4o9 c4o6)
)
(=>
(g2 c4o7)
(f c4o9 c4o7)
)
(=>
(g2 c4o8)
(f c4o9 c4o8)
)
(=>
(g2 c4o9)
(f c4o9 c4o9)
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
(g1 c4o1)
(or
(and
(g2 c4o1)
(f c4o1 c4o1)
)
(and
(g2 c4o2)
(f c4o1 c4o2)
)
(and
(g2 c4o3)
(f c4o1 c4o3)
)
(and
(g2 c4o4)
(f c4o1 c4o4)
)
(and
(g2 c4o5)
(f c4o1 c4o5)
)
(and
(g2 c4o6)
(f c4o1 c4o6)
)
(and
(g2 c4o7)
(f c4o1 c4o7)
)
(and
(g2 c4o8)
(f c4o1 c4o8)
)
(and
(g2 c4o9)
(f c4o1 c4o9)
)
)
)
(and
(g1 c4o2)
(or
(and
(g2 c4o1)
(f c4o2 c4o1)
)
(and
(g2 c4o2)
(f c4o2 c4o2)
)
(and
(g2 c4o3)
(f c4o2 c4o3)
)
(and
(g2 c4o4)
(f c4o2 c4o4)
)
(and
(g2 c4o5)
(f c4o2 c4o5)
)
(and
(g2 c4o6)
(f c4o2 c4o6)
)
(and
(g2 c4o7)
(f c4o2 c4o7)
)
(and
(g2 c4o8)
(f c4o2 c4o8)
)
(and
(g2 c4o9)
(f c4o2 c4o9)
)
)
)
(and
(g1 c4o3)
(or
(and
(g2 c4o1)
(f c4o3 c4o1)
)
(and
(g2 c4o2)
(f c4o3 c4o2)
)
(and
(g2 c4o3)
(f c4o3 c4o3)
)
(and
(g2 c4o4)
(f c4o3 c4o4)
)
(and
(g2 c4o5)
(f c4o3 c4o5)
)
(and
(g2 c4o6)
(f c4o3 c4o6)
)
(and
(g2 c4o7)
(f c4o3 c4o7)
)
(and
(g2 c4o8)
(f c4o3 c4o8)
)
(and
(g2 c4o9)
(f c4o3 c4o9)
)
)
)
(and
(g1 c4o4)
(or
(and
(g2 c4o1)
(f c4o4 c4o1)
)
(and
(g2 c4o2)
(f c4o4 c4o2)
)
(and
(g2 c4o3)
(f c4o4 c4o3)
)
(and
(g2 c4o4)
(f c4o4 c4o4)
)
(and
(g2 c4o5)
(f c4o4 c4o5)
)
(and
(g2 c4o6)
(f c4o4 c4o6)
)
(and
(g2 c4o7)
(f c4o4 c4o7)
)
(and
(g2 c4o8)
(f c4o4 c4o8)
)
(and
(g2 c4o9)
(f c4o4 c4o9)
)
)
)
(and
(g1 c4o5)
(or
(and
(g2 c4o1)
(f c4o5 c4o1)
)
(and
(g2 c4o2)
(f c4o5 c4o2)
)
(and
(g2 c4o3)
(f c4o5 c4o3)
)
(and
(g2 c4o4)
(f c4o5 c4o4)
)
(and
(g2 c4o5)
(f c4o5 c4o5)
)
(and
(g2 c4o6)
(f c4o5 c4o6)
)
(and
(g2 c4o7)
(f c4o5 c4o7)
)
(and
(g2 c4o8)
(f c4o5 c4o8)
)
(and
(g2 c4o9)
(f c4o5 c4o9)
)
)
)
(and
(g1 c4o6)
(or
(and
(g2 c4o1)
(f c4o6 c4o1)
)
(and
(g2 c4o2)
(f c4o6 c4o2)
)
(and
(g2 c4o3)
(f c4o6 c4o3)
)
(and
(g2 c4o4)
(f c4o6 c4o4)
)
(and
(g2 c4o5)
(f c4o6 c4o5)
)
(and
(g2 c4o6)
(f c4o6 c4o6)
)
(and
(g2 c4o7)
(f c4o6 c4o7)
)
(and
(g2 c4o8)
(f c4o6 c4o8)
)
(and
(g2 c4o9)
(f c4o6 c4o9)
)
)
)
(and
(g1 c4o7)
(or
(and
(g2 c4o1)
(f c4o7 c4o1)
)
(and
(g2 c4o2)
(f c4o7 c4o2)
)
(and
(g2 c4o3)
(f c4o7 c4o3)
)
(and
(g2 c4o4)
(f c4o7 c4o4)
)
(and
(g2 c4o5)
(f c4o7 c4o5)
)
(and
(g2 c4o6)
(f c4o7 c4o6)
)
(and
(g2 c4o7)
(f c4o7 c4o7)
)
(and
(g2 c4o8)
(f c4o7 c4o8)
)
(and
(g2 c4o9)
(f c4o7 c4o9)
)
)
)
(and
(g1 c4o8)
(or
(and
(g2 c4o1)
(f c4o8 c4o1)
)
(and
(g2 c4o2)
(f c4o8 c4o2)
)
(and
(g2 c4o3)
(f c4o8 c4o3)
)
(and
(g2 c4o4)
(f c4o8 c4o4)
)
(and
(g2 c4o5)
(f c4o8 c4o5)
)
(and
(g2 c4o6)
(f c4o8 c4o6)
)
(and
(g2 c4o7)
(f c4o8 c4o7)
)
(and
(g2 c4o8)
(f c4o8 c4o8)
)
(and
(g2 c4o9)
(f c4o8 c4o9)
)
)
)
(and
(g1 c4o9)
(or
(and
(g2 c4o1)
(f c4o9 c4o1)
)
(and
(g2 c4o2)
(f c4o9 c4o2)
)
(and
(g2 c4o3)
(f c4o9 c4o3)
)
(and
(g2 c4o4)
(f c4o9 c4o4)
)
(and
(g2 c4o5)
(f c4o9 c4o5)
)
(and
(g2 c4o6)
(f c4o9 c4o6)
)
(and
(g2 c4o7)
(f c4o9 c4o7)
)
(and
(g2 c4o8)
(f c4o9 c4o8)
)
(and
(g2 c4o9)
(f c4o9 c4o9)
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
(= c4 false)
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(or
(and
(g1 c4o1)
(or
(and
(g2 c4o1)
(not
(f c4o1 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o1 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o1 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o1 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o1 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o1 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o1 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o1 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o1 c4o9)
)
)
)
)
(and
(g1 c4o2)
(or
(and
(g2 c4o1)
(not
(f c4o2 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o2 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o2 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o2 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o2 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o2 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o2 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o2 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o2 c4o9)
)
)
)
)
(and
(g1 c4o3)
(or
(and
(g2 c4o1)
(not
(f c4o3 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o3 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o3 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o3 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o3 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o3 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o3 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o3 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o3 c4o9)
)
)
)
)
(and
(g1 c4o4)
(or
(and
(g2 c4o1)
(not
(f c4o4 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o4 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o4 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o4 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o4 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o4 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o4 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o4 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o4 c4o9)
)
)
)
)
(and
(g1 c4o5)
(or
(and
(g2 c4o1)
(not
(f c4o5 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o5 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o5 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o5 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o5 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o5 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o5 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o5 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o5 c4o9)
)
)
)
)
(and
(g1 c4o6)
(or
(and
(g2 c4o1)
(not
(f c4o6 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o6 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o6 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o6 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o6 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o6 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o6 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o6 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o6 c4o9)
)
)
)
)
(and
(g1 c4o7)
(or
(and
(g2 c4o1)
(not
(f c4o7 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o7 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o7 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o7 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o7 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o7 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o7 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o7 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o7 c4o9)
)
)
)
)
(and
(g1 c4o8)
(or
(and
(g2 c4o1)
(not
(f c4o8 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o8 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o8 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o8 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o8 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o8 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o8 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o8 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o8 c4o9)
)
)
)
)
(and
(g1 c4o9)
(or
(and
(g2 c4o1)
(not
(f c4o9 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o9 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o9 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o9 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o9 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o9 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o9 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o9 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o9 c4o9)
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
(g1 c4o1)
(and
(=>
(g2 c4o1)
(not
(f c4o1 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o1 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o1 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o1 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o1 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o1 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o1 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o1 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o1 c4o9)
)
)
)
)
(and
(g1 c4o2)
(and
(=>
(g2 c4o1)
(not
(f c4o2 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o2 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o2 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o2 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o2 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o2 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o2 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o2 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o2 c4o9)
)
)
)
)
(and
(g1 c4o3)
(and
(=>
(g2 c4o1)
(not
(f c4o3 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o3 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o3 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o3 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o3 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o3 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o3 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o3 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o3 c4o9)
)
)
)
)
(and
(g1 c4o4)
(and
(=>
(g2 c4o1)
(not
(f c4o4 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o4 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o4 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o4 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o4 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o4 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o4 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o4 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o4 c4o9)
)
)
)
)
(and
(g1 c4o5)
(and
(=>
(g2 c4o1)
(not
(f c4o5 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o5 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o5 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o5 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o5 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o5 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o5 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o5 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o5 c4o9)
)
)
)
)
(and
(g1 c4o6)
(and
(=>
(g2 c4o1)
(not
(f c4o6 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o6 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o6 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o6 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o6 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o6 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o6 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o6 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o6 c4o9)
)
)
)
)
(and
(g1 c4o7)
(and
(=>
(g2 c4o1)
(not
(f c4o7 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o7 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o7 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o7 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o7 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o7 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o7 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o7 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o7 c4o9)
)
)
)
)
(and
(g1 c4o8)
(and
(=>
(g2 c4o1)
(not
(f c4o8 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o8 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o8 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o8 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o8 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o8 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o8 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o8 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o8 c4o9)
)
)
)
)
(and
(g1 c4o9)
(and
(=>
(g2 c4o1)
(not
(f c4o9 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o9 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o9 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o9 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o9 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o9 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o9 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o9 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o9 c4o9)
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
(g1 c4o1)
(or
(and
(g2 c4o1)
(not
(f c4o1 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o1 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o1 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o1 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o1 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o1 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o1 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o1 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o1 c4o9)
)
)
)
)
(=>
(g1 c4o2)
(or
(and
(g2 c4o1)
(not
(f c4o2 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o2 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o2 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o2 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o2 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o2 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o2 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o2 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o2 c4o9)
)
)
)
)
(=>
(g1 c4o3)
(or
(and
(g2 c4o1)
(not
(f c4o3 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o3 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o3 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o3 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o3 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o3 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o3 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o3 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o3 c4o9)
)
)
)
)
(=>
(g1 c4o4)
(or
(and
(g2 c4o1)
(not
(f c4o4 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o4 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o4 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o4 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o4 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o4 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o4 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o4 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o4 c4o9)
)
)
)
)
(=>
(g1 c4o5)
(or
(and
(g2 c4o1)
(not
(f c4o5 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o5 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o5 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o5 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o5 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o5 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o5 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o5 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o5 c4o9)
)
)
)
)
(=>
(g1 c4o6)
(or
(and
(g2 c4o1)
(not
(f c4o6 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o6 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o6 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o6 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o6 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o6 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o6 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o6 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o6 c4o9)
)
)
)
)
(=>
(g1 c4o7)
(or
(and
(g2 c4o1)
(not
(f c4o7 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o7 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o7 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o7 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o7 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o7 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o7 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o7 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o7 c4o9)
)
)
)
)
(=>
(g1 c4o8)
(or
(and
(g2 c4o1)
(not
(f c4o8 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o8 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o8 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o8 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o8 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o8 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o8 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o8 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o8 c4o9)
)
)
)
)
(=>
(g1 c4o9)
(or
(and
(g2 c4o1)
(not
(f c4o9 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o9 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o9 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o9 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o9 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o9 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o9 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o9 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o9 c4o9)
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
(g1 c4o1)
(and
(=>
(g2 c4o1)
(not
(f c4o1 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o1 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o1 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o1 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o1 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o1 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o1 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o1 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o1 c4o9)
)
)
)
)
(=>
(g1 c4o2)
(and
(=>
(g2 c4o1)
(not
(f c4o2 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o2 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o2 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o2 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o2 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o2 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o2 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o2 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o2 c4o9)
)
)
)
)
(=>
(g1 c4o3)
(and
(=>
(g2 c4o1)
(not
(f c4o3 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o3 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o3 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o3 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o3 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o3 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o3 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o3 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o3 c4o9)
)
)
)
)
(=>
(g1 c4o4)
(and
(=>
(g2 c4o1)
(not
(f c4o4 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o4 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o4 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o4 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o4 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o4 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o4 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o4 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o4 c4o9)
)
)
)
)
(=>
(g1 c4o5)
(and
(=>
(g2 c4o1)
(not
(f c4o5 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o5 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o5 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o5 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o5 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o5 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o5 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o5 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o5 c4o9)
)
)
)
)
(=>
(g1 c4o6)
(and
(=>
(g2 c4o1)
(not
(f c4o6 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o6 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o6 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o6 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o6 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o6 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o6 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o6 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o6 c4o9)
)
)
)
)
(=>
(g1 c4o7)
(and
(=>
(g2 c4o1)
(not
(f c4o7 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o7 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o7 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o7 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o7 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o7 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o7 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o7 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o7 c4o9)
)
)
)
)
(=>
(g1 c4o8)
(and
(=>
(g2 c4o1)
(not
(f c4o8 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o8 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o8 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o8 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o8 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o8 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o8 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o8 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o8 c4o9)
)
)
)
)
(=>
(g1 c4o9)
(and
(=>
(g2 c4o1)
(not
(f c4o9 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o9 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o9 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o9 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o9 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o9 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o9 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o9 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o9 c4o9)
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
(g1 t3o3)
(g1 t3o4)
)
(and
(=>
(g1 t3o1)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
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
(=>
(g2 t3o3)
(f t3o1 t3o3)
)
(=>
(g2 t3o4)
(f t3o1 t3o4)
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
(g2 t3o3)
(g2 t3o4)
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
(=>
(g2 t3o3)
(f t3o2 t3o3)
)
(=>
(g2 t3o4)
(f t3o2 t3o4)
)
)
)
)
(=>
(g1 t3o3)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
)
(and
(=>
(g2 t3o1)
(f t3o3 t3o1)
)
(=>
(g2 t3o2)
(f t3o3 t3o2)
)
(=>
(g2 t3o3)
(f t3o3 t3o3)
)
(=>
(g2 t3o4)
(f t3o3 t3o4)
)
)
)
)
(=>
(g1 t3o4)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
)
(and
(=>
(g2 t3o1)
(f t3o4 t3o1)
)
(=>
(g2 t3o2)
(f t3o4 t3o2)
)
(=>
(g2 t3o3)
(f t3o4 t3o3)
)
(=>
(g2 t3o4)
(f t3o4 t3o4)
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
(g1 t3o3)
(g1 t3o4)
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
(and
(g2 t3o3)
(f t3o1 t3o3)
)
(and
(g2 t3o4)
(f t3o1 t3o4)
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
(and
(g2 t3o3)
(f t3o2 t3o3)
)
(and
(g2 t3o4)
(f t3o2 t3o4)
)
)
)
(=>
(g1 t3o3)
(or
(and
(g2 t3o1)
(f t3o3 t3o1)
)
(and
(g2 t3o2)
(f t3o3 t3o2)
)
(and
(g2 t3o3)
(f t3o3 t3o3)
)
(and
(g2 t3o4)
(f t3o3 t3o4)
)
)
)
(=>
(g1 t3o4)
(or
(and
(g2 t3o1)
(f t3o4 t3o1)
)
(and
(g2 t3o2)
(f t3o4 t3o2)
)
(and
(g2 t3o3)
(f t3o4 t3o3)
)
(and
(g2 t3o4)
(f t3o4 t3o4)
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
(g2 t3o3)
(g2 t3o4)
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
(=>
(g2 t3o3)
(f t3o1 t3o3)
)
(=>
(g2 t3o4)
(f t3o1 t3o4)
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
(g2 t3o3)
(g2 t3o4)
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
(=>
(g2 t3o3)
(f t3o2 t3o3)
)
(=>
(g2 t3o4)
(f t3o2 t3o4)
)
)
)
)
(and
(g1 t3o3)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
)
(and
(=>
(g2 t3o1)
(f t3o3 t3o1)
)
(=>
(g2 t3o2)
(f t3o3 t3o2)
)
(=>
(g2 t3o3)
(f t3o3 t3o3)
)
(=>
(g2 t3o4)
(f t3o3 t3o4)
)
)
)
)
(and
(g1 t3o4)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
)
(and
(=>
(g2 t3o1)
(f t3o4 t3o1)
)
(=>
(g2 t3o2)
(f t3o4 t3o2)
)
(=>
(g2 t3o3)
(f t3o4 t3o3)
)
(=>
(g2 t3o4)
(f t3o4 t3o4)
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
(and
(g2 t3o3)
(f t3o1 t3o3)
)
(and
(g2 t3o4)
(f t3o1 t3o4)
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
(and
(g2 t3o3)
(f t3o2 t3o3)
)
(and
(g2 t3o4)
(f t3o2 t3o4)
)
)
)
(and
(g1 t3o3)
(or
(and
(g2 t3o1)
(f t3o3 t3o1)
)
(and
(g2 t3o2)
(f t3o3 t3o2)
)
(and
(g2 t3o3)
(f t3o3 t3o3)
)
(and
(g2 t3o4)
(f t3o3 t3o4)
)
)
)
(and
(g1 t3o4)
(or
(and
(g2 t3o1)
(f t3o4 t3o1)
)
(and
(g2 t3o2)
(f t3o4 t3o2)
)
(and
(g2 t3o3)
(f t3o4 t3o3)
)
(and
(g2 t3o4)
(f t3o4 t3o4)
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
)
(and
(=>
(g1 c2o1)
(and
(or
(g2 c2o1)
(g2 c2o2)
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
)
)
)
(=>
(g1 c2o2)
(and
(or
(g2 c2o1)
(g2 c2o2)
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
)
)
)
(and
(g1 c2o2)
(and
(or
(g2 c2o1)
(g2 c2o2)
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
(g1 c3o4)
(g1 c3o5)
(g1 c3o6)
(g1 c3o7)
(g1 c3o8)
(g1 c3o9)
)
(and
(=>
(g1 c3o1)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o1 c3o4)
)
(=>
(g2 c3o5)
(f c3o1 c3o5)
)
(=>
(g2 c3o6)
(f c3o1 c3o6)
)
(=>
(g2 c3o7)
(f c3o1 c3o7)
)
(=>
(g2 c3o8)
(f c3o1 c3o8)
)
(=>
(g2 c3o9)
(f c3o1 c3o9)
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
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o2 c3o4)
)
(=>
(g2 c3o5)
(f c3o2 c3o5)
)
(=>
(g2 c3o6)
(f c3o2 c3o6)
)
(=>
(g2 c3o7)
(f c3o2 c3o7)
)
(=>
(g2 c3o8)
(f c3o2 c3o8)
)
(=>
(g2 c3o9)
(f c3o2 c3o9)
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
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o3 c3o4)
)
(=>
(g2 c3o5)
(f c3o3 c3o5)
)
(=>
(g2 c3o6)
(f c3o3 c3o6)
)
(=>
(g2 c3o7)
(f c3o3 c3o7)
)
(=>
(g2 c3o8)
(f c3o3 c3o8)
)
(=>
(g2 c3o9)
(f c3o3 c3o9)
)
)
)
)
(=>
(g1 c3o4)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o4 c3o1)
)
(=>
(g2 c3o2)
(f c3o4 c3o2)
)
(=>
(g2 c3o3)
(f c3o4 c3o3)
)
(=>
(g2 c3o4)
(f c3o4 c3o4)
)
(=>
(g2 c3o5)
(f c3o4 c3o5)
)
(=>
(g2 c3o6)
(f c3o4 c3o6)
)
(=>
(g2 c3o7)
(f c3o4 c3o7)
)
(=>
(g2 c3o8)
(f c3o4 c3o8)
)
(=>
(g2 c3o9)
(f c3o4 c3o9)
)
)
)
)
(=>
(g1 c3o5)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o5 c3o1)
)
(=>
(g2 c3o2)
(f c3o5 c3o2)
)
(=>
(g2 c3o3)
(f c3o5 c3o3)
)
(=>
(g2 c3o4)
(f c3o5 c3o4)
)
(=>
(g2 c3o5)
(f c3o5 c3o5)
)
(=>
(g2 c3o6)
(f c3o5 c3o6)
)
(=>
(g2 c3o7)
(f c3o5 c3o7)
)
(=>
(g2 c3o8)
(f c3o5 c3o8)
)
(=>
(g2 c3o9)
(f c3o5 c3o9)
)
)
)
)
(=>
(g1 c3o6)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o6 c3o1)
)
(=>
(g2 c3o2)
(f c3o6 c3o2)
)
(=>
(g2 c3o3)
(f c3o6 c3o3)
)
(=>
(g2 c3o4)
(f c3o6 c3o4)
)
(=>
(g2 c3o5)
(f c3o6 c3o5)
)
(=>
(g2 c3o6)
(f c3o6 c3o6)
)
(=>
(g2 c3o7)
(f c3o6 c3o7)
)
(=>
(g2 c3o8)
(f c3o6 c3o8)
)
(=>
(g2 c3o9)
(f c3o6 c3o9)
)
)
)
)
(=>
(g1 c3o7)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o7 c3o1)
)
(=>
(g2 c3o2)
(f c3o7 c3o2)
)
(=>
(g2 c3o3)
(f c3o7 c3o3)
)
(=>
(g2 c3o4)
(f c3o7 c3o4)
)
(=>
(g2 c3o5)
(f c3o7 c3o5)
)
(=>
(g2 c3o6)
(f c3o7 c3o6)
)
(=>
(g2 c3o7)
(f c3o7 c3o7)
)
(=>
(g2 c3o8)
(f c3o7 c3o8)
)
(=>
(g2 c3o9)
(f c3o7 c3o9)
)
)
)
)
(=>
(g1 c3o8)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o8 c3o1)
)
(=>
(g2 c3o2)
(f c3o8 c3o2)
)
(=>
(g2 c3o3)
(f c3o8 c3o3)
)
(=>
(g2 c3o4)
(f c3o8 c3o4)
)
(=>
(g2 c3o5)
(f c3o8 c3o5)
)
(=>
(g2 c3o6)
(f c3o8 c3o6)
)
(=>
(g2 c3o7)
(f c3o8 c3o7)
)
(=>
(g2 c3o8)
(f c3o8 c3o8)
)
(=>
(g2 c3o9)
(f c3o8 c3o9)
)
)
)
)
(=>
(g1 c3o9)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o9 c3o1)
)
(=>
(g2 c3o2)
(f c3o9 c3o2)
)
(=>
(g2 c3o3)
(f c3o9 c3o3)
)
(=>
(g2 c3o4)
(f c3o9 c3o4)
)
(=>
(g2 c3o5)
(f c3o9 c3o5)
)
(=>
(g2 c3o6)
(f c3o9 c3o6)
)
(=>
(g2 c3o7)
(f c3o9 c3o7)
)
(=>
(g2 c3o8)
(f c3o9 c3o8)
)
(=>
(g2 c3o9)
(f c3o9 c3o9)
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
(g1 c3o4)
(g1 c3o5)
(g1 c3o6)
(g1 c3o7)
(g1 c3o8)
(g1 c3o9)
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
(and
(g2 c3o4)
(f c3o1 c3o4)
)
(and
(g2 c3o5)
(f c3o1 c3o5)
)
(and
(g2 c3o6)
(f c3o1 c3o6)
)
(and
(g2 c3o7)
(f c3o1 c3o7)
)
(and
(g2 c3o8)
(f c3o1 c3o8)
)
(and
(g2 c3o9)
(f c3o1 c3o9)
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
(and
(g2 c3o4)
(f c3o2 c3o4)
)
(and
(g2 c3o5)
(f c3o2 c3o5)
)
(and
(g2 c3o6)
(f c3o2 c3o6)
)
(and
(g2 c3o7)
(f c3o2 c3o7)
)
(and
(g2 c3o8)
(f c3o2 c3o8)
)
(and
(g2 c3o9)
(f c3o2 c3o9)
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
(and
(g2 c3o4)
(f c3o3 c3o4)
)
(and
(g2 c3o5)
(f c3o3 c3o5)
)
(and
(g2 c3o6)
(f c3o3 c3o6)
)
(and
(g2 c3o7)
(f c3o3 c3o7)
)
(and
(g2 c3o8)
(f c3o3 c3o8)
)
(and
(g2 c3o9)
(f c3o3 c3o9)
)
)
)
(=>
(g1 c3o4)
(or
(and
(g2 c3o1)
(f c3o4 c3o1)
)
(and
(g2 c3o2)
(f c3o4 c3o2)
)
(and
(g2 c3o3)
(f c3o4 c3o3)
)
(and
(g2 c3o4)
(f c3o4 c3o4)
)
(and
(g2 c3o5)
(f c3o4 c3o5)
)
(and
(g2 c3o6)
(f c3o4 c3o6)
)
(and
(g2 c3o7)
(f c3o4 c3o7)
)
(and
(g2 c3o8)
(f c3o4 c3o8)
)
(and
(g2 c3o9)
(f c3o4 c3o9)
)
)
)
(=>
(g1 c3o5)
(or
(and
(g2 c3o1)
(f c3o5 c3o1)
)
(and
(g2 c3o2)
(f c3o5 c3o2)
)
(and
(g2 c3o3)
(f c3o5 c3o3)
)
(and
(g2 c3o4)
(f c3o5 c3o4)
)
(and
(g2 c3o5)
(f c3o5 c3o5)
)
(and
(g2 c3o6)
(f c3o5 c3o6)
)
(and
(g2 c3o7)
(f c3o5 c3o7)
)
(and
(g2 c3o8)
(f c3o5 c3o8)
)
(and
(g2 c3o9)
(f c3o5 c3o9)
)
)
)
(=>
(g1 c3o6)
(or
(and
(g2 c3o1)
(f c3o6 c3o1)
)
(and
(g2 c3o2)
(f c3o6 c3o2)
)
(and
(g2 c3o3)
(f c3o6 c3o3)
)
(and
(g2 c3o4)
(f c3o6 c3o4)
)
(and
(g2 c3o5)
(f c3o6 c3o5)
)
(and
(g2 c3o6)
(f c3o6 c3o6)
)
(and
(g2 c3o7)
(f c3o6 c3o7)
)
(and
(g2 c3o8)
(f c3o6 c3o8)
)
(and
(g2 c3o9)
(f c3o6 c3o9)
)
)
)
(=>
(g1 c3o7)
(or
(and
(g2 c3o1)
(f c3o7 c3o1)
)
(and
(g2 c3o2)
(f c3o7 c3o2)
)
(and
(g2 c3o3)
(f c3o7 c3o3)
)
(and
(g2 c3o4)
(f c3o7 c3o4)
)
(and
(g2 c3o5)
(f c3o7 c3o5)
)
(and
(g2 c3o6)
(f c3o7 c3o6)
)
(and
(g2 c3o7)
(f c3o7 c3o7)
)
(and
(g2 c3o8)
(f c3o7 c3o8)
)
(and
(g2 c3o9)
(f c3o7 c3o9)
)
)
)
(=>
(g1 c3o8)
(or
(and
(g2 c3o1)
(f c3o8 c3o1)
)
(and
(g2 c3o2)
(f c3o8 c3o2)
)
(and
(g2 c3o3)
(f c3o8 c3o3)
)
(and
(g2 c3o4)
(f c3o8 c3o4)
)
(and
(g2 c3o5)
(f c3o8 c3o5)
)
(and
(g2 c3o6)
(f c3o8 c3o6)
)
(and
(g2 c3o7)
(f c3o8 c3o7)
)
(and
(g2 c3o8)
(f c3o8 c3o8)
)
(and
(g2 c3o9)
(f c3o8 c3o9)
)
)
)
(=>
(g1 c3o9)
(or
(and
(g2 c3o1)
(f c3o9 c3o1)
)
(and
(g2 c3o2)
(f c3o9 c3o2)
)
(and
(g2 c3o3)
(f c3o9 c3o3)
)
(and
(g2 c3o4)
(f c3o9 c3o4)
)
(and
(g2 c3o5)
(f c3o9 c3o5)
)
(and
(g2 c3o6)
(f c3o9 c3o6)
)
(and
(g2 c3o7)
(f c3o9 c3o7)
)
(and
(g2 c3o8)
(f c3o9 c3o8)
)
(and
(g2 c3o9)
(f c3o9 c3o9)
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
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o1 c3o4)
)
(=>
(g2 c3o5)
(f c3o1 c3o5)
)
(=>
(g2 c3o6)
(f c3o1 c3o6)
)
(=>
(g2 c3o7)
(f c3o1 c3o7)
)
(=>
(g2 c3o8)
(f c3o1 c3o8)
)
(=>
(g2 c3o9)
(f c3o1 c3o9)
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
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o2 c3o4)
)
(=>
(g2 c3o5)
(f c3o2 c3o5)
)
(=>
(g2 c3o6)
(f c3o2 c3o6)
)
(=>
(g2 c3o7)
(f c3o2 c3o7)
)
(=>
(g2 c3o8)
(f c3o2 c3o8)
)
(=>
(g2 c3o9)
(f c3o2 c3o9)
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
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
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
(=>
(g2 c3o4)
(f c3o3 c3o4)
)
(=>
(g2 c3o5)
(f c3o3 c3o5)
)
(=>
(g2 c3o6)
(f c3o3 c3o6)
)
(=>
(g2 c3o7)
(f c3o3 c3o7)
)
(=>
(g2 c3o8)
(f c3o3 c3o8)
)
(=>
(g2 c3o9)
(f c3o3 c3o9)
)
)
)
)
(and
(g1 c3o4)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o4 c3o1)
)
(=>
(g2 c3o2)
(f c3o4 c3o2)
)
(=>
(g2 c3o3)
(f c3o4 c3o3)
)
(=>
(g2 c3o4)
(f c3o4 c3o4)
)
(=>
(g2 c3o5)
(f c3o4 c3o5)
)
(=>
(g2 c3o6)
(f c3o4 c3o6)
)
(=>
(g2 c3o7)
(f c3o4 c3o7)
)
(=>
(g2 c3o8)
(f c3o4 c3o8)
)
(=>
(g2 c3o9)
(f c3o4 c3o9)
)
)
)
)
(and
(g1 c3o5)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o5 c3o1)
)
(=>
(g2 c3o2)
(f c3o5 c3o2)
)
(=>
(g2 c3o3)
(f c3o5 c3o3)
)
(=>
(g2 c3o4)
(f c3o5 c3o4)
)
(=>
(g2 c3o5)
(f c3o5 c3o5)
)
(=>
(g2 c3o6)
(f c3o5 c3o6)
)
(=>
(g2 c3o7)
(f c3o5 c3o7)
)
(=>
(g2 c3o8)
(f c3o5 c3o8)
)
(=>
(g2 c3o9)
(f c3o5 c3o9)
)
)
)
)
(and
(g1 c3o6)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o6 c3o1)
)
(=>
(g2 c3o2)
(f c3o6 c3o2)
)
(=>
(g2 c3o3)
(f c3o6 c3o3)
)
(=>
(g2 c3o4)
(f c3o6 c3o4)
)
(=>
(g2 c3o5)
(f c3o6 c3o5)
)
(=>
(g2 c3o6)
(f c3o6 c3o6)
)
(=>
(g2 c3o7)
(f c3o6 c3o7)
)
(=>
(g2 c3o8)
(f c3o6 c3o8)
)
(=>
(g2 c3o9)
(f c3o6 c3o9)
)
)
)
)
(and
(g1 c3o7)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o7 c3o1)
)
(=>
(g2 c3o2)
(f c3o7 c3o2)
)
(=>
(g2 c3o3)
(f c3o7 c3o3)
)
(=>
(g2 c3o4)
(f c3o7 c3o4)
)
(=>
(g2 c3o5)
(f c3o7 c3o5)
)
(=>
(g2 c3o6)
(f c3o7 c3o6)
)
(=>
(g2 c3o7)
(f c3o7 c3o7)
)
(=>
(g2 c3o8)
(f c3o7 c3o8)
)
(=>
(g2 c3o9)
(f c3o7 c3o9)
)
)
)
)
(and
(g1 c3o8)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o8 c3o1)
)
(=>
(g2 c3o2)
(f c3o8 c3o2)
)
(=>
(g2 c3o3)
(f c3o8 c3o3)
)
(=>
(g2 c3o4)
(f c3o8 c3o4)
)
(=>
(g2 c3o5)
(f c3o8 c3o5)
)
(=>
(g2 c3o6)
(f c3o8 c3o6)
)
(=>
(g2 c3o7)
(f c3o8 c3o7)
)
(=>
(g2 c3o8)
(f c3o8 c3o8)
)
(=>
(g2 c3o9)
(f c3o8 c3o9)
)
)
)
)
(and
(g1 c3o9)
(and
(or
(g2 c3o1)
(g2 c3o2)
(g2 c3o3)
(g2 c3o4)
(g2 c3o5)
(g2 c3o6)
(g2 c3o7)
(g2 c3o8)
(g2 c3o9)
)
(and
(=>
(g2 c3o1)
(f c3o9 c3o1)
)
(=>
(g2 c3o2)
(f c3o9 c3o2)
)
(=>
(g2 c3o3)
(f c3o9 c3o3)
)
(=>
(g2 c3o4)
(f c3o9 c3o4)
)
(=>
(g2 c3o5)
(f c3o9 c3o5)
)
(=>
(g2 c3o6)
(f c3o9 c3o6)
)
(=>
(g2 c3o7)
(f c3o9 c3o7)
)
(=>
(g2 c3o8)
(f c3o9 c3o8)
)
(=>
(g2 c3o9)
(f c3o9 c3o9)
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
(and
(g2 c3o4)
(f c3o1 c3o4)
)
(and
(g2 c3o5)
(f c3o1 c3o5)
)
(and
(g2 c3o6)
(f c3o1 c3o6)
)
(and
(g2 c3o7)
(f c3o1 c3o7)
)
(and
(g2 c3o8)
(f c3o1 c3o8)
)
(and
(g2 c3o9)
(f c3o1 c3o9)
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
(and
(g2 c3o4)
(f c3o2 c3o4)
)
(and
(g2 c3o5)
(f c3o2 c3o5)
)
(and
(g2 c3o6)
(f c3o2 c3o6)
)
(and
(g2 c3o7)
(f c3o2 c3o7)
)
(and
(g2 c3o8)
(f c3o2 c3o8)
)
(and
(g2 c3o9)
(f c3o2 c3o9)
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
(and
(g2 c3o4)
(f c3o3 c3o4)
)
(and
(g2 c3o5)
(f c3o3 c3o5)
)
(and
(g2 c3o6)
(f c3o3 c3o6)
)
(and
(g2 c3o7)
(f c3o3 c3o7)
)
(and
(g2 c3o8)
(f c3o3 c3o8)
)
(and
(g2 c3o9)
(f c3o3 c3o9)
)
)
)
(and
(g1 c3o4)
(or
(and
(g2 c3o1)
(f c3o4 c3o1)
)
(and
(g2 c3o2)
(f c3o4 c3o2)
)
(and
(g2 c3o3)
(f c3o4 c3o3)
)
(and
(g2 c3o4)
(f c3o4 c3o4)
)
(and
(g2 c3o5)
(f c3o4 c3o5)
)
(and
(g2 c3o6)
(f c3o4 c3o6)
)
(and
(g2 c3o7)
(f c3o4 c3o7)
)
(and
(g2 c3o8)
(f c3o4 c3o8)
)
(and
(g2 c3o9)
(f c3o4 c3o9)
)
)
)
(and
(g1 c3o5)
(or
(and
(g2 c3o1)
(f c3o5 c3o1)
)
(and
(g2 c3o2)
(f c3o5 c3o2)
)
(and
(g2 c3o3)
(f c3o5 c3o3)
)
(and
(g2 c3o4)
(f c3o5 c3o4)
)
(and
(g2 c3o5)
(f c3o5 c3o5)
)
(and
(g2 c3o6)
(f c3o5 c3o6)
)
(and
(g2 c3o7)
(f c3o5 c3o7)
)
(and
(g2 c3o8)
(f c3o5 c3o8)
)
(and
(g2 c3o9)
(f c3o5 c3o9)
)
)
)
(and
(g1 c3o6)
(or
(and
(g2 c3o1)
(f c3o6 c3o1)
)
(and
(g2 c3o2)
(f c3o6 c3o2)
)
(and
(g2 c3o3)
(f c3o6 c3o3)
)
(and
(g2 c3o4)
(f c3o6 c3o4)
)
(and
(g2 c3o5)
(f c3o6 c3o5)
)
(and
(g2 c3o6)
(f c3o6 c3o6)
)
(and
(g2 c3o7)
(f c3o6 c3o7)
)
(and
(g2 c3o8)
(f c3o6 c3o8)
)
(and
(g2 c3o9)
(f c3o6 c3o9)
)
)
)
(and
(g1 c3o7)
(or
(and
(g2 c3o1)
(f c3o7 c3o1)
)
(and
(g2 c3o2)
(f c3o7 c3o2)
)
(and
(g2 c3o3)
(f c3o7 c3o3)
)
(and
(g2 c3o4)
(f c3o7 c3o4)
)
(and
(g2 c3o5)
(f c3o7 c3o5)
)
(and
(g2 c3o6)
(f c3o7 c3o6)
)
(and
(g2 c3o7)
(f c3o7 c3o7)
)
(and
(g2 c3o8)
(f c3o7 c3o8)
)
(and
(g2 c3o9)
(f c3o7 c3o9)
)
)
)
(and
(g1 c3o8)
(or
(and
(g2 c3o1)
(f c3o8 c3o1)
)
(and
(g2 c3o2)
(f c3o8 c3o2)
)
(and
(g2 c3o3)
(f c3o8 c3o3)
)
(and
(g2 c3o4)
(f c3o8 c3o4)
)
(and
(g2 c3o5)
(f c3o8 c3o5)
)
(and
(g2 c3o6)
(f c3o8 c3o6)
)
(and
(g2 c3o7)
(f c3o8 c3o7)
)
(and
(g2 c3o8)
(f c3o8 c3o8)
)
(and
(g2 c3o9)
(f c3o8 c3o9)
)
)
)
(and
(g1 c3o9)
(or
(and
(g2 c3o1)
(f c3o9 c3o1)
)
(and
(g2 c3o2)
(f c3o9 c3o2)
)
(and
(g2 c3o3)
(f c3o9 c3o3)
)
(and
(g2 c3o4)
(f c3o9 c3o4)
)
(and
(g2 c3o5)
(f c3o9 c3o5)
)
(and
(g2 c3o6)
(f c3o9 c3o6)
)
(and
(g2 c3o7)
(f c3o9 c3o7)
)
(and
(g2 c3o8)
(f c3o9 c3o8)
)
(and
(g2 c3o9)
(f c3o9 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o1 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o1 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o1 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o1 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o1 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o1 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o2 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o2 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o2 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o2 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o2 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o2 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o3 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o3 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o3 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o3 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o3 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o3 c3o9)
)
)
)
)
(and
(g1 c3o4)
(or
(and
(g2 c3o1)
(not
(f c3o4 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o4 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o4 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o4 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o4 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o4 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o4 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o4 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o4 c3o9)
)
)
)
)
(and
(g1 c3o5)
(or
(and
(g2 c3o1)
(not
(f c3o5 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o5 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o5 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o5 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o5 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o5 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o5 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o5 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o5 c3o9)
)
)
)
)
(and
(g1 c3o6)
(or
(and
(g2 c3o1)
(not
(f c3o6 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o6 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o6 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o6 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o6 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o6 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o6 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o6 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o6 c3o9)
)
)
)
)
(and
(g1 c3o7)
(or
(and
(g2 c3o1)
(not
(f c3o7 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o7 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o7 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o7 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o7 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o7 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o7 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o7 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o7 c3o9)
)
)
)
)
(and
(g1 c3o8)
(or
(and
(g2 c3o1)
(not
(f c3o8 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o8 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o8 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o8 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o8 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o8 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o8 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o8 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o8 c3o9)
)
)
)
)
(and
(g1 c3o9)
(or
(and
(g2 c3o1)
(not
(f c3o9 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o9 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o9 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o9 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o9 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o9 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o9 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o9 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o9 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o1 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o1 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o1 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o1 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o1 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o1 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o2 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o2 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o2 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o2 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o2 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o2 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o3 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o3 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o3 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o3 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o3 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o3 c3o9)
)
)
)
)
(and
(g1 c3o4)
(and
(=>
(g2 c3o1)
(not
(f c3o4 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o4 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o4 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o4 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o4 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o4 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o4 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o4 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o4 c3o9)
)
)
)
)
(and
(g1 c3o5)
(and
(=>
(g2 c3o1)
(not
(f c3o5 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o5 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o5 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o5 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o5 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o5 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o5 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o5 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o5 c3o9)
)
)
)
)
(and
(g1 c3o6)
(and
(=>
(g2 c3o1)
(not
(f c3o6 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o6 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o6 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o6 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o6 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o6 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o6 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o6 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o6 c3o9)
)
)
)
)
(and
(g1 c3o7)
(and
(=>
(g2 c3o1)
(not
(f c3o7 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o7 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o7 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o7 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o7 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o7 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o7 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o7 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o7 c3o9)
)
)
)
)
(and
(g1 c3o8)
(and
(=>
(g2 c3o1)
(not
(f c3o8 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o8 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o8 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o8 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o8 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o8 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o8 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o8 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o8 c3o9)
)
)
)
)
(and
(g1 c3o9)
(and
(=>
(g2 c3o1)
(not
(f c3o9 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o9 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o9 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o9 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o9 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o9 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o9 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o9 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o9 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o1 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o1 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o1 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o1 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o1 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o1 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o2 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o2 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o2 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o2 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o2 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o2 c3o9)
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
(and
(g2 c3o4)
(not
(f c3o3 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o3 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o3 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o3 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o3 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o3 c3o9)
)
)
)
)
(=>
(g1 c3o4)
(or
(and
(g2 c3o1)
(not
(f c3o4 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o4 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o4 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o4 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o4 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o4 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o4 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o4 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o4 c3o9)
)
)
)
)
(=>
(g1 c3o5)
(or
(and
(g2 c3o1)
(not
(f c3o5 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o5 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o5 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o5 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o5 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o5 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o5 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o5 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o5 c3o9)
)
)
)
)
(=>
(g1 c3o6)
(or
(and
(g2 c3o1)
(not
(f c3o6 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o6 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o6 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o6 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o6 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o6 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o6 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o6 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o6 c3o9)
)
)
)
)
(=>
(g1 c3o7)
(or
(and
(g2 c3o1)
(not
(f c3o7 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o7 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o7 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o7 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o7 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o7 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o7 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o7 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o7 c3o9)
)
)
)
)
(=>
(g1 c3o8)
(or
(and
(g2 c3o1)
(not
(f c3o8 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o8 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o8 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o8 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o8 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o8 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o8 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o8 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o8 c3o9)
)
)
)
)
(=>
(g1 c3o9)
(or
(and
(g2 c3o1)
(not
(f c3o9 c3o1)
)
)
(and
(g2 c3o2)
(not
(f c3o9 c3o2)
)
)
(and
(g2 c3o3)
(not
(f c3o9 c3o3)
)
)
(and
(g2 c3o4)
(not
(f c3o9 c3o4)
)
)
(and
(g2 c3o5)
(not
(f c3o9 c3o5)
)
)
(and
(g2 c3o6)
(not
(f c3o9 c3o6)
)
)
(and
(g2 c3o7)
(not
(f c3o9 c3o7)
)
)
(and
(g2 c3o8)
(not
(f c3o9 c3o8)
)
)
(and
(g2 c3o9)
(not
(f c3o9 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o1 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o1 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o1 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o1 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o1 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o1 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o2 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o2 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o2 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o2 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o2 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o2 c3o9)
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
(=>
(g2 c3o4)
(not
(f c3o3 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o3 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o3 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o3 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o3 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o3 c3o9)
)
)
)
)
(=>
(g1 c3o4)
(and
(=>
(g2 c3o1)
(not
(f c3o4 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o4 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o4 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o4 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o4 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o4 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o4 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o4 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o4 c3o9)
)
)
)
)
(=>
(g1 c3o5)
(and
(=>
(g2 c3o1)
(not
(f c3o5 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o5 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o5 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o5 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o5 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o5 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o5 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o5 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o5 c3o9)
)
)
)
)
(=>
(g1 c3o6)
(and
(=>
(g2 c3o1)
(not
(f c3o6 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o6 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o6 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o6 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o6 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o6 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o6 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o6 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o6 c3o9)
)
)
)
)
(=>
(g1 c3o7)
(and
(=>
(g2 c3o1)
(not
(f c3o7 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o7 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o7 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o7 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o7 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o7 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o7 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o7 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o7 c3o9)
)
)
)
)
(=>
(g1 c3o8)
(and
(=>
(g2 c3o1)
(not
(f c3o8 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o8 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o8 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o8 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o8 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o8 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o8 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o8 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o8 c3o9)
)
)
)
)
(=>
(g1 c3o9)
(and
(=>
(g2 c3o1)
(not
(f c3o9 c3o1)
)
)
(=>
(g2 c3o2)
(not
(f c3o9 c3o2)
)
)
(=>
(g2 c3o3)
(not
(f c3o9 c3o3)
)
)
(=>
(g2 c3o4)
(not
(f c3o9 c3o4)
)
)
(=>
(g2 c3o5)
(not
(f c3o9 c3o5)
)
)
(=>
(g2 c3o6)
(not
(f c3o9 c3o6)
)
)
(=>
(g2 c3o7)
(not
(f c3o9 c3o7)
)
)
(=>
(g2 c3o8)
(not
(f c3o9 c3o8)
)
)
(=>
(g2 c3o9)
(not
(f c3o9 c3o9)
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
(= c4 true)
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(and
(or
(g1 c4o1)
(g1 c4o2)
(g1 c4o3)
(g1 c4o4)
(g1 c4o5)
(g1 c4o6)
(g1 c4o7)
(g1 c4o8)
(g1 c4o9)
)
(and
(=>
(g1 c4o1)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o1 c4o1)
)
(=>
(g2 c4o2)
(f c4o1 c4o2)
)
(=>
(g2 c4o3)
(f c4o1 c4o3)
)
(=>
(g2 c4o4)
(f c4o1 c4o4)
)
(=>
(g2 c4o5)
(f c4o1 c4o5)
)
(=>
(g2 c4o6)
(f c4o1 c4o6)
)
(=>
(g2 c4o7)
(f c4o1 c4o7)
)
(=>
(g2 c4o8)
(f c4o1 c4o8)
)
(=>
(g2 c4o9)
(f c4o1 c4o9)
)
)
)
)
(=>
(g1 c4o2)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o2 c4o1)
)
(=>
(g2 c4o2)
(f c4o2 c4o2)
)
(=>
(g2 c4o3)
(f c4o2 c4o3)
)
(=>
(g2 c4o4)
(f c4o2 c4o4)
)
(=>
(g2 c4o5)
(f c4o2 c4o5)
)
(=>
(g2 c4o6)
(f c4o2 c4o6)
)
(=>
(g2 c4o7)
(f c4o2 c4o7)
)
(=>
(g2 c4o8)
(f c4o2 c4o8)
)
(=>
(g2 c4o9)
(f c4o2 c4o9)
)
)
)
)
(=>
(g1 c4o3)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o3 c4o1)
)
(=>
(g2 c4o2)
(f c4o3 c4o2)
)
(=>
(g2 c4o3)
(f c4o3 c4o3)
)
(=>
(g2 c4o4)
(f c4o3 c4o4)
)
(=>
(g2 c4o5)
(f c4o3 c4o5)
)
(=>
(g2 c4o6)
(f c4o3 c4o6)
)
(=>
(g2 c4o7)
(f c4o3 c4o7)
)
(=>
(g2 c4o8)
(f c4o3 c4o8)
)
(=>
(g2 c4o9)
(f c4o3 c4o9)
)
)
)
)
(=>
(g1 c4o4)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o4 c4o1)
)
(=>
(g2 c4o2)
(f c4o4 c4o2)
)
(=>
(g2 c4o3)
(f c4o4 c4o3)
)
(=>
(g2 c4o4)
(f c4o4 c4o4)
)
(=>
(g2 c4o5)
(f c4o4 c4o5)
)
(=>
(g2 c4o6)
(f c4o4 c4o6)
)
(=>
(g2 c4o7)
(f c4o4 c4o7)
)
(=>
(g2 c4o8)
(f c4o4 c4o8)
)
(=>
(g2 c4o9)
(f c4o4 c4o9)
)
)
)
)
(=>
(g1 c4o5)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o5 c4o1)
)
(=>
(g2 c4o2)
(f c4o5 c4o2)
)
(=>
(g2 c4o3)
(f c4o5 c4o3)
)
(=>
(g2 c4o4)
(f c4o5 c4o4)
)
(=>
(g2 c4o5)
(f c4o5 c4o5)
)
(=>
(g2 c4o6)
(f c4o5 c4o6)
)
(=>
(g2 c4o7)
(f c4o5 c4o7)
)
(=>
(g2 c4o8)
(f c4o5 c4o8)
)
(=>
(g2 c4o9)
(f c4o5 c4o9)
)
)
)
)
(=>
(g1 c4o6)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o6 c4o1)
)
(=>
(g2 c4o2)
(f c4o6 c4o2)
)
(=>
(g2 c4o3)
(f c4o6 c4o3)
)
(=>
(g2 c4o4)
(f c4o6 c4o4)
)
(=>
(g2 c4o5)
(f c4o6 c4o5)
)
(=>
(g2 c4o6)
(f c4o6 c4o6)
)
(=>
(g2 c4o7)
(f c4o6 c4o7)
)
(=>
(g2 c4o8)
(f c4o6 c4o8)
)
(=>
(g2 c4o9)
(f c4o6 c4o9)
)
)
)
)
(=>
(g1 c4o7)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o7 c4o1)
)
(=>
(g2 c4o2)
(f c4o7 c4o2)
)
(=>
(g2 c4o3)
(f c4o7 c4o3)
)
(=>
(g2 c4o4)
(f c4o7 c4o4)
)
(=>
(g2 c4o5)
(f c4o7 c4o5)
)
(=>
(g2 c4o6)
(f c4o7 c4o6)
)
(=>
(g2 c4o7)
(f c4o7 c4o7)
)
(=>
(g2 c4o8)
(f c4o7 c4o8)
)
(=>
(g2 c4o9)
(f c4o7 c4o9)
)
)
)
)
(=>
(g1 c4o8)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o8 c4o1)
)
(=>
(g2 c4o2)
(f c4o8 c4o2)
)
(=>
(g2 c4o3)
(f c4o8 c4o3)
)
(=>
(g2 c4o4)
(f c4o8 c4o4)
)
(=>
(g2 c4o5)
(f c4o8 c4o5)
)
(=>
(g2 c4o6)
(f c4o8 c4o6)
)
(=>
(g2 c4o7)
(f c4o8 c4o7)
)
(=>
(g2 c4o8)
(f c4o8 c4o8)
)
(=>
(g2 c4o9)
(f c4o8 c4o9)
)
)
)
)
(=>
(g1 c4o9)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o9 c4o1)
)
(=>
(g2 c4o2)
(f c4o9 c4o2)
)
(=>
(g2 c4o3)
(f c4o9 c4o3)
)
(=>
(g2 c4o4)
(f c4o9 c4o4)
)
(=>
(g2 c4o5)
(f c4o9 c4o5)
)
(=>
(g2 c4o6)
(f c4o9 c4o6)
)
(=>
(g2 c4o7)
(f c4o9 c4o7)
)
(=>
(g2 c4o8)
(f c4o9 c4o8)
)
(=>
(g2 c4o9)
(f c4o9 c4o9)
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
(g1 c4o1)
(g1 c4o2)
(g1 c4o3)
(g1 c4o4)
(g1 c4o5)
(g1 c4o6)
(g1 c4o7)
(g1 c4o8)
(g1 c4o9)
)
(and
(=>
(g1 c4o1)
(or
(and
(g2 c4o1)
(f c4o1 c4o1)
)
(and
(g2 c4o2)
(f c4o1 c4o2)
)
(and
(g2 c4o3)
(f c4o1 c4o3)
)
(and
(g2 c4o4)
(f c4o1 c4o4)
)
(and
(g2 c4o5)
(f c4o1 c4o5)
)
(and
(g2 c4o6)
(f c4o1 c4o6)
)
(and
(g2 c4o7)
(f c4o1 c4o7)
)
(and
(g2 c4o8)
(f c4o1 c4o8)
)
(and
(g2 c4o9)
(f c4o1 c4o9)
)
)
)
(=>
(g1 c4o2)
(or
(and
(g2 c4o1)
(f c4o2 c4o1)
)
(and
(g2 c4o2)
(f c4o2 c4o2)
)
(and
(g2 c4o3)
(f c4o2 c4o3)
)
(and
(g2 c4o4)
(f c4o2 c4o4)
)
(and
(g2 c4o5)
(f c4o2 c4o5)
)
(and
(g2 c4o6)
(f c4o2 c4o6)
)
(and
(g2 c4o7)
(f c4o2 c4o7)
)
(and
(g2 c4o8)
(f c4o2 c4o8)
)
(and
(g2 c4o9)
(f c4o2 c4o9)
)
)
)
(=>
(g1 c4o3)
(or
(and
(g2 c4o1)
(f c4o3 c4o1)
)
(and
(g2 c4o2)
(f c4o3 c4o2)
)
(and
(g2 c4o3)
(f c4o3 c4o3)
)
(and
(g2 c4o4)
(f c4o3 c4o4)
)
(and
(g2 c4o5)
(f c4o3 c4o5)
)
(and
(g2 c4o6)
(f c4o3 c4o6)
)
(and
(g2 c4o7)
(f c4o3 c4o7)
)
(and
(g2 c4o8)
(f c4o3 c4o8)
)
(and
(g2 c4o9)
(f c4o3 c4o9)
)
)
)
(=>
(g1 c4o4)
(or
(and
(g2 c4o1)
(f c4o4 c4o1)
)
(and
(g2 c4o2)
(f c4o4 c4o2)
)
(and
(g2 c4o3)
(f c4o4 c4o3)
)
(and
(g2 c4o4)
(f c4o4 c4o4)
)
(and
(g2 c4o5)
(f c4o4 c4o5)
)
(and
(g2 c4o6)
(f c4o4 c4o6)
)
(and
(g2 c4o7)
(f c4o4 c4o7)
)
(and
(g2 c4o8)
(f c4o4 c4o8)
)
(and
(g2 c4o9)
(f c4o4 c4o9)
)
)
)
(=>
(g1 c4o5)
(or
(and
(g2 c4o1)
(f c4o5 c4o1)
)
(and
(g2 c4o2)
(f c4o5 c4o2)
)
(and
(g2 c4o3)
(f c4o5 c4o3)
)
(and
(g2 c4o4)
(f c4o5 c4o4)
)
(and
(g2 c4o5)
(f c4o5 c4o5)
)
(and
(g2 c4o6)
(f c4o5 c4o6)
)
(and
(g2 c4o7)
(f c4o5 c4o7)
)
(and
(g2 c4o8)
(f c4o5 c4o8)
)
(and
(g2 c4o9)
(f c4o5 c4o9)
)
)
)
(=>
(g1 c4o6)
(or
(and
(g2 c4o1)
(f c4o6 c4o1)
)
(and
(g2 c4o2)
(f c4o6 c4o2)
)
(and
(g2 c4o3)
(f c4o6 c4o3)
)
(and
(g2 c4o4)
(f c4o6 c4o4)
)
(and
(g2 c4o5)
(f c4o6 c4o5)
)
(and
(g2 c4o6)
(f c4o6 c4o6)
)
(and
(g2 c4o7)
(f c4o6 c4o7)
)
(and
(g2 c4o8)
(f c4o6 c4o8)
)
(and
(g2 c4o9)
(f c4o6 c4o9)
)
)
)
(=>
(g1 c4o7)
(or
(and
(g2 c4o1)
(f c4o7 c4o1)
)
(and
(g2 c4o2)
(f c4o7 c4o2)
)
(and
(g2 c4o3)
(f c4o7 c4o3)
)
(and
(g2 c4o4)
(f c4o7 c4o4)
)
(and
(g2 c4o5)
(f c4o7 c4o5)
)
(and
(g2 c4o6)
(f c4o7 c4o6)
)
(and
(g2 c4o7)
(f c4o7 c4o7)
)
(and
(g2 c4o8)
(f c4o7 c4o8)
)
(and
(g2 c4o9)
(f c4o7 c4o9)
)
)
)
(=>
(g1 c4o8)
(or
(and
(g2 c4o1)
(f c4o8 c4o1)
)
(and
(g2 c4o2)
(f c4o8 c4o2)
)
(and
(g2 c4o3)
(f c4o8 c4o3)
)
(and
(g2 c4o4)
(f c4o8 c4o4)
)
(and
(g2 c4o5)
(f c4o8 c4o5)
)
(and
(g2 c4o6)
(f c4o8 c4o6)
)
(and
(g2 c4o7)
(f c4o8 c4o7)
)
(and
(g2 c4o8)
(f c4o8 c4o8)
)
(and
(g2 c4o9)
(f c4o8 c4o9)
)
)
)
(=>
(g1 c4o9)
(or
(and
(g2 c4o1)
(f c4o9 c4o1)
)
(and
(g2 c4o2)
(f c4o9 c4o2)
)
(and
(g2 c4o3)
(f c4o9 c4o3)
)
(and
(g2 c4o4)
(f c4o9 c4o4)
)
(and
(g2 c4o5)
(f c4o9 c4o5)
)
(and
(g2 c4o6)
(f c4o9 c4o6)
)
(and
(g2 c4o7)
(f c4o9 c4o7)
)
(and
(g2 c4o8)
(f c4o9 c4o8)
)
(and
(g2 c4o9)
(f c4o9 c4o9)
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
(g1 c4o1)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o1 c4o1)
)
(=>
(g2 c4o2)
(f c4o1 c4o2)
)
(=>
(g2 c4o3)
(f c4o1 c4o3)
)
(=>
(g2 c4o4)
(f c4o1 c4o4)
)
(=>
(g2 c4o5)
(f c4o1 c4o5)
)
(=>
(g2 c4o6)
(f c4o1 c4o6)
)
(=>
(g2 c4o7)
(f c4o1 c4o7)
)
(=>
(g2 c4o8)
(f c4o1 c4o8)
)
(=>
(g2 c4o9)
(f c4o1 c4o9)
)
)
)
)
(and
(g1 c4o2)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o2 c4o1)
)
(=>
(g2 c4o2)
(f c4o2 c4o2)
)
(=>
(g2 c4o3)
(f c4o2 c4o3)
)
(=>
(g2 c4o4)
(f c4o2 c4o4)
)
(=>
(g2 c4o5)
(f c4o2 c4o5)
)
(=>
(g2 c4o6)
(f c4o2 c4o6)
)
(=>
(g2 c4o7)
(f c4o2 c4o7)
)
(=>
(g2 c4o8)
(f c4o2 c4o8)
)
(=>
(g2 c4o9)
(f c4o2 c4o9)
)
)
)
)
(and
(g1 c4o3)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o3 c4o1)
)
(=>
(g2 c4o2)
(f c4o3 c4o2)
)
(=>
(g2 c4o3)
(f c4o3 c4o3)
)
(=>
(g2 c4o4)
(f c4o3 c4o4)
)
(=>
(g2 c4o5)
(f c4o3 c4o5)
)
(=>
(g2 c4o6)
(f c4o3 c4o6)
)
(=>
(g2 c4o7)
(f c4o3 c4o7)
)
(=>
(g2 c4o8)
(f c4o3 c4o8)
)
(=>
(g2 c4o9)
(f c4o3 c4o9)
)
)
)
)
(and
(g1 c4o4)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o4 c4o1)
)
(=>
(g2 c4o2)
(f c4o4 c4o2)
)
(=>
(g2 c4o3)
(f c4o4 c4o3)
)
(=>
(g2 c4o4)
(f c4o4 c4o4)
)
(=>
(g2 c4o5)
(f c4o4 c4o5)
)
(=>
(g2 c4o6)
(f c4o4 c4o6)
)
(=>
(g2 c4o7)
(f c4o4 c4o7)
)
(=>
(g2 c4o8)
(f c4o4 c4o8)
)
(=>
(g2 c4o9)
(f c4o4 c4o9)
)
)
)
)
(and
(g1 c4o5)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o5 c4o1)
)
(=>
(g2 c4o2)
(f c4o5 c4o2)
)
(=>
(g2 c4o3)
(f c4o5 c4o3)
)
(=>
(g2 c4o4)
(f c4o5 c4o4)
)
(=>
(g2 c4o5)
(f c4o5 c4o5)
)
(=>
(g2 c4o6)
(f c4o5 c4o6)
)
(=>
(g2 c4o7)
(f c4o5 c4o7)
)
(=>
(g2 c4o8)
(f c4o5 c4o8)
)
(=>
(g2 c4o9)
(f c4o5 c4o9)
)
)
)
)
(and
(g1 c4o6)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o6 c4o1)
)
(=>
(g2 c4o2)
(f c4o6 c4o2)
)
(=>
(g2 c4o3)
(f c4o6 c4o3)
)
(=>
(g2 c4o4)
(f c4o6 c4o4)
)
(=>
(g2 c4o5)
(f c4o6 c4o5)
)
(=>
(g2 c4o6)
(f c4o6 c4o6)
)
(=>
(g2 c4o7)
(f c4o6 c4o7)
)
(=>
(g2 c4o8)
(f c4o6 c4o8)
)
(=>
(g2 c4o9)
(f c4o6 c4o9)
)
)
)
)
(and
(g1 c4o7)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o7 c4o1)
)
(=>
(g2 c4o2)
(f c4o7 c4o2)
)
(=>
(g2 c4o3)
(f c4o7 c4o3)
)
(=>
(g2 c4o4)
(f c4o7 c4o4)
)
(=>
(g2 c4o5)
(f c4o7 c4o5)
)
(=>
(g2 c4o6)
(f c4o7 c4o6)
)
(=>
(g2 c4o7)
(f c4o7 c4o7)
)
(=>
(g2 c4o8)
(f c4o7 c4o8)
)
(=>
(g2 c4o9)
(f c4o7 c4o9)
)
)
)
)
(and
(g1 c4o8)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o8 c4o1)
)
(=>
(g2 c4o2)
(f c4o8 c4o2)
)
(=>
(g2 c4o3)
(f c4o8 c4o3)
)
(=>
(g2 c4o4)
(f c4o8 c4o4)
)
(=>
(g2 c4o5)
(f c4o8 c4o5)
)
(=>
(g2 c4o6)
(f c4o8 c4o6)
)
(=>
(g2 c4o7)
(f c4o8 c4o7)
)
(=>
(g2 c4o8)
(f c4o8 c4o8)
)
(=>
(g2 c4o9)
(f c4o8 c4o9)
)
)
)
)
(and
(g1 c4o9)
(and
(or
(g2 c4o1)
(g2 c4o2)
(g2 c4o3)
(g2 c4o4)
(g2 c4o5)
(g2 c4o6)
(g2 c4o7)
(g2 c4o8)
(g2 c4o9)
)
(and
(=>
(g2 c4o1)
(f c4o9 c4o1)
)
(=>
(g2 c4o2)
(f c4o9 c4o2)
)
(=>
(g2 c4o3)
(f c4o9 c4o3)
)
(=>
(g2 c4o4)
(f c4o9 c4o4)
)
(=>
(g2 c4o5)
(f c4o9 c4o5)
)
(=>
(g2 c4o6)
(f c4o9 c4o6)
)
(=>
(g2 c4o7)
(f c4o9 c4o7)
)
(=>
(g2 c4o8)
(f c4o9 c4o8)
)
(=>
(g2 c4o9)
(f c4o9 c4o9)
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
(g1 c4o1)
(or
(and
(g2 c4o1)
(f c4o1 c4o1)
)
(and
(g2 c4o2)
(f c4o1 c4o2)
)
(and
(g2 c4o3)
(f c4o1 c4o3)
)
(and
(g2 c4o4)
(f c4o1 c4o4)
)
(and
(g2 c4o5)
(f c4o1 c4o5)
)
(and
(g2 c4o6)
(f c4o1 c4o6)
)
(and
(g2 c4o7)
(f c4o1 c4o7)
)
(and
(g2 c4o8)
(f c4o1 c4o8)
)
(and
(g2 c4o9)
(f c4o1 c4o9)
)
)
)
(and
(g1 c4o2)
(or
(and
(g2 c4o1)
(f c4o2 c4o1)
)
(and
(g2 c4o2)
(f c4o2 c4o2)
)
(and
(g2 c4o3)
(f c4o2 c4o3)
)
(and
(g2 c4o4)
(f c4o2 c4o4)
)
(and
(g2 c4o5)
(f c4o2 c4o5)
)
(and
(g2 c4o6)
(f c4o2 c4o6)
)
(and
(g2 c4o7)
(f c4o2 c4o7)
)
(and
(g2 c4o8)
(f c4o2 c4o8)
)
(and
(g2 c4o9)
(f c4o2 c4o9)
)
)
)
(and
(g1 c4o3)
(or
(and
(g2 c4o1)
(f c4o3 c4o1)
)
(and
(g2 c4o2)
(f c4o3 c4o2)
)
(and
(g2 c4o3)
(f c4o3 c4o3)
)
(and
(g2 c4o4)
(f c4o3 c4o4)
)
(and
(g2 c4o5)
(f c4o3 c4o5)
)
(and
(g2 c4o6)
(f c4o3 c4o6)
)
(and
(g2 c4o7)
(f c4o3 c4o7)
)
(and
(g2 c4o8)
(f c4o3 c4o8)
)
(and
(g2 c4o9)
(f c4o3 c4o9)
)
)
)
(and
(g1 c4o4)
(or
(and
(g2 c4o1)
(f c4o4 c4o1)
)
(and
(g2 c4o2)
(f c4o4 c4o2)
)
(and
(g2 c4o3)
(f c4o4 c4o3)
)
(and
(g2 c4o4)
(f c4o4 c4o4)
)
(and
(g2 c4o5)
(f c4o4 c4o5)
)
(and
(g2 c4o6)
(f c4o4 c4o6)
)
(and
(g2 c4o7)
(f c4o4 c4o7)
)
(and
(g2 c4o8)
(f c4o4 c4o8)
)
(and
(g2 c4o9)
(f c4o4 c4o9)
)
)
)
(and
(g1 c4o5)
(or
(and
(g2 c4o1)
(f c4o5 c4o1)
)
(and
(g2 c4o2)
(f c4o5 c4o2)
)
(and
(g2 c4o3)
(f c4o5 c4o3)
)
(and
(g2 c4o4)
(f c4o5 c4o4)
)
(and
(g2 c4o5)
(f c4o5 c4o5)
)
(and
(g2 c4o6)
(f c4o5 c4o6)
)
(and
(g2 c4o7)
(f c4o5 c4o7)
)
(and
(g2 c4o8)
(f c4o5 c4o8)
)
(and
(g2 c4o9)
(f c4o5 c4o9)
)
)
)
(and
(g1 c4o6)
(or
(and
(g2 c4o1)
(f c4o6 c4o1)
)
(and
(g2 c4o2)
(f c4o6 c4o2)
)
(and
(g2 c4o3)
(f c4o6 c4o3)
)
(and
(g2 c4o4)
(f c4o6 c4o4)
)
(and
(g2 c4o5)
(f c4o6 c4o5)
)
(and
(g2 c4o6)
(f c4o6 c4o6)
)
(and
(g2 c4o7)
(f c4o6 c4o7)
)
(and
(g2 c4o8)
(f c4o6 c4o8)
)
(and
(g2 c4o9)
(f c4o6 c4o9)
)
)
)
(and
(g1 c4o7)
(or
(and
(g2 c4o1)
(f c4o7 c4o1)
)
(and
(g2 c4o2)
(f c4o7 c4o2)
)
(and
(g2 c4o3)
(f c4o7 c4o3)
)
(and
(g2 c4o4)
(f c4o7 c4o4)
)
(and
(g2 c4o5)
(f c4o7 c4o5)
)
(and
(g2 c4o6)
(f c4o7 c4o6)
)
(and
(g2 c4o7)
(f c4o7 c4o7)
)
(and
(g2 c4o8)
(f c4o7 c4o8)
)
(and
(g2 c4o9)
(f c4o7 c4o9)
)
)
)
(and
(g1 c4o8)
(or
(and
(g2 c4o1)
(f c4o8 c4o1)
)
(and
(g2 c4o2)
(f c4o8 c4o2)
)
(and
(g2 c4o3)
(f c4o8 c4o3)
)
(and
(g2 c4o4)
(f c4o8 c4o4)
)
(and
(g2 c4o5)
(f c4o8 c4o5)
)
(and
(g2 c4o6)
(f c4o8 c4o6)
)
(and
(g2 c4o7)
(f c4o8 c4o7)
)
(and
(g2 c4o8)
(f c4o8 c4o8)
)
(and
(g2 c4o9)
(f c4o8 c4o9)
)
)
)
(and
(g1 c4o9)
(or
(and
(g2 c4o1)
(f c4o9 c4o1)
)
(and
(g2 c4o2)
(f c4o9 c4o2)
)
(and
(g2 c4o3)
(f c4o9 c4o3)
)
(and
(g2 c4o4)
(f c4o9 c4o4)
)
(and
(g2 c4o5)
(f c4o9 c4o5)
)
(and
(g2 c4o6)
(f c4o9 c4o6)
)
(and
(g2 c4o7)
(f c4o9 c4o7)
)
(and
(g2 c4o8)
(f c4o9 c4o8)
)
(and
(g2 c4o9)
(f c4o9 c4o9)
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
(= c4 false)
(and
(=>
(and
(= q1 true)
(= q2 true)
)
(or
(and
(g1 c4o1)
(or
(and
(g2 c4o1)
(not
(f c4o1 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o1 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o1 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o1 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o1 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o1 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o1 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o1 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o1 c4o9)
)
)
)
)
(and
(g1 c4o2)
(or
(and
(g2 c4o1)
(not
(f c4o2 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o2 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o2 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o2 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o2 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o2 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o2 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o2 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o2 c4o9)
)
)
)
)
(and
(g1 c4o3)
(or
(and
(g2 c4o1)
(not
(f c4o3 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o3 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o3 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o3 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o3 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o3 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o3 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o3 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o3 c4o9)
)
)
)
)
(and
(g1 c4o4)
(or
(and
(g2 c4o1)
(not
(f c4o4 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o4 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o4 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o4 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o4 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o4 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o4 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o4 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o4 c4o9)
)
)
)
)
(and
(g1 c4o5)
(or
(and
(g2 c4o1)
(not
(f c4o5 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o5 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o5 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o5 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o5 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o5 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o5 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o5 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o5 c4o9)
)
)
)
)
(and
(g1 c4o6)
(or
(and
(g2 c4o1)
(not
(f c4o6 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o6 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o6 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o6 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o6 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o6 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o6 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o6 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o6 c4o9)
)
)
)
)
(and
(g1 c4o7)
(or
(and
(g2 c4o1)
(not
(f c4o7 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o7 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o7 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o7 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o7 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o7 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o7 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o7 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o7 c4o9)
)
)
)
)
(and
(g1 c4o8)
(or
(and
(g2 c4o1)
(not
(f c4o8 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o8 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o8 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o8 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o8 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o8 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o8 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o8 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o8 c4o9)
)
)
)
)
(and
(g1 c4o9)
(or
(and
(g2 c4o1)
(not
(f c4o9 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o9 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o9 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o9 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o9 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o9 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o9 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o9 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o9 c4o9)
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
(g1 c4o1)
(and
(=>
(g2 c4o1)
(not
(f c4o1 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o1 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o1 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o1 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o1 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o1 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o1 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o1 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o1 c4o9)
)
)
)
)
(and
(g1 c4o2)
(and
(=>
(g2 c4o1)
(not
(f c4o2 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o2 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o2 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o2 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o2 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o2 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o2 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o2 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o2 c4o9)
)
)
)
)
(and
(g1 c4o3)
(and
(=>
(g2 c4o1)
(not
(f c4o3 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o3 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o3 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o3 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o3 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o3 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o3 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o3 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o3 c4o9)
)
)
)
)
(and
(g1 c4o4)
(and
(=>
(g2 c4o1)
(not
(f c4o4 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o4 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o4 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o4 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o4 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o4 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o4 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o4 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o4 c4o9)
)
)
)
)
(and
(g1 c4o5)
(and
(=>
(g2 c4o1)
(not
(f c4o5 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o5 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o5 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o5 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o5 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o5 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o5 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o5 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o5 c4o9)
)
)
)
)
(and
(g1 c4o6)
(and
(=>
(g2 c4o1)
(not
(f c4o6 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o6 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o6 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o6 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o6 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o6 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o6 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o6 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o6 c4o9)
)
)
)
)
(and
(g1 c4o7)
(and
(=>
(g2 c4o1)
(not
(f c4o7 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o7 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o7 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o7 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o7 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o7 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o7 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o7 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o7 c4o9)
)
)
)
)
(and
(g1 c4o8)
(and
(=>
(g2 c4o1)
(not
(f c4o8 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o8 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o8 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o8 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o8 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o8 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o8 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o8 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o8 c4o9)
)
)
)
)
(and
(g1 c4o9)
(and
(=>
(g2 c4o1)
(not
(f c4o9 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o9 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o9 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o9 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o9 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o9 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o9 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o9 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o9 c4o9)
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
(g1 c4o1)
(or
(and
(g2 c4o1)
(not
(f c4o1 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o1 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o1 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o1 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o1 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o1 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o1 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o1 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o1 c4o9)
)
)
)
)
(=>
(g1 c4o2)
(or
(and
(g2 c4o1)
(not
(f c4o2 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o2 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o2 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o2 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o2 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o2 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o2 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o2 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o2 c4o9)
)
)
)
)
(=>
(g1 c4o3)
(or
(and
(g2 c4o1)
(not
(f c4o3 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o3 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o3 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o3 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o3 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o3 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o3 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o3 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o3 c4o9)
)
)
)
)
(=>
(g1 c4o4)
(or
(and
(g2 c4o1)
(not
(f c4o4 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o4 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o4 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o4 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o4 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o4 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o4 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o4 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o4 c4o9)
)
)
)
)
(=>
(g1 c4o5)
(or
(and
(g2 c4o1)
(not
(f c4o5 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o5 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o5 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o5 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o5 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o5 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o5 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o5 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o5 c4o9)
)
)
)
)
(=>
(g1 c4o6)
(or
(and
(g2 c4o1)
(not
(f c4o6 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o6 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o6 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o6 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o6 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o6 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o6 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o6 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o6 c4o9)
)
)
)
)
(=>
(g1 c4o7)
(or
(and
(g2 c4o1)
(not
(f c4o7 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o7 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o7 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o7 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o7 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o7 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o7 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o7 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o7 c4o9)
)
)
)
)
(=>
(g1 c4o8)
(or
(and
(g2 c4o1)
(not
(f c4o8 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o8 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o8 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o8 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o8 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o8 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o8 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o8 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o8 c4o9)
)
)
)
)
(=>
(g1 c4o9)
(or
(and
(g2 c4o1)
(not
(f c4o9 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o9 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o9 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o9 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o9 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o9 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o9 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o9 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o9 c4o9)
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
(g1 c4o1)
(and
(=>
(g2 c4o1)
(not
(f c4o1 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o1 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o1 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o1 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o1 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o1 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o1 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o1 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o1 c4o9)
)
)
)
)
(=>
(g1 c4o2)
(and
(=>
(g2 c4o1)
(not
(f c4o2 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o2 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o2 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o2 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o2 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o2 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o2 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o2 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o2 c4o9)
)
)
)
)
(=>
(g1 c4o3)
(and
(=>
(g2 c4o1)
(not
(f c4o3 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o3 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o3 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o3 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o3 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o3 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o3 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o3 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o3 c4o9)
)
)
)
)
(=>
(g1 c4o4)
(and
(=>
(g2 c4o1)
(not
(f c4o4 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o4 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o4 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o4 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o4 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o4 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o4 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o4 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o4 c4o9)
)
)
)
)
(=>
(g1 c4o5)
(and
(=>
(g2 c4o1)
(not
(f c4o5 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o5 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o5 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o5 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o5 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o5 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o5 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o5 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o5 c4o9)
)
)
)
)
(=>
(g1 c4o6)
(and
(=>
(g2 c4o1)
(not
(f c4o6 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o6 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o6 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o6 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o6 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o6 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o6 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o6 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o6 c4o9)
)
)
)
)
(=>
(g1 c4o7)
(and
(=>
(g2 c4o1)
(not
(f c4o7 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o7 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o7 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o7 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o7 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o7 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o7 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o7 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o7 c4o9)
)
)
)
)
(=>
(g1 c4o8)
(and
(=>
(g2 c4o1)
(not
(f c4o8 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o8 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o8 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o8 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o8 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o8 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o8 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o8 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o8 c4o9)
)
)
)
)
(=>
(g1 c4o9)
(and
(=>
(g2 c4o1)
(not
(f c4o9 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o9 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o9 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o9 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o9 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o9 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o9 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o9 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o9 c4o9)
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