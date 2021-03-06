(set-logic ALL)
(declare-datatypes ((Obj 0))
((
(t2o1)(t2o2)(t2o3)(t3o1)(t3o2)(t3o3)(t3o4)(t3o5)(t3o6)(t3o7)(c1o1)(c1o2)(c1o3)(c1o4)(c1o5)(c1o6)(c2o1)(c2o2)(c2o3)(c2o4)(c2o5)(c3o1)(c3o2)(c3o3)
)))

(declare-datatypes ((Label 0))
((
(book)(bowl)(dog)(fork)(sofa)(chair)
)))

(define-fun labelOf((obj Obj)(lbl Label)) Bool
(or
(and (= obj t2o1) (= lbl sofa))
(and (= obj t2o2) (= lbl dog))
(and (= obj t2o3) (= lbl dog))
(and (= obj t3o1) (= lbl sofa))
(and (= obj t3o2) (= lbl chair))
(and (= obj t3o3) (= lbl sofa))
(and (= obj t3o4) (= lbl chair))
(and (= obj t3o5) (= lbl fork))
(and (= obj t3o6) (= lbl dog))
(and (= obj t3o7) (= lbl dog))
(and (= obj c1o1) (= lbl sofa))
(and (= obj c1o2) (= lbl dog))
(and (= obj c1o3) (= lbl dog))
(and (= obj c1o4) (= lbl dog))
(and (= obj c1o5) (= lbl dog))
(and (= obj c1o6) (= lbl dog))
(and (= obj c2o1) (= lbl book))
(and (= obj c2o2) (= lbl book))
(and (= obj c2o3) (= lbl sofa))
(and (= obj c2o4) (= lbl bowl))
(and (= obj c2o5) (= lbl dog))
(and (= obj c3o1) (= lbl sofa))
(and (= obj c3o2) (= lbl dog))
(and (= obj c3o3) (= lbl dog))

))

(define-fun leftOf((x Obj)(y Obj)) Bool
(or
(and (= x t3o1) (= y t3o3))
(and (= x t3o1) (= y t3o4))
(and (= x t3o1) (= y t3o7))
(and (= x t3o2) (= y t3o3))
(and (= x t3o2) (= y t3o4))
(and (= x t3o2) (= y t3o7))
(and (= x t3o5) (= y t3o3))
(and (= x t3o5) (= y t3o4))
(and (= x t3o5) (= y t3o7))
(and (= x t3o6) (= y t3o3))
(and (= x t3o6) (= y t3o4))
(and (= x t3o6) (= y t3o5))
(and (= x t3o6) (= y t3o7))
(and (= x c1o5) (= y c1o2))
(and (= x c1o5) (= y c1o3))
(and (= x c1o5) (= y c1o4))
(and (= x c1o6) (= y c1o3))
(and (= x c1o6) (= y c1o4))
(and (= x c2o1) (= y c2o5))
(and (= x c2o2) (= y c2o1))
(and (= x c2o2) (= y c2o5))
(and (= x c2o4) (= y c2o5))

))

(define-fun rightOf((x Obj)(y Obj)) Bool
(or
(and (= x t3o3) (= y t3o1))
(and (= x t3o3) (= y t3o2))
(and (= x t3o3) (= y t3o5))
(and (= x t3o3) (= y t3o6))
(and (= x t3o4) (= y t3o1))
(and (= x t3o4) (= y t3o2))
(and (= x t3o4) (= y t3o5))
(and (= x t3o4) (= y t3o6))
(and (= x t3o5) (= y t3o6))
(and (= x t3o7) (= y t3o1))
(and (= x t3o7) (= y t3o2))
(and (= x t3o7) (= y t3o5))
(and (= x t3o7) (= y t3o6))
(and (= x c1o2) (= y c1o5))
(and (= x c1o3) (= y c1o5))
(and (= x c1o3) (= y c1o6))
(and (= x c1o4) (= y c1o5))
(and (= x c1o4) (= y c1o6))
(and (= x c2o1) (= y c2o2))
(and (= x c2o5) (= y c2o1))
(and (= x c2o5) (= y c2o2))
(and (= x c2o5) (= y c2o4))

))

(define-fun above((x Obj)(y Obj)) Bool
(or
(and (= x t3o6) (= y t3o5))
(and (= x t3o7) (= y t3o5))
(and (= x c1o3) (= y c1o4))
(and (= x c2o2) (= y c2o5))
(and (= x c2o3) (= y c2o5))
(and (= x c2o4) (= y c2o5))

))

(define-fun below((x Obj)(y Obj)) Bool
(or
(and (= x t3o5) (= y t3o6))
(and (= x t3o5) (= y t3o7))
(and (= x c1o4) (= y c1o3))
(and (= x c2o5) (= y c2o2))
(and (= x c2o5) (= y c2o3))
(and (= x c2o5) (= y c2o4))

))

(define-fun within((x Obj)(y Obj)) Bool
(or
(and (= x t2o2) (= y t2o1))
(and (= x t2o3) (= y t2o1))
(and (= x t3o6) (= y t3o2))
(and (= x t3o7) (= y t3o3))
(and (= x t3o7) (= y t3o4))
(and (= x c1o2) (= y c1o1))
(and (= x c1o3) (= y c1o1))
(and (= x c1o6) (= y c1o1))
(and (= x c2o4) (= y c2o3))
(and (= x c3o2) (= y c3o1))
(and (= x c3o3) (= y c3o1))

))


;(synth-fun q1 () Bool
;  ((Start Bool))
;  ((Start Bool 
;      (true false))
;))
(declare-const q1  Bool)
(assert q1)


;(synth-fun q2 () Bool
;  ((Start Bool))
;  ((Start Bool 
;      (true false))
;))
(declare-const q2  Bool)
(assert (not q2))

;(synth-fun g1 ((x Obj)) Bool
;((Start Bool) (Lb Label) (Ob Obj))
;((Start Bool
;		((labelOf Ob Lb)))
; (Lb Label
;	 	(book bowl dog fork sofa chair))
; (Ob Obj
;	 	(x))
;))
(define-fun g1 ((x Obj)) Bool
(labelOf x dog)
)

;(synth-fun 2 ((x Obj)) Bool
;((Start Bool) (Lb Label) (Ob Obj))
;((Start Bool
;		((labelOf Ob Lb)))
; (Lb Label
;	 	(book bowl dog fork sofa chair))
; (Ob Obj
;	 	(x))
;))
(define-fun g2 ((x Obj)) Bool
(labelOf x sofa)
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
;	 	 (book bowl dog fork sofa chair))
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
(declare-const c1 Bool)
(declare-const c2 Bool)
(declare-const c3 Bool)

(assert c3)
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
(g1 t2o1)
(g1 t2o2)
(g1 t2o3)
)
(and
(=>
(g1 t2o1)
(and
(or
(g2 t2o1)
(g2 t2o2)
(g2 t2o3)
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
(=>
(g2 t2o3)
(f t2o1 t2o3)
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
(g2 t2o3)
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
(=>
(g2 t2o3)
(f t2o2 t2o3)
)
)
)
)
(=>
(g1 t2o3)
(and
(or
(g2 t2o1)
(g2 t2o2)
(g2 t2o3)
)
(and
(=>
(g2 t2o1)
(f t2o3 t2o1)
)
(=>
(g2 t2o2)
(f t2o3 t2o2)
)
(=>
(g2 t2o3)
(f t2o3 t2o3)
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
(g1 t2o3)
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
(and
(g2 t2o3)
(f t2o1 t2o3)
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
(and
(g2 t2o3)
(f t2o2 t2o3)
)
)
)
(=>
(g1 t2o3)
(or
(and
(g2 t2o1)
(f t2o3 t2o1)
)
(and
(g2 t2o2)
(f t2o3 t2o2)
)
(and
(g2 t2o3)
(f t2o3 t2o3)
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
(g2 t2o3)
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
(=>
(g2 t2o3)
(f t2o1 t2o3)
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
(g2 t2o3)
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
(=>
(g2 t2o3)
(f t2o2 t2o3)
)
)
)
)
(and
(g1 t2o3)
(and
(or
(g2 t2o1)
(g2 t2o2)
(g2 t2o3)
)
(and
(=>
(g2 t2o1)
(f t2o3 t2o1)
)
(=>
(g2 t2o2)
(f t2o3 t2o2)
)
(=>
(g2 t2o3)
(f t2o3 t2o3)
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
(and
(g2 t2o3)
(f t2o1 t2o3)
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
(and
(g2 t2o3)
(f t2o2 t2o3)
)
)
)
(and
(g1 t2o3)
(or
(and
(g2 t2o1)
(f t2o3 t2o1)
)
(and
(g2 t2o2)
(f t2o3 t2o2)
)
(and
(g2 t2o3)
(f t2o3 t2o3)
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
(g1 t3o5)
(g1 t3o6)
(g1 t3o7)
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
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
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
(=>
(g2 t3o5)
(f t3o1 t3o5)
)
(=>
(g2 t3o6)
(f t3o1 t3o6)
)
(=>
(g2 t3o7)
(f t3o1 t3o7)
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
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
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
(=>
(g2 t3o5)
(f t3o2 t3o5)
)
(=>
(g2 t3o6)
(f t3o2 t3o6)
)
(=>
(g2 t3o7)
(f t3o2 t3o7)
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
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
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
(=>
(g2 t3o5)
(f t3o3 t3o5)
)
(=>
(g2 t3o6)
(f t3o3 t3o6)
)
(=>
(g2 t3o7)
(f t3o3 t3o7)
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
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
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
(=>
(g2 t3o5)
(f t3o4 t3o5)
)
(=>
(g2 t3o6)
(f t3o4 t3o6)
)
(=>
(g2 t3o7)
(f t3o4 t3o7)
)
)
)
)
(=>
(g1 t3o5)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
)
(and
(=>
(g2 t3o1)
(f t3o5 t3o1)
)
(=>
(g2 t3o2)
(f t3o5 t3o2)
)
(=>
(g2 t3o3)
(f t3o5 t3o3)
)
(=>
(g2 t3o4)
(f t3o5 t3o4)
)
(=>
(g2 t3o5)
(f t3o5 t3o5)
)
(=>
(g2 t3o6)
(f t3o5 t3o6)
)
(=>
(g2 t3o7)
(f t3o5 t3o7)
)
)
)
)
(=>
(g1 t3o6)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
)
(and
(=>
(g2 t3o1)
(f t3o6 t3o1)
)
(=>
(g2 t3o2)
(f t3o6 t3o2)
)
(=>
(g2 t3o3)
(f t3o6 t3o3)
)
(=>
(g2 t3o4)
(f t3o6 t3o4)
)
(=>
(g2 t3o5)
(f t3o6 t3o5)
)
(=>
(g2 t3o6)
(f t3o6 t3o6)
)
(=>
(g2 t3o7)
(f t3o6 t3o7)
)
)
)
)
(=>
(g1 t3o7)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
)
(and
(=>
(g2 t3o1)
(f t3o7 t3o1)
)
(=>
(g2 t3o2)
(f t3o7 t3o2)
)
(=>
(g2 t3o3)
(f t3o7 t3o3)
)
(=>
(g2 t3o4)
(f t3o7 t3o4)
)
(=>
(g2 t3o5)
(f t3o7 t3o5)
)
(=>
(g2 t3o6)
(f t3o7 t3o6)
)
(=>
(g2 t3o7)
(f t3o7 t3o7)
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
(g1 t3o5)
(g1 t3o6)
(g1 t3o7)
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
(and
(g2 t3o5)
(f t3o1 t3o5)
)
(and
(g2 t3o6)
(f t3o1 t3o6)
)
(and
(g2 t3o7)
(f t3o1 t3o7)
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
(and
(g2 t3o5)
(f t3o2 t3o5)
)
(and
(g2 t3o6)
(f t3o2 t3o6)
)
(and
(g2 t3o7)
(f t3o2 t3o7)
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
(and
(g2 t3o5)
(f t3o3 t3o5)
)
(and
(g2 t3o6)
(f t3o3 t3o6)
)
(and
(g2 t3o7)
(f t3o3 t3o7)
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
(and
(g2 t3o5)
(f t3o4 t3o5)
)
(and
(g2 t3o6)
(f t3o4 t3o6)
)
(and
(g2 t3o7)
(f t3o4 t3o7)
)
)
)
(=>
(g1 t3o5)
(or
(and
(g2 t3o1)
(f t3o5 t3o1)
)
(and
(g2 t3o2)
(f t3o5 t3o2)
)
(and
(g2 t3o3)
(f t3o5 t3o3)
)
(and
(g2 t3o4)
(f t3o5 t3o4)
)
(and
(g2 t3o5)
(f t3o5 t3o5)
)
(and
(g2 t3o6)
(f t3o5 t3o6)
)
(and
(g2 t3o7)
(f t3o5 t3o7)
)
)
)
(=>
(g1 t3o6)
(or
(and
(g2 t3o1)
(f t3o6 t3o1)
)
(and
(g2 t3o2)
(f t3o6 t3o2)
)
(and
(g2 t3o3)
(f t3o6 t3o3)
)
(and
(g2 t3o4)
(f t3o6 t3o4)
)
(and
(g2 t3o5)
(f t3o6 t3o5)
)
(and
(g2 t3o6)
(f t3o6 t3o6)
)
(and
(g2 t3o7)
(f t3o6 t3o7)
)
)
)
(=>
(g1 t3o7)
(or
(and
(g2 t3o1)
(f t3o7 t3o1)
)
(and
(g2 t3o2)
(f t3o7 t3o2)
)
(and
(g2 t3o3)
(f t3o7 t3o3)
)
(and
(g2 t3o4)
(f t3o7 t3o4)
)
(and
(g2 t3o5)
(f t3o7 t3o5)
)
(and
(g2 t3o6)
(f t3o7 t3o6)
)
(and
(g2 t3o7)
(f t3o7 t3o7)
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
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
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
(=>
(g2 t3o5)
(f t3o1 t3o5)
)
(=>
(g2 t3o6)
(f t3o1 t3o6)
)
(=>
(g2 t3o7)
(f t3o1 t3o7)
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
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
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
(=>
(g2 t3o5)
(f t3o2 t3o5)
)
(=>
(g2 t3o6)
(f t3o2 t3o6)
)
(=>
(g2 t3o7)
(f t3o2 t3o7)
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
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
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
(=>
(g2 t3o5)
(f t3o3 t3o5)
)
(=>
(g2 t3o6)
(f t3o3 t3o6)
)
(=>
(g2 t3o7)
(f t3o3 t3o7)
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
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
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
(=>
(g2 t3o5)
(f t3o4 t3o5)
)
(=>
(g2 t3o6)
(f t3o4 t3o6)
)
(=>
(g2 t3o7)
(f t3o4 t3o7)
)
)
)
)
(and
(g1 t3o5)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
)
(and
(=>
(g2 t3o1)
(f t3o5 t3o1)
)
(=>
(g2 t3o2)
(f t3o5 t3o2)
)
(=>
(g2 t3o3)
(f t3o5 t3o3)
)
(=>
(g2 t3o4)
(f t3o5 t3o4)
)
(=>
(g2 t3o5)
(f t3o5 t3o5)
)
(=>
(g2 t3o6)
(f t3o5 t3o6)
)
(=>
(g2 t3o7)
(f t3o5 t3o7)
)
)
)
)
(and
(g1 t3o6)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
)
(and
(=>
(g2 t3o1)
(f t3o6 t3o1)
)
(=>
(g2 t3o2)
(f t3o6 t3o2)
)
(=>
(g2 t3o3)
(f t3o6 t3o3)
)
(=>
(g2 t3o4)
(f t3o6 t3o4)
)
(=>
(g2 t3o5)
(f t3o6 t3o5)
)
(=>
(g2 t3o6)
(f t3o6 t3o6)
)
(=>
(g2 t3o7)
(f t3o6 t3o7)
)
)
)
)
(and
(g1 t3o7)
(and
(or
(g2 t3o1)
(g2 t3o2)
(g2 t3o3)
(g2 t3o4)
(g2 t3o5)
(g2 t3o6)
(g2 t3o7)
)
(and
(=>
(g2 t3o1)
(f t3o7 t3o1)
)
(=>
(g2 t3o2)
(f t3o7 t3o2)
)
(=>
(g2 t3o3)
(f t3o7 t3o3)
)
(=>
(g2 t3o4)
(f t3o7 t3o4)
)
(=>
(g2 t3o5)
(f t3o7 t3o5)
)
(=>
(g2 t3o6)
(f t3o7 t3o6)
)
(=>
(g2 t3o7)
(f t3o7 t3o7)
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
(and
(g2 t3o5)
(f t3o1 t3o5)
)
(and
(g2 t3o6)
(f t3o1 t3o6)
)
(and
(g2 t3o7)
(f t3o1 t3o7)
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
(and
(g2 t3o5)
(f t3o2 t3o5)
)
(and
(g2 t3o6)
(f t3o2 t3o6)
)
(and
(g2 t3o7)
(f t3o2 t3o7)
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
(and
(g2 t3o5)
(f t3o3 t3o5)
)
(and
(g2 t3o6)
(f t3o3 t3o6)
)
(and
(g2 t3o7)
(f t3o3 t3o7)
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
(and
(g2 t3o5)
(f t3o4 t3o5)
)
(and
(g2 t3o6)
(f t3o4 t3o6)
)
(and
(g2 t3o7)
(f t3o4 t3o7)
)
)
)
(and
(g1 t3o5)
(or
(and
(g2 t3o1)
(f t3o5 t3o1)
)
(and
(g2 t3o2)
(f t3o5 t3o2)
)
(and
(g2 t3o3)
(f t3o5 t3o3)
)
(and
(g2 t3o4)
(f t3o5 t3o4)
)
(and
(g2 t3o5)
(f t3o5 t3o5)
)
(and
(g2 t3o6)
(f t3o5 t3o6)
)
(and
(g2 t3o7)
(f t3o5 t3o7)
)
)
)
(and
(g1 t3o6)
(or
(and
(g2 t3o1)
(f t3o6 t3o1)
)
(and
(g2 t3o2)
(f t3o6 t3o2)
)
(and
(g2 t3o3)
(f t3o6 t3o3)
)
(and
(g2 t3o4)
(f t3o6 t3o4)
)
(and
(g2 t3o5)
(f t3o6 t3o5)
)
(and
(g2 t3o6)
(f t3o6 t3o6)
)
(and
(g2 t3o7)
(f t3o6 t3o7)
)
)
)
(and
(g1 t3o7)
(or
(and
(g2 t3o1)
(f t3o7 t3o1)
)
(and
(g2 t3o2)
(f t3o7 t3o2)
)
(and
(g2 t3o3)
(f t3o7 t3o3)
)
(and
(g2 t3o4)
(f t3o7 t3o4)
)
(and
(g2 t3o5)
(f t3o7 t3o5)
)
(and
(g2 t3o6)
(f t3o7 t3o6)
)
(and
(g2 t3o7)
(f t3o7 t3o7)
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