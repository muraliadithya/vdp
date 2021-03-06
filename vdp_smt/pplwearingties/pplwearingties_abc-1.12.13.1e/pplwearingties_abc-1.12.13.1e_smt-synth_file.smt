(set-logic ALL)

(define-fun t1o1 () (_ BitVec 7) (_ bv0 7))
(define-fun t1o2 () (_ BitVec 7) (_ bv1 7))
(define-fun t1o3 () (_ BitVec 7) (_ bv2 7))
(define-fun t2o1 () (_ BitVec 7) (_ bv3 7))
(define-fun t2o2 () (_ BitVec 7) (_ bv4 7))
(define-fun t3o1 () (_ BitVec 7) (_ bv5 7))
(define-fun t3o2 () (_ BitVec 7) (_ bv6 7))
(define-fun t3o3 () (_ BitVec 7) (_ bv7 7))
(define-fun t3o4 () (_ BitVec 7) (_ bv8 7))
(define-fun c1o1 () (_ BitVec 7) (_ bv9 7))
(define-fun c1o2 () (_ BitVec 7) (_ bv10 7))
(define-fun c1o3 () (_ BitVec 7) (_ bv11 7))
(define-fun c1o4 () (_ BitVec 7) (_ bv12 7))
(define-fun c1o5 () (_ BitVec 7) (_ bv13 7))
(define-fun c1o6 () (_ BitVec 7) (_ bv14 7))
(define-fun c1o7 () (_ BitVec 7) (_ bv15 7))
(define-fun c1o8 () (_ BitVec 7) (_ bv16 7))
(define-fun c1o9 () (_ BitVec 7) (_ bv17 7))
(define-fun c1o10 () (_ BitVec 7) (_ bv18 7))
(define-fun c2o1 () (_ BitVec 7) (_ bv19 7))
(define-fun c2o2 () (_ BitVec 7) (_ bv20 7))
(define-fun c3o1 () (_ BitVec 7) (_ bv21 7))
(define-fun c3o2 () (_ BitVec 7) (_ bv22 7))
(define-fun c3o3 () (_ BitVec 7) (_ bv23 7))
(define-fun c3o4 () (_ BitVec 7) (_ bv24 7))
(define-fun c3o5 () (_ BitVec 7) (_ bv25 7))
(define-fun c3o6 () (_ BitVec 7) (_ bv26 7))
(define-fun c3o7 () (_ BitVec 7) (_ bv27 7))
(define-fun c3o8 () (_ BitVec 7) (_ bv28 7))
(define-fun c3o9 () (_ BitVec 7) (_ bv29 7))
(define-fun c4o1 () (_ BitVec 7) (_ bv30 7))
(define-fun c4o2 () (_ BitVec 7) (_ bv31 7))
(define-fun c4o3 () (_ BitVec 7) (_ bv32 7))
(define-fun c4o4 () (_ BitVec 7) (_ bv33 7))
(define-fun c4o5 () (_ BitVec 7) (_ bv34 7))
(define-fun c4o6 () (_ BitVec 7) (_ bv35 7))
(define-fun c4o7 () (_ BitVec 7) (_ bv36 7))
(define-fun c4o8 () (_ BitVec 7) (_ bv37 7))
(define-fun c4o9 () (_ BitVec 7) (_ bv38 7))
(define-fun c4o10 () (_ BitVec 7) (_ bv39 7))
(define-fun c4o11 () (_ BitVec 7) (_ bv40 7))
(define-fun c4o12 () (_ BitVec 7) (_ bv41 7))
(define-fun c4o13 () (_ BitVec 7) (_ bv42 7))
(define-fun c4o14 () (_ BitVec 7) (_ bv43 7))
(define-fun c4o15 () (_ BitVec 7) (_ bv44 7))
(define-fun c4o16 () (_ BitVec 7) (_ bv45 7))
(define-fun c4o17 () (_ BitVec 7) (_ bv46 7))
(define-fun c4o18 () (_ BitVec 7) (_ bv47 7))
(define-fun c4o19 () (_ BitVec 7) (_ bv48 7))
(define-fun c4o20 () (_ BitVec 7) (_ bv49 7))
(define-fun c4o21 () (_ BitVec 7) (_ bv50 7))
(define-fun c4o22 () (_ BitVec 7) (_ bv51 7))
(define-fun c4o23 () (_ BitVec 7) (_ bv52 7))
(define-fun c4o24 () (_ BitVec 7) (_ bv53 7))
(define-fun c4o25 () (_ BitVec 7) (_ bv54 7))
(define-fun c4o26 () (_ BitVec 7) (_ bv55 7))
(define-fun c4o27 () (_ BitVec 7) (_ bv56 7))
(define-fun c4o28 () (_ BitVec 7) (_ bv57 7))
(define-fun c4o29 () (_ BitVec 7) (_ bv58 7))
(define-fun c4o30 () (_ BitVec 7) (_ bv59 7))
(define-fun c4o31 () (_ BitVec 7) (_ bv60 7))
(define-fun c4o32 () (_ BitVec 7) (_ bv61 7))
(define-fun c4o33 () (_ BitVec 7) (_ bv62 7))
(define-fun c4o34 () (_ BitVec 7) (_ bv63 7))
(define-fun c4o35 () (_ BitVec 7) (_ bv64 7))
(define-fun c4o36 () (_ BitVec 7) (_ bv65 7))


(define-fun tie () (_ BitVec 2) (_ bv0 2))
(define-fun dog () (_ BitVec 2) (_ bv1 2))
(define-fun handbag () (_ BitVec 2) (_ bv2 2))
(define-fun person () (_ BitVec 2) (_ bv3 2))


(define-fun labelOf((obj (_ BitVec 7))(lbl (_ BitVec 2))) Bool
(or
(and (= obj t1o1) (= lbl tie))
(and (= obj t1o2) (= lbl person))
(and (= obj t1o3) (= lbl person))
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
(and (= obj c4o4) (= lbl tie))
(and (= obj c4o5) (= lbl person))
(and (= obj c4o6) (= lbl person))
(and (= obj c4o7) (= lbl person))
(and (= obj c4o8) (= lbl person))
(and (= obj c4o9) (= lbl person))
(and (= obj c4o10) (= lbl person))
(and (= obj c4o11) (= lbl person))
(and (= obj c4o12) (= lbl person))
(and (= obj c4o13) (= lbl person))
(and (= obj c4o14) (= lbl person))
(and (= obj c4o15) (= lbl person))
(and (= obj c4o16) (= lbl person))
(and (= obj c4o17) (= lbl person))
(and (= obj c4o18) (= lbl person))
(and (= obj c4o19) (= lbl person))
(and (= obj c4o20) (= lbl person))
(and (= obj c4o21) (= lbl person))
(and (= obj c4o22) (= lbl person))
(and (= obj c4o23) (= lbl person))
(and (= obj c4o24) (= lbl person))
(and (= obj c4o25) (= lbl person))
(and (= obj c4o26) (= lbl person))
(and (= obj c4o27) (= lbl person))
(and (= obj c4o28) (= lbl person))
(and (= obj c4o29) (= lbl person))
(and (= obj c4o30) (= lbl person))
(and (= obj c4o31) (= lbl person))
(and (= obj c4o32) (= lbl person))
(and (= obj c4o33) (= lbl person))
(and (= obj c4o34) (= lbl person))
(and (= obj c4o35) (= lbl person))
(and (= obj c4o36) (= lbl person))

))

(define-fun leftOf ((x (_ BitVec 7))(y (_ BitVec 7))) Bool
(or
(and (= x t1o1) (= y t1o3))
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
(and (= x c4o1) (= y c4o6))
(and (= x c4o1) (= y c4o7))
(and (= x c4o1) (= y c4o10))
(and (= x c4o1) (= y c4o11))
(and (= x c4o1) (= y c4o12))
(and (= x c4o1) (= y c4o13))
(and (= x c4o1) (= y c4o14))
(and (= x c4o1) (= y c4o15))
(and (= x c4o1) (= y c4o16))
(and (= x c4o1) (= y c4o18))
(and (= x c4o1) (= y c4o20))
(and (= x c4o1) (= y c4o22))
(and (= x c4o1) (= y c4o23))
(and (= x c4o1) (= y c4o25))
(and (= x c4o1) (= y c4o26))
(and (= x c4o1) (= y c4o27))
(and (= x c4o1) (= y c4o28))
(and (= x c4o1) (= y c4o30))
(and (= x c4o1) (= y c4o34))
(and (= x c4o2) (= y c4o3))
(and (= x c4o2) (= y c4o6))
(and (= x c4o2) (= y c4o7))
(and (= x c4o2) (= y c4o10))
(and (= x c4o2) (= y c4o11))
(and (= x c4o2) (= y c4o12))
(and (= x c4o2) (= y c4o13))
(and (= x c4o2) (= y c4o14))
(and (= x c4o2) (= y c4o15))
(and (= x c4o2) (= y c4o16))
(and (= x c4o2) (= y c4o18))
(and (= x c4o2) (= y c4o20))
(and (= x c4o2) (= y c4o22))
(and (= x c4o2) (= y c4o23))
(and (= x c4o2) (= y c4o25))
(and (= x c4o2) (= y c4o27))
(and (= x c4o2) (= y c4o28))
(and (= x c4o2) (= y c4o30))
(and (= x c4o3) (= y c4o7))
(and (= x c4o3) (= y c4o10))
(and (= x c4o3) (= y c4o11))
(and (= x c4o3) (= y c4o12))
(and (= x c4o3) (= y c4o14))
(and (= x c4o3) (= y c4o15))
(and (= x c4o3) (= y c4o18))
(and (= x c4o3) (= y c4o20))
(and (= x c4o3) (= y c4o22))
(and (= x c4o3) (= y c4o23))
(and (= x c4o3) (= y c4o25))
(and (= x c4o3) (= y c4o28))
(and (= x c4o4) (= y c4o2))
(and (= x c4o4) (= y c4o3))
(and (= x c4o4) (= y c4o6))
(and (= x c4o4) (= y c4o7))
(and (= x c4o4) (= y c4o10))
(and (= x c4o4) (= y c4o11))
(and (= x c4o4) (= y c4o12))
(and (= x c4o4) (= y c4o13))
(and (= x c4o4) (= y c4o14))
(and (= x c4o4) (= y c4o15))
(and (= x c4o4) (= y c4o16))
(and (= x c4o4) (= y c4o18))
(and (= x c4o4) (= y c4o20))
(and (= x c4o4) (= y c4o22))
(and (= x c4o4) (= y c4o23))
(and (= x c4o4) (= y c4o25))
(and (= x c4o4) (= y c4o26))
(and (= x c4o4) (= y c4o27))
(and (= x c4o4) (= y c4o28))
(and (= x c4o4) (= y c4o30))
(and (= x c4o4) (= y c4o34))
(and (= x c4o5) (= y c4o3))
(and (= x c4o5) (= y c4o7))
(and (= x c4o5) (= y c4o10))
(and (= x c4o5) (= y c4o11))
(and (= x c4o5) (= y c4o12))
(and (= x c4o5) (= y c4o14))
(and (= x c4o5) (= y c4o15))
(and (= x c4o5) (= y c4o18))
(and (= x c4o5) (= y c4o20))
(and (= x c4o5) (= y c4o22))
(and (= x c4o5) (= y c4o23))
(and (= x c4o5) (= y c4o25))
(and (= x c4o5) (= y c4o28))
(and (= x c4o6) (= y c4o7))
(and (= x c4o6) (= y c4o12))
(and (= x c4o6) (= y c4o14))
(and (= x c4o6) (= y c4o15))
(and (= x c4o6) (= y c4o18))
(and (= x c4o6) (= y c4o20))
(and (= x c4o6) (= y c4o22))
(and (= x c4o6) (= y c4o23))
(and (= x c4o6) (= y c4o25))
(and (= x c4o6) (= y c4o28))
(and (= x c4o7) (= y c4o20))
(and (= x c4o8) (= y c4o3))
(and (= x c4o8) (= y c4o7))
(and (= x c4o8) (= y c4o10))
(and (= x c4o8) (= y c4o11))
(and (= x c4o8) (= y c4o12))
(and (= x c4o8) (= y c4o14))
(and (= x c4o8) (= y c4o15))
(and (= x c4o8) (= y c4o18))
(and (= x c4o8) (= y c4o20))
(and (= x c4o8) (= y c4o22))
(and (= x c4o8) (= y c4o23))
(and (= x c4o8) (= y c4o25))
(and (= x c4o8) (= y c4o28))
(and (= x c4o8) (= y c4o30))
(and (= x c4o9) (= y c4o1))
(and (= x c4o9) (= y c4o2))
(and (= x c4o9) (= y c4o3))
(and (= x c4o9) (= y c4o4))
(and (= x c4o9) (= y c4o6))
(and (= x c4o9) (= y c4o7))
(and (= x c4o9) (= y c4o8))
(and (= x c4o9) (= y c4o10))
(and (= x c4o9) (= y c4o11))
(and (= x c4o9) (= y c4o12))
(and (= x c4o9) (= y c4o13))
(and (= x c4o9) (= y c4o14))
(and (= x c4o9) (= y c4o15))
(and (= x c4o9) (= y c4o16))
(and (= x c4o9) (= y c4o18))
(and (= x c4o9) (= y c4o20))
(and (= x c4o9) (= y c4o21))
(and (= x c4o9) (= y c4o22))
(and (= x c4o9) (= y c4o23))
(and (= x c4o9) (= y c4o25))
(and (= x c4o9) (= y c4o26))
(and (= x c4o9) (= y c4o27))
(and (= x c4o9) (= y c4o28))
(and (= x c4o9) (= y c4o30))
(and (= x c4o9) (= y c4o33))
(and (= x c4o9) (= y c4o34))
(and (= x c4o10) (= y c4o12))
(and (= x c4o10) (= y c4o15))
(and (= x c4o10) (= y c4o20))
(and (= x c4o10) (= y c4o22))
(and (= x c4o10) (= y c4o25))
(and (= x c4o10) (= y c4o28))
(and (= x c4o11) (= y c4o7))
(and (= x c4o11) (= y c4o12))
(and (= x c4o11) (= y c4o14))
(and (= x c4o11) (= y c4o15))
(and (= x c4o11) (= y c4o20))
(and (= x c4o11) (= y c4o22))
(and (= x c4o11) (= y c4o25))
(and (= x c4o11) (= y c4o28))
(and (= x c4o13) (= y c4o3))
(and (= x c4o13) (= y c4o7))
(and (= x c4o13) (= y c4o10))
(and (= x c4o13) (= y c4o11))
(and (= x c4o13) (= y c4o12))
(and (= x c4o13) (= y c4o14))
(and (= x c4o13) (= y c4o15))
(and (= x c4o13) (= y c4o18))
(and (= x c4o13) (= y c4o20))
(and (= x c4o13) (= y c4o22))
(and (= x c4o13) (= y c4o23))
(and (= x c4o13) (= y c4o25))
(and (= x c4o13) (= y c4o28))
(and (= x c4o14) (= y c4o20))
(and (= x c4o14) (= y c4o25))
(and (= x c4o15) (= y c4o20))
(and (= x c4o16) (= y c4o3))
(and (= x c4o16) (= y c4o7))
(and (= x c4o16) (= y c4o10))
(and (= x c4o16) (= y c4o11))
(and (= x c4o16) (= y c4o12))
(and (= x c4o16) (= y c4o14))
(and (= x c4o16) (= y c4o15))
(and (= x c4o16) (= y c4o18))
(and (= x c4o16) (= y c4o20))
(and (= x c4o16) (= y c4o22))
(and (= x c4o16) (= y c4o23))
(and (= x c4o16) (= y c4o25))
(and (= x c4o16) (= y c4o28))
(and (= x c4o16) (= y c4o30))
(and (= x c4o17) (= y c4o1))
(and (= x c4o17) (= y c4o2))
(and (= x c4o17) (= y c4o3))
(and (= x c4o17) (= y c4o4))
(and (= x c4o17) (= y c4o6))
(and (= x c4o17) (= y c4o7))
(and (= x c4o17) (= y c4o8))
(and (= x c4o17) (= y c4o9))
(and (= x c4o17) (= y c4o10))
(and (= x c4o17) (= y c4o11))
(and (= x c4o17) (= y c4o12))
(and (= x c4o17) (= y c4o13))
(and (= x c4o17) (= y c4o14))
(and (= x c4o17) (= y c4o15))
(and (= x c4o17) (= y c4o16))
(and (= x c4o17) (= y c4o18))
(and (= x c4o17) (= y c4o20))
(and (= x c4o17) (= y c4o21))
(and (= x c4o17) (= y c4o22))
(and (= x c4o17) (= y c4o23))
(and (= x c4o17) (= y c4o24))
(and (= x c4o17) (= y c4o25))
(and (= x c4o17) (= y c4o26))
(and (= x c4o17) (= y c4o27))
(and (= x c4o17) (= y c4o28))
(and (= x c4o17) (= y c4o30))
(and (= x c4o17) (= y c4o32))
(and (= x c4o17) (= y c4o33))
(and (= x c4o17) (= y c4o34))
(and (= x c4o17) (= y c4o36))
(and (= x c4o18) (= y c4o12))
(and (= x c4o18) (= y c4o15))
(and (= x c4o18) (= y c4o20))
(and (= x c4o18) (= y c4o22))
(and (= x c4o18) (= y c4o25))
(and (= x c4o18) (= y c4o28))
(and (= x c4o19) (= y c4o1))
(and (= x c4o19) (= y c4o2))
(and (= x c4o19) (= y c4o3))
(and (= x c4o19) (= y c4o4))
(and (= x c4o19) (= y c4o6))
(and (= x c4o19) (= y c4o7))
(and (= x c4o19) (= y c4o8))
(and (= x c4o19) (= y c4o10))
(and (= x c4o19) (= y c4o11))
(and (= x c4o19) (= y c4o12))
(and (= x c4o19) (= y c4o13))
(and (= x c4o19) (= y c4o14))
(and (= x c4o19) (= y c4o15))
(and (= x c4o19) (= y c4o16))
(and (= x c4o19) (= y c4o18))
(and (= x c4o19) (= y c4o20))
(and (= x c4o19) (= y c4o21))
(and (= x c4o19) (= y c4o22))
(and (= x c4o19) (= y c4o23))
(and (= x c4o19) (= y c4o24))
(and (= x c4o19) (= y c4o25))
(and (= x c4o19) (= y c4o26))
(and (= x c4o19) (= y c4o27))
(and (= x c4o19) (= y c4o28))
(and (= x c4o19) (= y c4o30))
(and (= x c4o19) (= y c4o32))
(and (= x c4o19) (= y c4o33))
(and (= x c4o19) (= y c4o34))
(and (= x c4o21) (= y c4o2))
(and (= x c4o21) (= y c4o3))
(and (= x c4o21) (= y c4o6))
(and (= x c4o21) (= y c4o7))
(and (= x c4o21) (= y c4o10))
(and (= x c4o21) (= y c4o11))
(and (= x c4o21) (= y c4o12))
(and (= x c4o21) (= y c4o13))
(and (= x c4o21) (= y c4o14))
(and (= x c4o21) (= y c4o15))
(and (= x c4o21) (= y c4o16))
(and (= x c4o21) (= y c4o18))
(and (= x c4o21) (= y c4o20))
(and (= x c4o21) (= y c4o22))
(and (= x c4o21) (= y c4o23))
(and (= x c4o21) (= y c4o25))
(and (= x c4o21) (= y c4o27))
(and (= x c4o21) (= y c4o28))
(and (= x c4o21) (= y c4o30))
(and (= x c4o22) (= y c4o20))
(and (= x c4o23) (= y c4o12))
(and (= x c4o23) (= y c4o14))
(and (= x c4o23) (= y c4o15))
(and (= x c4o23) (= y c4o20))
(and (= x c4o23) (= y c4o22))
(and (= x c4o23) (= y c4o25))
(and (= x c4o23) (= y c4o28))
(and (= x c4o24) (= y c4o1))
(and (= x c4o24) (= y c4o2))
(and (= x c4o24) (= y c4o3))
(and (= x c4o24) (= y c4o4))
(and (= x c4o24) (= y c4o6))
(and (= x c4o24) (= y c4o7))
(and (= x c4o24) (= y c4o8))
(and (= x c4o24) (= y c4o10))
(and (= x c4o24) (= y c4o11))
(and (= x c4o24) (= y c4o12))
(and (= x c4o24) (= y c4o13))
(and (= x c4o24) (= y c4o14))
(and (= x c4o24) (= y c4o15))
(and (= x c4o24) (= y c4o16))
(and (= x c4o24) (= y c4o18))
(and (= x c4o24) (= y c4o20))
(and (= x c4o24) (= y c4o21))
(and (= x c4o24) (= y c4o22))
(and (= x c4o24) (= y c4o23))
(and (= x c4o24) (= y c4o25))
(and (= x c4o24) (= y c4o26))
(and (= x c4o24) (= y c4o27))
(and (= x c4o24) (= y c4o28))
(and (= x c4o24) (= y c4o30))
(and (= x c4o24) (= y c4o33))
(and (= x c4o24) (= y c4o34))
(and (= x c4o26) (= y c4o3))
(and (= x c4o26) (= y c4o6))
(and (= x c4o26) (= y c4o7))
(and (= x c4o26) (= y c4o10))
(and (= x c4o26) (= y c4o11))
(and (= x c4o26) (= y c4o12))
(and (= x c4o26) (= y c4o13))
(and (= x c4o26) (= y c4o14))
(and (= x c4o26) (= y c4o15))
(and (= x c4o26) (= y c4o18))
(and (= x c4o26) (= y c4o20))
(and (= x c4o26) (= y c4o22))
(and (= x c4o26) (= y c4o23))
(and (= x c4o26) (= y c4o25))
(and (= x c4o26) (= y c4o27))
(and (= x c4o26) (= y c4o28))
(and (= x c4o26) (= y c4o30))
(and (= x c4o27) (= y c4o3))
(and (= x c4o27) (= y c4o7))
(and (= x c4o27) (= y c4o10))
(and (= x c4o27) (= y c4o11))
(and (= x c4o27) (= y c4o12))
(and (= x c4o27) (= y c4o14))
(and (= x c4o27) (= y c4o15))
(and (= x c4o27) (= y c4o18))
(and (= x c4o27) (= y c4o20))
(and (= x c4o27) (= y c4o22))
(and (= x c4o27) (= y c4o23))
(and (= x c4o27) (= y c4o25))
(and (= x c4o27) (= y c4o28))
(and (= x c4o27) (= y c4o30))
(and (= x c4o28) (= y c4o20))
(and (= x c4o28) (= y c4o25))
(and (= x c4o29) (= y c4o1))
(and (= x c4o29) (= y c4o2))
(and (= x c4o29) (= y c4o3))
(and (= x c4o29) (= y c4o4))
(and (= x c4o29) (= y c4o6))
(and (= x c4o29) (= y c4o7))
(and (= x c4o29) (= y c4o8))
(and (= x c4o29) (= y c4o10))
(and (= x c4o29) (= y c4o11))
(and (= x c4o29) (= y c4o12))
(and (= x c4o29) (= y c4o13))
(and (= x c4o29) (= y c4o14))
(and (= x c4o29) (= y c4o15))
(and (= x c4o29) (= y c4o16))
(and (= x c4o29) (= y c4o18))
(and (= x c4o29) (= y c4o20))
(and (= x c4o29) (= y c4o21))
(and (= x c4o29) (= y c4o22))
(and (= x c4o29) (= y c4o23))
(and (= x c4o29) (= y c4o24))
(and (= x c4o29) (= y c4o25))
(and (= x c4o29) (= y c4o26))
(and (= x c4o29) (= y c4o27))
(and (= x c4o29) (= y c4o28))
(and (= x c4o29) (= y c4o30))
(and (= x c4o29) (= y c4o32))
(and (= x c4o29) (= y c4o33))
(and (= x c4o29) (= y c4o34))
(and (= x c4o30) (= y c4o7))
(and (= x c4o30) (= y c4o12))
(and (= x c4o30) (= y c4o14))
(and (= x c4o30) (= y c4o15))
(and (= x c4o30) (= y c4o18))
(and (= x c4o30) (= y c4o20))
(and (= x c4o30) (= y c4o22))
(and (= x c4o30) (= y c4o23))
(and (= x c4o30) (= y c4o25))
(and (= x c4o30) (= y c4o28))
(and (= x c4o31) (= y c4o1))
(and (= x c4o31) (= y c4o2))
(and (= x c4o31) (= y c4o3))
(and (= x c4o31) (= y c4o4))
(and (= x c4o31) (= y c4o6))
(and (= x c4o31) (= y c4o7))
(and (= x c4o31) (= y c4o8))
(and (= x c4o31) (= y c4o10))
(and (= x c4o31) (= y c4o11))
(and (= x c4o31) (= y c4o12))
(and (= x c4o31) (= y c4o13))
(and (= x c4o31) (= y c4o14))
(and (= x c4o31) (= y c4o15))
(and (= x c4o31) (= y c4o16))
(and (= x c4o31) (= y c4o18))
(and (= x c4o31) (= y c4o20))
(and (= x c4o31) (= y c4o21))
(and (= x c4o31) (= y c4o22))
(and (= x c4o31) (= y c4o23))
(and (= x c4o31) (= y c4o24))
(and (= x c4o31) (= y c4o25))
(and (= x c4o31) (= y c4o26))
(and (= x c4o31) (= y c4o27))
(and (= x c4o31) (= y c4o28))
(and (= x c4o31) (= y c4o30))
(and (= x c4o31) (= y c4o32))
(and (= x c4o31) (= y c4o33))
(and (= x c4o31) (= y c4o34))
(and (= x c4o32) (= y c4o1))
(and (= x c4o32) (= y c4o2))
(and (= x c4o32) (= y c4o3))
(and (= x c4o32) (= y c4o4))
(and (= x c4o32) (= y c4o6))
(and (= x c4o32) (= y c4o7))
(and (= x c4o32) (= y c4o8))
(and (= x c4o32) (= y c4o10))
(and (= x c4o32) (= y c4o11))
(and (= x c4o32) (= y c4o12))
(and (= x c4o32) (= y c4o13))
(and (= x c4o32) (= y c4o14))
(and (= x c4o32) (= y c4o15))
(and (= x c4o32) (= y c4o16))
(and (= x c4o32) (= y c4o18))
(and (= x c4o32) (= y c4o20))
(and (= x c4o32) (= y c4o21))
(and (= x c4o32) (= y c4o22))
(and (= x c4o32) (= y c4o23))
(and (= x c4o32) (= y c4o25))
(and (= x c4o32) (= y c4o26))
(and (= x c4o32) (= y c4o27))
(and (= x c4o32) (= y c4o28))
(and (= x c4o32) (= y c4o30))
(and (= x c4o32) (= y c4o33))
(and (= x c4o32) (= y c4o34))
(and (= x c4o33) (= y c4o2))
(and (= x c4o33) (= y c4o3))
(and (= x c4o33) (= y c4o4))
(and (= x c4o33) (= y c4o6))
(and (= x c4o33) (= y c4o7))
(and (= x c4o33) (= y c4o10))
(and (= x c4o33) (= y c4o11))
(and (= x c4o33) (= y c4o12))
(and (= x c4o33) (= y c4o13))
(and (= x c4o33) (= y c4o14))
(and (= x c4o33) (= y c4o15))
(and (= x c4o33) (= y c4o16))
(and (= x c4o33) (= y c4o18))
(and (= x c4o33) (= y c4o20))
(and (= x c4o33) (= y c4o21))
(and (= x c4o33) (= y c4o22))
(and (= x c4o33) (= y c4o23))
(and (= x c4o33) (= y c4o25))
(and (= x c4o33) (= y c4o26))
(and (= x c4o33) (= y c4o27))
(and (= x c4o33) (= y c4o28))
(and (= x c4o33) (= y c4o30))
(and (= x c4o33) (= y c4o34))
(and (= x c4o34) (= y c4o3))
(and (= x c4o34) (= y c4o6))
(and (= x c4o34) (= y c4o7))
(and (= x c4o34) (= y c4o10))
(and (= x c4o34) (= y c4o11))
(and (= x c4o34) (= y c4o12))
(and (= x c4o34) (= y c4o13))
(and (= x c4o34) (= y c4o14))
(and (= x c4o34) (= y c4o15))
(and (= x c4o34) (= y c4o18))
(and (= x c4o34) (= y c4o20))
(and (= x c4o34) (= y c4o22))
(and (= x c4o34) (= y c4o23))
(and (= x c4o34) (= y c4o25))
(and (= x c4o34) (= y c4o27))
(and (= x c4o34) (= y c4o28))
(and (= x c4o34) (= y c4o30))
(and (= x c4o35) (= y c4o1))
(and (= x c4o35) (= y c4o2))
(and (= x c4o35) (= y c4o3))
(and (= x c4o35) (= y c4o4))
(and (= x c4o35) (= y c4o6))
(and (= x c4o35) (= y c4o7))
(and (= x c4o35) (= y c4o8))
(and (= x c4o35) (= y c4o9))
(and (= x c4o35) (= y c4o10))
(and (= x c4o35) (= y c4o11))
(and (= x c4o35) (= y c4o12))
(and (= x c4o35) (= y c4o13))
(and (= x c4o35) (= y c4o14))
(and (= x c4o35) (= y c4o15))
(and (= x c4o35) (= y c4o16))
(and (= x c4o35) (= y c4o18))
(and (= x c4o35) (= y c4o20))
(and (= x c4o35) (= y c4o21))
(and (= x c4o35) (= y c4o22))
(and (= x c4o35) (= y c4o23))
(and (= x c4o35) (= y c4o24))
(and (= x c4o35) (= y c4o25))
(and (= x c4o35) (= y c4o26))
(and (= x c4o35) (= y c4o27))
(and (= x c4o35) (= y c4o28))
(and (= x c4o35) (= y c4o30))
(and (= x c4o35) (= y c4o32))
(and (= x c4o35) (= y c4o33))
(and (= x c4o35) (= y c4o34))
(and (= x c4o35) (= y c4o36))
(and (= x c4o36) (= y c4o1))
(and (= x c4o36) (= y c4o2))
(and (= x c4o36) (= y c4o3))
(and (= x c4o36) (= y c4o4))
(and (= x c4o36) (= y c4o6))
(and (= x c4o36) (= y c4o7))
(and (= x c4o36) (= y c4o8))
(and (= x c4o36) (= y c4o10))
(and (= x c4o36) (= y c4o11))
(and (= x c4o36) (= y c4o12))
(and (= x c4o36) (= y c4o13))
(and (= x c4o36) (= y c4o14))
(and (= x c4o36) (= y c4o15))
(and (= x c4o36) (= y c4o16))
(and (= x c4o36) (= y c4o18))
(and (= x c4o36) (= y c4o20))
(and (= x c4o36) (= y c4o21))
(and (= x c4o36) (= y c4o22))
(and (= x c4o36) (= y c4o23))
(and (= x c4o36) (= y c4o24))
(and (= x c4o36) (= y c4o25))
(and (= x c4o36) (= y c4o26))
(and (= x c4o36) (= y c4o27))
(and (= x c4o36) (= y c4o28))
(and (= x c4o36) (= y c4o30))
(and (= x c4o36) (= y c4o32))
(and (= x c4o36) (= y c4o33))
(and (= x c4o36) (= y c4o34))

))

(define-fun rightOf ((x (_ BitVec 7))(y (_ BitVec 7))) Bool
(or
(and (= x t1o3) (= y t1o1))
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
(and (= x c4o1) (= y c4o17))
(and (= x c4o1) (= y c4o19))
(and (= x c4o1) (= y c4o24))
(and (= x c4o1) (= y c4o29))
(and (= x c4o1) (= y c4o31))
(and (= x c4o1) (= y c4o32))
(and (= x c4o1) (= y c4o35))
(and (= x c4o1) (= y c4o36))
(and (= x c4o2) (= y c4o1))
(and (= x c4o2) (= y c4o4))
(and (= x c4o2) (= y c4o9))
(and (= x c4o2) (= y c4o17))
(and (= x c4o2) (= y c4o19))
(and (= x c4o2) (= y c4o21))
(and (= x c4o2) (= y c4o24))
(and (= x c4o2) (= y c4o29))
(and (= x c4o2) (= y c4o31))
(and (= x c4o2) (= y c4o32))
(and (= x c4o2) (= y c4o33))
(and (= x c4o2) (= y c4o35))
(and (= x c4o2) (= y c4o36))
(and (= x c4o3) (= y c4o1))
(and (= x c4o3) (= y c4o2))
(and (= x c4o3) (= y c4o4))
(and (= x c4o3) (= y c4o5))
(and (= x c4o3) (= y c4o8))
(and (= x c4o3) (= y c4o9))
(and (= x c4o3) (= y c4o13))
(and (= x c4o3) (= y c4o16))
(and (= x c4o3) (= y c4o17))
(and (= x c4o3) (= y c4o19))
(and (= x c4o3) (= y c4o21))
(and (= x c4o3) (= y c4o24))
(and (= x c4o3) (= y c4o26))
(and (= x c4o3) (= y c4o27))
(and (= x c4o3) (= y c4o29))
(and (= x c4o3) (= y c4o31))
(and (= x c4o3) (= y c4o32))
(and (= x c4o3) (= y c4o33))
(and (= x c4o3) (= y c4o34))
(and (= x c4o3) (= y c4o35))
(and (= x c4o3) (= y c4o36))
(and (= x c4o4) (= y c4o9))
(and (= x c4o4) (= y c4o17))
(and (= x c4o4) (= y c4o19))
(and (= x c4o4) (= y c4o24))
(and (= x c4o4) (= y c4o29))
(and (= x c4o4) (= y c4o31))
(and (= x c4o4) (= y c4o32))
(and (= x c4o4) (= y c4o33))
(and (= x c4o4) (= y c4o35))
(and (= x c4o4) (= y c4o36))
(and (= x c4o6) (= y c4o1))
(and (= x c4o6) (= y c4o2))
(and (= x c4o6) (= y c4o4))
(and (= x c4o6) (= y c4o9))
(and (= x c4o6) (= y c4o17))
(and (= x c4o6) (= y c4o19))
(and (= x c4o6) (= y c4o21))
(and (= x c4o6) (= y c4o24))
(and (= x c4o6) (= y c4o26))
(and (= x c4o6) (= y c4o29))
(and (= x c4o6) (= y c4o31))
(and (= x c4o6) (= y c4o32))
(and (= x c4o6) (= y c4o33))
(and (= x c4o6) (= y c4o34))
(and (= x c4o6) (= y c4o35))
(and (= x c4o6) (= y c4o36))
(and (= x c4o7) (= y c4o1))
(and (= x c4o7) (= y c4o2))
(and (= x c4o7) (= y c4o3))
(and (= x c4o7) (= y c4o4))
(and (= x c4o7) (= y c4o5))
(and (= x c4o7) (= y c4o6))
(and (= x c4o7) (= y c4o8))
(and (= x c4o7) (= y c4o9))
(and (= x c4o7) (= y c4o11))
(and (= x c4o7) (= y c4o13))
(and (= x c4o7) (= y c4o16))
(and (= x c4o7) (= y c4o17))
(and (= x c4o7) (= y c4o19))
(and (= x c4o7) (= y c4o21))
(and (= x c4o7) (= y c4o24))
(and (= x c4o7) (= y c4o26))
(and (= x c4o7) (= y c4o27))
(and (= x c4o7) (= y c4o29))
(and (= x c4o7) (= y c4o30))
(and (= x c4o7) (= y c4o31))
(and (= x c4o7) (= y c4o32))
(and (= x c4o7) (= y c4o33))
(and (= x c4o7) (= y c4o34))
(and (= x c4o7) (= y c4o35))
(and (= x c4o7) (= y c4o36))
(and (= x c4o8) (= y c4o9))
(and (= x c4o8) (= y c4o17))
(and (= x c4o8) (= y c4o19))
(and (= x c4o8) (= y c4o24))
(and (= x c4o8) (= y c4o29))
(and (= x c4o8) (= y c4o31))
(and (= x c4o8) (= y c4o32))
(and (= x c4o8) (= y c4o35))
(and (= x c4o8) (= y c4o36))
(and (= x c4o9) (= y c4o17))
(and (= x c4o9) (= y c4o35))
(and (= x c4o10) (= y c4o1))
(and (= x c4o10) (= y c4o2))
(and (= x c4o10) (= y c4o3))
(and (= x c4o10) (= y c4o4))
(and (= x c4o10) (= y c4o5))
(and (= x c4o10) (= y c4o8))
(and (= x c4o10) (= y c4o9))
(and (= x c4o10) (= y c4o13))
(and (= x c4o10) (= y c4o16))
(and (= x c4o10) (= y c4o17))
(and (= x c4o10) (= y c4o19))
(and (= x c4o10) (= y c4o21))
(and (= x c4o10) (= y c4o24))
(and (= x c4o10) (= y c4o26))
(and (= x c4o10) (= y c4o27))
(and (= x c4o10) (= y c4o29))
(and (= x c4o10) (= y c4o31))
(and (= x c4o10) (= y c4o32))
(and (= x c4o10) (= y c4o33))
(and (= x c4o10) (= y c4o34))
(and (= x c4o10) (= y c4o35))
(and (= x c4o10) (= y c4o36))
(and (= x c4o11) (= y c4o1))
(and (= x c4o11) (= y c4o2))
(and (= x c4o11) (= y c4o3))
(and (= x c4o11) (= y c4o4))
(and (= x c4o11) (= y c4o5))
(and (= x c4o11) (= y c4o8))
(and (= x c4o11) (= y c4o9))
(and (= x c4o11) (= y c4o13))
(and (= x c4o11) (= y c4o16))
(and (= x c4o11) (= y c4o17))
(and (= x c4o11) (= y c4o19))
(and (= x c4o11) (= y c4o21))
(and (= x c4o11) (= y c4o24))
(and (= x c4o11) (= y c4o26))
(and (= x c4o11) (= y c4o27))
(and (= x c4o11) (= y c4o29))
(and (= x c4o11) (= y c4o31))
(and (= x c4o11) (= y c4o32))
(and (= x c4o11) (= y c4o33))
(and (= x c4o11) (= y c4o34))
(and (= x c4o11) (= y c4o35))
(and (= x c4o11) (= y c4o36))
(and (= x c4o12) (= y c4o1))
(and (= x c4o12) (= y c4o2))
(and (= x c4o12) (= y c4o3))
(and (= x c4o12) (= y c4o4))
(and (= x c4o12) (= y c4o5))
(and (= x c4o12) (= y c4o6))
(and (= x c4o12) (= y c4o8))
(and (= x c4o12) (= y c4o9))
(and (= x c4o12) (= y c4o10))
(and (= x c4o12) (= y c4o11))
(and (= x c4o12) (= y c4o13))
(and (= x c4o12) (= y c4o16))
(and (= x c4o12) (= y c4o17))
(and (= x c4o12) (= y c4o18))
(and (= x c4o12) (= y c4o19))
(and (= x c4o12) (= y c4o21))
(and (= x c4o12) (= y c4o23))
(and (= x c4o12) (= y c4o24))
(and (= x c4o12) (= y c4o26))
(and (= x c4o12) (= y c4o27))
(and (= x c4o12) (= y c4o29))
(and (= x c4o12) (= y c4o30))
(and (= x c4o12) (= y c4o31))
(and (= x c4o12) (= y c4o32))
(and (= x c4o12) (= y c4o33))
(and (= x c4o12) (= y c4o34))
(and (= x c4o12) (= y c4o35))
(and (= x c4o12) (= y c4o36))
(and (= x c4o13) (= y c4o1))
(and (= x c4o13) (= y c4o2))
(and (= x c4o13) (= y c4o4))
(and (= x c4o13) (= y c4o9))
(and (= x c4o13) (= y c4o17))
(and (= x c4o13) (= y c4o19))
(and (= x c4o13) (= y c4o21))
(and (= x c4o13) (= y c4o24))
(and (= x c4o13) (= y c4o26))
(and (= x c4o13) (= y c4o29))
(and (= x c4o13) (= y c4o31))
(and (= x c4o13) (= y c4o32))
(and (= x c4o13) (= y c4o33))
(and (= x c4o13) (= y c4o34))
(and (= x c4o13) (= y c4o35))
(and (= x c4o13) (= y c4o36))
(and (= x c4o14) (= y c4o1))
(and (= x c4o14) (= y c4o2))
(and (= x c4o14) (= y c4o3))
(and (= x c4o14) (= y c4o4))
(and (= x c4o14) (= y c4o5))
(and (= x c4o14) (= y c4o6))
(and (= x c4o14) (= y c4o8))
(and (= x c4o14) (= y c4o9))
(and (= x c4o14) (= y c4o11))
(and (= x c4o14) (= y c4o13))
(and (= x c4o14) (= y c4o16))
(and (= x c4o14) (= y c4o17))
(and (= x c4o14) (= y c4o19))
(and (= x c4o14) (= y c4o21))
(and (= x c4o14) (= y c4o23))
(and (= x c4o14) (= y c4o24))
(and (= x c4o14) (= y c4o26))
(and (= x c4o14) (= y c4o27))
(and (= x c4o14) (= y c4o29))
(and (= x c4o14) (= y c4o30))
(and (= x c4o14) (= y c4o31))
(and (= x c4o14) (= y c4o32))
(and (= x c4o14) (= y c4o33))
(and (= x c4o14) (= y c4o34))
(and (= x c4o14) (= y c4o35))
(and (= x c4o14) (= y c4o36))
(and (= x c4o15) (= y c4o1))
(and (= x c4o15) (= y c4o2))
(and (= x c4o15) (= y c4o3))
(and (= x c4o15) (= y c4o4))
(and (= x c4o15) (= y c4o5))
(and (= x c4o15) (= y c4o6))
(and (= x c4o15) (= y c4o8))
(and (= x c4o15) (= y c4o9))
(and (= x c4o15) (= y c4o10))
(and (= x c4o15) (= y c4o11))
(and (= x c4o15) (= y c4o13))
(and (= x c4o15) (= y c4o16))
(and (= x c4o15) (= y c4o17))
(and (= x c4o15) (= y c4o18))
(and (= x c4o15) (= y c4o19))
(and (= x c4o15) (= y c4o21))
(and (= x c4o15) (= y c4o23))
(and (= x c4o15) (= y c4o24))
(and (= x c4o15) (= y c4o26))
(and (= x c4o15) (= y c4o27))
(and (= x c4o15) (= y c4o29))
(and (= x c4o15) (= y c4o30))
(and (= x c4o15) (= y c4o31))
(and (= x c4o15) (= y c4o32))
(and (= x c4o15) (= y c4o33))
(and (= x c4o15) (= y c4o34))
(and (= x c4o15) (= y c4o35))
(and (= x c4o15) (= y c4o36))
(and (= x c4o16) (= y c4o1))
(and (= x c4o16) (= y c4o2))
(and (= x c4o16) (= y c4o4))
(and (= x c4o16) (= y c4o9))
(and (= x c4o16) (= y c4o17))
(and (= x c4o16) (= y c4o19))
(and (= x c4o16) (= y c4o21))
(and (= x c4o16) (= y c4o24))
(and (= x c4o16) (= y c4o29))
(and (= x c4o16) (= y c4o31))
(and (= x c4o16) (= y c4o32))
(and (= x c4o16) (= y c4o33))
(and (= x c4o16) (= y c4o35))
(and (= x c4o16) (= y c4o36))
(and (= x c4o18) (= y c4o1))
(and (= x c4o18) (= y c4o2))
(and (= x c4o18) (= y c4o3))
(and (= x c4o18) (= y c4o4))
(and (= x c4o18) (= y c4o5))
(and (= x c4o18) (= y c4o6))
(and (= x c4o18) (= y c4o8))
(and (= x c4o18) (= y c4o9))
(and (= x c4o18) (= y c4o13))
(and (= x c4o18) (= y c4o16))
(and (= x c4o18) (= y c4o17))
(and (= x c4o18) (= y c4o19))
(and (= x c4o18) (= y c4o21))
(and (= x c4o18) (= y c4o24))
(and (= x c4o18) (= y c4o26))
(and (= x c4o18) (= y c4o27))
(and (= x c4o18) (= y c4o29))
(and (= x c4o18) (= y c4o30))
(and (= x c4o18) (= y c4o31))
(and (= x c4o18) (= y c4o32))
(and (= x c4o18) (= y c4o33))
(and (= x c4o18) (= y c4o34))
(and (= x c4o18) (= y c4o35))
(and (= x c4o18) (= y c4o36))
(and (= x c4o20) (= y c4o1))
(and (= x c4o20) (= y c4o2))
(and (= x c4o20) (= y c4o3))
(and (= x c4o20) (= y c4o4))
(and (= x c4o20) (= y c4o5))
(and (= x c4o20) (= y c4o6))
(and (= x c4o20) (= y c4o7))
(and (= x c4o20) (= y c4o8))
(and (= x c4o20) (= y c4o9))
(and (= x c4o20) (= y c4o10))
(and (= x c4o20) (= y c4o11))
(and (= x c4o20) (= y c4o13))
(and (= x c4o20) (= y c4o14))
(and (= x c4o20) (= y c4o15))
(and (= x c4o20) (= y c4o16))
(and (= x c4o20) (= y c4o17))
(and (= x c4o20) (= y c4o18))
(and (= x c4o20) (= y c4o19))
(and (= x c4o20) (= y c4o21))
(and (= x c4o20) (= y c4o22))
(and (= x c4o20) (= y c4o23))
(and (= x c4o20) (= y c4o24))
(and (= x c4o20) (= y c4o26))
(and (= x c4o20) (= y c4o27))
(and (= x c4o20) (= y c4o28))
(and (= x c4o20) (= y c4o29))
(and (= x c4o20) (= y c4o30))
(and (= x c4o20) (= y c4o31))
(and (= x c4o20) (= y c4o32))
(and (= x c4o20) (= y c4o33))
(and (= x c4o20) (= y c4o34))
(and (= x c4o20) (= y c4o35))
(and (= x c4o20) (= y c4o36))
(and (= x c4o21) (= y c4o9))
(and (= x c4o21) (= y c4o17))
(and (= x c4o21) (= y c4o19))
(and (= x c4o21) (= y c4o24))
(and (= x c4o21) (= y c4o29))
(and (= x c4o21) (= y c4o31))
(and (= x c4o21) (= y c4o32))
(and (= x c4o21) (= y c4o33))
(and (= x c4o21) (= y c4o35))
(and (= x c4o21) (= y c4o36))
(and (= x c4o22) (= y c4o1))
(and (= x c4o22) (= y c4o2))
(and (= x c4o22) (= y c4o3))
(and (= x c4o22) (= y c4o4))
(and (= x c4o22) (= y c4o5))
(and (= x c4o22) (= y c4o6))
(and (= x c4o22) (= y c4o8))
(and (= x c4o22) (= y c4o9))
(and (= x c4o22) (= y c4o10))
(and (= x c4o22) (= y c4o11))
(and (= x c4o22) (= y c4o13))
(and (= x c4o22) (= y c4o16))
(and (= x c4o22) (= y c4o17))
(and (= x c4o22) (= y c4o18))
(and (= x c4o22) (= y c4o19))
(and (= x c4o22) (= y c4o21))
(and (= x c4o22) (= y c4o23))
(and (= x c4o22) (= y c4o24))
(and (= x c4o22) (= y c4o26))
(and (= x c4o22) (= y c4o27))
(and (= x c4o22) (= y c4o29))
(and (= x c4o22) (= y c4o30))
(and (= x c4o22) (= y c4o31))
(and (= x c4o22) (= y c4o32))
(and (= x c4o22) (= y c4o33))
(and (= x c4o22) (= y c4o34))
(and (= x c4o22) (= y c4o35))
(and (= x c4o22) (= y c4o36))
(and (= x c4o23) (= y c4o1))
(and (= x c4o23) (= y c4o2))
(and (= x c4o23) (= y c4o3))
(and (= x c4o23) (= y c4o4))
(and (= x c4o23) (= y c4o5))
(and (= x c4o23) (= y c4o6))
(and (= x c4o23) (= y c4o8))
(and (= x c4o23) (= y c4o9))
(and (= x c4o23) (= y c4o13))
(and (= x c4o23) (= y c4o16))
(and (= x c4o23) (= y c4o17))
(and (= x c4o23) (= y c4o19))
(and (= x c4o23) (= y c4o21))
(and (= x c4o23) (= y c4o24))
(and (= x c4o23) (= y c4o26))
(and (= x c4o23) (= y c4o27))
(and (= x c4o23) (= y c4o29))
(and (= x c4o23) (= y c4o30))
(and (= x c4o23) (= y c4o31))
(and (= x c4o23) (= y c4o32))
(and (= x c4o23) (= y c4o33))
(and (= x c4o23) (= y c4o34))
(and (= x c4o23) (= y c4o35))
(and (= x c4o23) (= y c4o36))
(and (= x c4o24) (= y c4o17))
(and (= x c4o24) (= y c4o19))
(and (= x c4o24) (= y c4o29))
(and (= x c4o24) (= y c4o31))
(and (= x c4o24) (= y c4o35))
(and (= x c4o24) (= y c4o36))
(and (= x c4o25) (= y c4o1))
(and (= x c4o25) (= y c4o2))
(and (= x c4o25) (= y c4o3))
(and (= x c4o25) (= y c4o4))
(and (= x c4o25) (= y c4o5))
(and (= x c4o25) (= y c4o6))
(and (= x c4o25) (= y c4o8))
(and (= x c4o25) (= y c4o9))
(and (= x c4o25) (= y c4o10))
(and (= x c4o25) (= y c4o11))
(and (= x c4o25) (= y c4o13))
(and (= x c4o25) (= y c4o14))
(and (= x c4o25) (= y c4o16))
(and (= x c4o25) (= y c4o17))
(and (= x c4o25) (= y c4o18))
(and (= x c4o25) (= y c4o19))
(and (= x c4o25) (= y c4o21))
(and (= x c4o25) (= y c4o23))
(and (= x c4o25) (= y c4o24))
(and (= x c4o25) (= y c4o26))
(and (= x c4o25) (= y c4o27))
(and (= x c4o25) (= y c4o28))
(and (= x c4o25) (= y c4o29))
(and (= x c4o25) (= y c4o30))
(and (= x c4o25) (= y c4o31))
(and (= x c4o25) (= y c4o32))
(and (= x c4o25) (= y c4o33))
(and (= x c4o25) (= y c4o34))
(and (= x c4o25) (= y c4o35))
(and (= x c4o25) (= y c4o36))
(and (= x c4o26) (= y c4o1))
(and (= x c4o26) (= y c4o4))
(and (= x c4o26) (= y c4o9))
(and (= x c4o26) (= y c4o17))
(and (= x c4o26) (= y c4o19))
(and (= x c4o26) (= y c4o24))
(and (= x c4o26) (= y c4o29))
(and (= x c4o26) (= y c4o31))
(and (= x c4o26) (= y c4o32))
(and (= x c4o26) (= y c4o33))
(and (= x c4o26) (= y c4o35))
(and (= x c4o26) (= y c4o36))
(and (= x c4o27) (= y c4o1))
(and (= x c4o27) (= y c4o2))
(and (= x c4o27) (= y c4o4))
(and (= x c4o27) (= y c4o9))
(and (= x c4o27) (= y c4o17))
(and (= x c4o27) (= y c4o19))
(and (= x c4o27) (= y c4o21))
(and (= x c4o27) (= y c4o24))
(and (= x c4o27) (= y c4o26))
(and (= x c4o27) (= y c4o29))
(and (= x c4o27) (= y c4o31))
(and (= x c4o27) (= y c4o32))
(and (= x c4o27) (= y c4o33))
(and (= x c4o27) (= y c4o34))
(and (= x c4o27) (= y c4o35))
(and (= x c4o27) (= y c4o36))
(and (= x c4o28) (= y c4o1))
(and (= x c4o28) (= y c4o2))
(and (= x c4o28) (= y c4o3))
(and (= x c4o28) (= y c4o4))
(and (= x c4o28) (= y c4o5))
(and (= x c4o28) (= y c4o6))
(and (= x c4o28) (= y c4o8))
(and (= x c4o28) (= y c4o9))
(and (= x c4o28) (= y c4o10))
(and (= x c4o28) (= y c4o11))
(and (= x c4o28) (= y c4o13))
(and (= x c4o28) (= y c4o16))
(and (= x c4o28) (= y c4o17))
(and (= x c4o28) (= y c4o18))
(and (= x c4o28) (= y c4o19))
(and (= x c4o28) (= y c4o21))
(and (= x c4o28) (= y c4o23))
(and (= x c4o28) (= y c4o24))
(and (= x c4o28) (= y c4o26))
(and (= x c4o28) (= y c4o27))
(and (= x c4o28) (= y c4o29))
(and (= x c4o28) (= y c4o30))
(and (= x c4o28) (= y c4o31))
(and (= x c4o28) (= y c4o32))
(and (= x c4o28) (= y c4o33))
(and (= x c4o28) (= y c4o34))
(and (= x c4o28) (= y c4o35))
(and (= x c4o28) (= y c4o36))
(and (= x c4o30) (= y c4o1))
(and (= x c4o30) (= y c4o2))
(and (= x c4o30) (= y c4o4))
(and (= x c4o30) (= y c4o8))
(and (= x c4o30) (= y c4o9))
(and (= x c4o30) (= y c4o16))
(and (= x c4o30) (= y c4o17))
(and (= x c4o30) (= y c4o19))
(and (= x c4o30) (= y c4o21))
(and (= x c4o30) (= y c4o24))
(and (= x c4o30) (= y c4o26))
(and (= x c4o30) (= y c4o27))
(and (= x c4o30) (= y c4o29))
(and (= x c4o30) (= y c4o31))
(and (= x c4o30) (= y c4o32))
(and (= x c4o30) (= y c4o33))
(and (= x c4o30) (= y c4o34))
(and (= x c4o30) (= y c4o35))
(and (= x c4o30) (= y c4o36))
(and (= x c4o32) (= y c4o17))
(and (= x c4o32) (= y c4o19))
(and (= x c4o32) (= y c4o29))
(and (= x c4o32) (= y c4o31))
(and (= x c4o32) (= y c4o35))
(and (= x c4o32) (= y c4o36))
(and (= x c4o33) (= y c4o9))
(and (= x c4o33) (= y c4o17))
(and (= x c4o33) (= y c4o19))
(and (= x c4o33) (= y c4o24))
(and (= x c4o33) (= y c4o29))
(and (= x c4o33) (= y c4o31))
(and (= x c4o33) (= y c4o32))
(and (= x c4o33) (= y c4o35))
(and (= x c4o33) (= y c4o36))
(and (= x c4o34) (= y c4o1))
(and (= x c4o34) (= y c4o4))
(and (= x c4o34) (= y c4o9))
(and (= x c4o34) (= y c4o17))
(and (= x c4o34) (= y c4o19))
(and (= x c4o34) (= y c4o24))
(and (= x c4o34) (= y c4o29))
(and (= x c4o34) (= y c4o31))
(and (= x c4o34) (= y c4o32))
(and (= x c4o34) (= y c4o33))
(and (= x c4o34) (= y c4o35))
(and (= x c4o34) (= y c4o36))
(and (= x c4o36) (= y c4o17))
(and (= x c4o36) (= y c4o35))

))

(define-fun above ((x (_ BitVec 7))(y (_ BitVec 7))) Bool
(or
(and (= x c1o9) (= y c1o1))
(and (= x c4o2) (= y c4o1))
(and (= x c4o3) (= y c4o1))
(and (= x c4o3) (= y c4o2))
(and (= x c4o3) (= y c4o5))
(and (= x c4o3) (= y c4o6))
(and (= x c4o3) (= y c4o7))
(and (= x c4o3) (= y c4o8))
(and (= x c4o3) (= y c4o9))
(and (= x c4o3) (= y c4o10))
(and (= x c4o3) (= y c4o11))
(and (= x c4o3) (= y c4o12))
(and (= x c4o3) (= y c4o13))
(and (= x c4o3) (= y c4o14))
(and (= x c4o3) (= y c4o15))
(and (= x c4o3) (= y c4o16))
(and (= x c4o3) (= y c4o17))
(and (= x c4o3) (= y c4o18))
(and (= x c4o3) (= y c4o19))
(and (= x c4o3) (= y c4o21))
(and (= x c4o3) (= y c4o23))
(and (= x c4o3) (= y c4o24))
(and (= x c4o3) (= y c4o25))
(and (= x c4o3) (= y c4o27))
(and (= x c4o3) (= y c4o29))
(and (= x c4o3) (= y c4o30))
(and (= x c4o3) (= y c4o31))
(and (= x c4o3) (= y c4o34))
(and (= x c4o3) (= y c4o35))
(and (= x c4o4) (= y c4o1))
(and (= x c4o4) (= y c4o2))
(and (= x c4o4) (= y c4o6))
(and (= x c4o4) (= y c4o7))
(and (= x c4o4) (= y c4o8))
(and (= x c4o4) (= y c4o9))
(and (= x c4o4) (= y c4o10))
(and (= x c4o4) (= y c4o11))
(and (= x c4o4) (= y c4o12))
(and (= x c4o4) (= y c4o13))
(and (= x c4o4) (= y c4o15))
(and (= x c4o4) (= y c4o16))
(and (= x c4o4) (= y c4o18))
(and (= x c4o4) (= y c4o19))
(and (= x c4o4) (= y c4o21))
(and (= x c4o4) (= y c4o23))
(and (= x c4o4) (= y c4o25))
(and (= x c4o4) (= y c4o30))
(and (= x c4o4) (= y c4o31))
(and (= x c4o4) (= y c4o34))
(and (= x c4o4) (= y c4o35))
(and (= x c4o9) (= y c4o1))
(and (= x c4o11) (= y c4o1))
(and (= x c4o13) (= y c4o1))
(and (= x c4o14) (= y c4o1))
(and (= x c4o15) (= y c4o1))
(and (= x c4o16) (= y c4o1))
(and (= x c4o16) (= y c4o6))
(and (= x c4o16) (= y c4o10))
(and (= x c4o17) (= y c4o1))
(and (= x c4o17) (= y c4o2))
(and (= x c4o17) (= y c4o6))
(and (= x c4o17) (= y c4o7))
(and (= x c4o17) (= y c4o10))
(and (= x c4o17) (= y c4o15))
(and (= x c4o17) (= y c4o31))
(and (= x c4o17) (= y c4o35))
(and (= x c4o18) (= y c4o1))
(and (= x c4o19) (= y c4o1))
(and (= x c4o19) (= y c4o6))
(and (= x c4o19) (= y c4o10))
(and (= x c4o20) (= y c4o1))
(and (= x c4o20) (= y c4o2))
(and (= x c4o20) (= y c4o6))
(and (= x c4o20) (= y c4o10))
(and (= x c4o20) (= y c4o31))
(and (= x c4o20) (= y c4o35))
(and (= x c4o21) (= y c4o1))
(and (= x c4o21) (= y c4o6))
(and (= x c4o21) (= y c4o10))
(and (= x c4o22) (= y c4o1))
(and (= x c4o22) (= y c4o2))
(and (= x c4o22) (= y c4o6))
(and (= x c4o22) (= y c4o7))
(and (= x c4o22) (= y c4o8))
(and (= x c4o22) (= y c4o9))
(and (= x c4o22) (= y c4o10))
(and (= x c4o22) (= y c4o11))
(and (= x c4o22) (= y c4o12))
(and (= x c4o22) (= y c4o13))
(and (= x c4o22) (= y c4o15))
(and (= x c4o22) (= y c4o18))
(and (= x c4o22) (= y c4o23))
(and (= x c4o22) (= y c4o30))
(and (= x c4o22) (= y c4o31))
(and (= x c4o22) (= y c4o35))
(and (= x c4o23) (= y c4o1))
(and (= x c4o23) (= y c4o6))
(and (= x c4o23) (= y c4o10))
(and (= x c4o24) (= y c4o1))
(and (= x c4o24) (= y c4o2))
(and (= x c4o24) (= y c4o6))
(and (= x c4o24) (= y c4o10))
(and (= x c4o25) (= y c4o1))
(and (= x c4o25) (= y c4o2))
(and (= x c4o25) (= y c4o6))
(and (= x c4o25) (= y c4o10))
(and (= x c4o25) (= y c4o31))
(and (= x c4o25) (= y c4o35))
(and (= x c4o26) (= y c4o1))
(and (= x c4o26) (= y c4o2))
(and (= x c4o26) (= y c4o6))
(and (= x c4o26) (= y c4o7))
(and (= x c4o26) (= y c4o8))
(and (= x c4o26) (= y c4o9))
(and (= x c4o26) (= y c4o10))
(and (= x c4o26) (= y c4o11))
(and (= x c4o26) (= y c4o12))
(and (= x c4o26) (= y c4o13))
(and (= x c4o26) (= y c4o15))
(and (= x c4o26) (= y c4o18))
(and (= x c4o26) (= y c4o19))
(and (= x c4o26) (= y c4o23))
(and (= x c4o26) (= y c4o30))
(and (= x c4o26) (= y c4o31))
(and (= x c4o26) (= y c4o35))
(and (= x c4o27) (= y c4o1))
(and (= x c4o27) (= y c4o2))
(and (= x c4o27) (= y c4o6))
(and (= x c4o27) (= y c4o7))
(and (= x c4o27) (= y c4o10))
(and (= x c4o27) (= y c4o15))
(and (= x c4o27) (= y c4o31))
(and (= x c4o27) (= y c4o35))
(and (= x c4o28) (= y c4o1))
(and (= x c4o28) (= y c4o2))
(and (= x c4o28) (= y c4o6))
(and (= x c4o28) (= y c4o7))
(and (= x c4o28) (= y c4o8))
(and (= x c4o28) (= y c4o9))
(and (= x c4o28) (= y c4o10))
(and (= x c4o28) (= y c4o11))
(and (= x c4o28) (= y c4o12))
(and (= x c4o28) (= y c4o13))
(and (= x c4o28) (= y c4o15))
(and (= x c4o28) (= y c4o18))
(and (= x c4o28) (= y c4o30))
(and (= x c4o28) (= y c4o31))
(and (= x c4o28) (= y c4o35))
(and (= x c4o29) (= y c4o1))
(and (= x c4o29) (= y c4o2))
(and (= x c4o29) (= y c4o6))
(and (= x c4o29) (= y c4o7))
(and (= x c4o29) (= y c4o10))
(and (= x c4o29) (= y c4o15))
(and (= x c4o29) (= y c4o31))
(and (= x c4o29) (= y c4o35))
(and (= x c4o30) (= y c4o1))
(and (= x c4o32) (= y c4o1))
(and (= x c4o32) (= y c4o2))
(and (= x c4o32) (= y c4o6))
(and (= x c4o32) (= y c4o10))
(and (= x c4o33) (= y c4o1))
(and (= x c4o33) (= y c4o2))
(and (= x c4o33) (= y c4o6))
(and (= x c4o33) (= y c4o7))
(and (= x c4o33) (= y c4o8))
(and (= x c4o33) (= y c4o9))
(and (= x c4o33) (= y c4o10))
(and (= x c4o33) (= y c4o11))
(and (= x c4o33) (= y c4o12))
(and (= x c4o33) (= y c4o13))
(and (= x c4o33) (= y c4o15))
(and (= x c4o33) (= y c4o18))
(and (= x c4o33) (= y c4o19))
(and (= x c4o33) (= y c4o23))
(and (= x c4o33) (= y c4o30))
(and (= x c4o33) (= y c4o31))
(and (= x c4o33) (= y c4o35))
(and (= x c4o34) (= y c4o1))
(and (= x c4o34) (= y c4o2))
(and (= x c4o34) (= y c4o6))
(and (= x c4o34) (= y c4o7))
(and (= x c4o34) (= y c4o10))
(and (= x c4o34) (= y c4o12))
(and (= x c4o34) (= y c4o15))
(and (= x c4o34) (= y c4o31))
(and (= x c4o34) (= y c4o35))
(and (= x c4o36) (= y c4o1))
(and (= x c4o36) (= y c4o2))
(and (= x c4o36) (= y c4o6))
(and (= x c4o36) (= y c4o7))
(and (= x c4o36) (= y c4o8))
(and (= x c4o36) (= y c4o9))
(and (= x c4o36) (= y c4o10))
(and (= x c4o36) (= y c4o11))
(and (= x c4o36) (= y c4o12))
(and (= x c4o36) (= y c4o13))
(and (= x c4o36) (= y c4o15))
(and (= x c4o36) (= y c4o18))
(and (= x c4o36) (= y c4o23))
(and (= x c4o36) (= y c4o30))
(and (= x c4o36) (= y c4o31))
(and (= x c4o36) (= y c4o35))

))

(define-fun below ((x (_ BitVec 7))(y (_ BitVec 7))) Bool
(or
(and (= x c1o1) (= y c1o9))
(and (= x c4o1) (= y c4o2))
(and (= x c4o1) (= y c4o3))
(and (= x c4o1) (= y c4o4))
(and (= x c4o1) (= y c4o9))
(and (= x c4o1) (= y c4o11))
(and (= x c4o1) (= y c4o13))
(and (= x c4o1) (= y c4o14))
(and (= x c4o1) (= y c4o15))
(and (= x c4o1) (= y c4o16))
(and (= x c4o1) (= y c4o17))
(and (= x c4o1) (= y c4o18))
(and (= x c4o1) (= y c4o19))
(and (= x c4o1) (= y c4o20))
(and (= x c4o1) (= y c4o21))
(and (= x c4o1) (= y c4o22))
(and (= x c4o1) (= y c4o23))
(and (= x c4o1) (= y c4o24))
(and (= x c4o1) (= y c4o25))
(and (= x c4o1) (= y c4o26))
(and (= x c4o1) (= y c4o27))
(and (= x c4o1) (= y c4o28))
(and (= x c4o1) (= y c4o29))
(and (= x c4o1) (= y c4o30))
(and (= x c4o1) (= y c4o32))
(and (= x c4o1) (= y c4o33))
(and (= x c4o1) (= y c4o34))
(and (= x c4o1) (= y c4o36))
(and (= x c4o2) (= y c4o3))
(and (= x c4o2) (= y c4o4))
(and (= x c4o2) (= y c4o17))
(and (= x c4o2) (= y c4o20))
(and (= x c4o2) (= y c4o22))
(and (= x c4o2) (= y c4o24))
(and (= x c4o2) (= y c4o25))
(and (= x c4o2) (= y c4o26))
(and (= x c4o2) (= y c4o27))
(and (= x c4o2) (= y c4o28))
(and (= x c4o2) (= y c4o29))
(and (= x c4o2) (= y c4o32))
(and (= x c4o2) (= y c4o33))
(and (= x c4o2) (= y c4o34))
(and (= x c4o2) (= y c4o36))
(and (= x c4o5) (= y c4o3))
(and (= x c4o6) (= y c4o3))
(and (= x c4o6) (= y c4o4))
(and (= x c4o6) (= y c4o16))
(and (= x c4o6) (= y c4o17))
(and (= x c4o6) (= y c4o19))
(and (= x c4o6) (= y c4o20))
(and (= x c4o6) (= y c4o21))
(and (= x c4o6) (= y c4o22))
(and (= x c4o6) (= y c4o23))
(and (= x c4o6) (= y c4o24))
(and (= x c4o6) (= y c4o25))
(and (= x c4o6) (= y c4o26))
(and (= x c4o6) (= y c4o27))
(and (= x c4o6) (= y c4o28))
(and (= x c4o6) (= y c4o29))
(and (= x c4o6) (= y c4o32))
(and (= x c4o6) (= y c4o33))
(and (= x c4o6) (= y c4o34))
(and (= x c4o6) (= y c4o36))
(and (= x c4o7) (= y c4o3))
(and (= x c4o7) (= y c4o4))
(and (= x c4o7) (= y c4o17))
(and (= x c4o7) (= y c4o22))
(and (= x c4o7) (= y c4o26))
(and (= x c4o7) (= y c4o27))
(and (= x c4o7) (= y c4o28))
(and (= x c4o7) (= y c4o29))
(and (= x c4o7) (= y c4o33))
(and (= x c4o7) (= y c4o34))
(and (= x c4o7) (= y c4o36))
(and (= x c4o8) (= y c4o3))
(and (= x c4o8) (= y c4o4))
(and (= x c4o8) (= y c4o22))
(and (= x c4o8) (= y c4o26))
(and (= x c4o8) (= y c4o28))
(and (= x c4o8) (= y c4o33))
(and (= x c4o8) (= y c4o36))
(and (= x c4o9) (= y c4o3))
(and (= x c4o9) (= y c4o4))
(and (= x c4o9) (= y c4o22))
(and (= x c4o9) (= y c4o26))
(and (= x c4o9) (= y c4o28))
(and (= x c4o9) (= y c4o33))
(and (= x c4o9) (= y c4o36))
(and (= x c4o10) (= y c4o3))
(and (= x c4o10) (= y c4o4))
(and (= x c4o10) (= y c4o16))
(and (= x c4o10) (= y c4o17))
(and (= x c4o10) (= y c4o19))
(and (= x c4o10) (= y c4o20))
(and (= x c4o10) (= y c4o21))
(and (= x c4o10) (= y c4o22))
(and (= x c4o10) (= y c4o23))
(and (= x c4o10) (= y c4o24))
(and (= x c4o10) (= y c4o25))
(and (= x c4o10) (= y c4o26))
(and (= x c4o10) (= y c4o27))
(and (= x c4o10) (= y c4o28))
(and (= x c4o10) (= y c4o29))
(and (= x c4o10) (= y c4o32))
(and (= x c4o10) (= y c4o33))
(and (= x c4o10) (= y c4o34))
(and (= x c4o10) (= y c4o36))
(and (= x c4o11) (= y c4o3))
(and (= x c4o11) (= y c4o4))
(and (= x c4o11) (= y c4o22))
(and (= x c4o11) (= y c4o26))
(and (= x c4o11) (= y c4o28))
(and (= x c4o11) (= y c4o33))
(and (= x c4o11) (= y c4o36))
(and (= x c4o12) (= y c4o3))
(and (= x c4o12) (= y c4o4))
(and (= x c4o12) (= y c4o22))
(and (= x c4o12) (= y c4o26))
(and (= x c4o12) (= y c4o28))
(and (= x c4o12) (= y c4o33))
(and (= x c4o12) (= y c4o34))
(and (= x c4o12) (= y c4o36))
(and (= x c4o13) (= y c4o3))
(and (= x c4o13) (= y c4o4))
(and (= x c4o13) (= y c4o22))
(and (= x c4o13) (= y c4o26))
(and (= x c4o13) (= y c4o28))
(and (= x c4o13) (= y c4o33))
(and (= x c4o13) (= y c4o36))
(and (= x c4o14) (= y c4o3))
(and (= x c4o15) (= y c4o3))
(and (= x c4o15) (= y c4o4))
(and (= x c4o15) (= y c4o17))
(and (= x c4o15) (= y c4o22))
(and (= x c4o15) (= y c4o26))
(and (= x c4o15) (= y c4o27))
(and (= x c4o15) (= y c4o28))
(and (= x c4o15) (= y c4o29))
(and (= x c4o15) (= y c4o33))
(and (= x c4o15) (= y c4o34))
(and (= x c4o15) (= y c4o36))
(and (= x c4o16) (= y c4o3))
(and (= x c4o16) (= y c4o4))
(and (= x c4o17) (= y c4o3))
(and (= x c4o18) (= y c4o3))
(and (= x c4o18) (= y c4o4))
(and (= x c4o18) (= y c4o22))
(and (= x c4o18) (= y c4o26))
(and (= x c4o18) (= y c4o28))
(and (= x c4o18) (= y c4o33))
(and (= x c4o18) (= y c4o36))
(and (= x c4o19) (= y c4o3))
(and (= x c4o19) (= y c4o4))
(and (= x c4o19) (= y c4o26))
(and (= x c4o19) (= y c4o33))
(and (= x c4o21) (= y c4o3))
(and (= x c4o21) (= y c4o4))
(and (= x c4o23) (= y c4o3))
(and (= x c4o23) (= y c4o4))
(and (= x c4o23) (= y c4o22))
(and (= x c4o23) (= y c4o26))
(and (= x c4o23) (= y c4o33))
(and (= x c4o23) (= y c4o36))
(and (= x c4o24) (= y c4o3))
(and (= x c4o25) (= y c4o3))
(and (= x c4o25) (= y c4o4))
(and (= x c4o27) (= y c4o3))
(and (= x c4o29) (= y c4o3))
(and (= x c4o30) (= y c4o3))
(and (= x c4o30) (= y c4o4))
(and (= x c4o30) (= y c4o22))
(and (= x c4o30) (= y c4o26))
(and (= x c4o30) (= y c4o28))
(and (= x c4o30) (= y c4o33))
(and (= x c4o30) (= y c4o36))
(and (= x c4o31) (= y c4o3))
(and (= x c4o31) (= y c4o4))
(and (= x c4o31) (= y c4o17))
(and (= x c4o31) (= y c4o20))
(and (= x c4o31) (= y c4o22))
(and (= x c4o31) (= y c4o25))
(and (= x c4o31) (= y c4o26))
(and (= x c4o31) (= y c4o27))
(and (= x c4o31) (= y c4o28))
(and (= x c4o31) (= y c4o29))
(and (= x c4o31) (= y c4o33))
(and (= x c4o31) (= y c4o34))
(and (= x c4o31) (= y c4o36))
(and (= x c4o34) (= y c4o3))
(and (= x c4o34) (= y c4o4))
(and (= x c4o35) (= y c4o3))
(and (= x c4o35) (= y c4o4))
(and (= x c4o35) (= y c4o17))
(and (= x c4o35) (= y c4o20))
(and (= x c4o35) (= y c4o22))
(and (= x c4o35) (= y c4o25))
(and (= x c4o35) (= y c4o26))
(and (= x c4o35) (= y c4o27))
(and (= x c4o35) (= y c4o28))
(and (= x c4o35) (= y c4o29))
(and (= x c4o35) (= y c4o33))
(and (= x c4o35) (= y c4o34))
(and (= x c4o35) (= y c4o36))

))

(define-fun within ((x (_ BitVec 7))(y (_ BitVec 7))) Bool
(or
(and (= x t1o1) (= y t1o2))
(and (= x t2o1) (= y t2o2))
(and (= x t3o1) (= y t3o4))
(and (= x c1o2) (= y c1o10))
(and (= x c1o3) (= y c1o4))
(and (= x c1o3) (= y c1o10))
(and (= x c1o9) (= y c1o10))
(and (= x c2o1) (= y c2o2))
(and (= x c4o1) (= y c4o5))
(and (= x c4o2) (= y c4o5))
(and (= x c4o2) (= y c4o8))
(and (= x c4o8) (= y c4o5))
(and (= x c4o9) (= y c4o5))
(and (= x c4o16) (= y c4o5))
(and (= x c4o21) (= y c4o5))
(and (= x c4o27) (= y c4o5))
(and (= x c4o34) (= y c4o5))

))



(define-fun eq ((x1 (_ BitVec 7))(x2 (_ BitVec 7))) Bool (= x1 x2))
(define-fun neq ((x1 (_ BitVec 7))(x2 (_ BitVec 7))) Bool (not (= x1 x2)))


(declare-const q1 Bool)
(declare-const q2 Bool)

(declare-const lbl_g1 (_ BitVec 2))
(assert (or
(= lbl_g1 tie)
(= lbl_g1 dog)
(= lbl_g1 handbag)
(= lbl_g1 person)
)
)
(define-fun g1 ((x (_ BitVec 7))) Bool
(labelOf x lbl_g1)
)

(declare-const lbl_g2 (_ BitVec 2))
(assert (or
(= lbl_g2 tie)
(= lbl_g2 dog)
(= lbl_g2 handbag)
(= lbl_g2 person)
)
)
(define-fun g2 ((x (_ BitVec 7))) Bool
(labelOf x lbl_g2)
)


(declare-const constval_tie (_ BitVec 2))
(assert (= constval_tie tie))
(declare-const constval_dog (_ BitVec 2))
(assert (= constval_dog dog))
(declare-const constval_handbag (_ BitVec 2))
(assert (= constval_handbag handbag))
(declare-const constval_person (_ BitVec 2))
(assert (= constval_person person))

(declare-const eq_x1_x1 Bool)
(declare-const eq_x1_x2 Bool)
(declare-const eq_x2_x1 Bool)
(declare-const eq_x2_x2 Bool)
(declare-const neq_x1_x1 Bool)
(declare-const neq_x1_x2 Bool)
(declare-const neq_x2_x1 Bool)
(declare-const neq_x2_x2 Bool)
(declare-const labelOf_x1_tie Bool)
(declare-const labelOf_x1_dog Bool)
(declare-const labelOf_x1_handbag Bool)
(declare-const labelOf_x1_person Bool)
(declare-const labelOf_x2_tie Bool)
(declare-const labelOf_x2_dog Bool)
(declare-const labelOf_x2_handbag Bool)
(declare-const labelOf_x2_person Bool)
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

(define-fun f ((x1 (_ BitVec 7)) (x2 (_ BitVec 7))) Bool
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
labelOf_x1_tie
(labelOf x1 tie)
)
(=>
labelOf_x1_dog
(labelOf x1 dog)
)
(=>
labelOf_x1_handbag
(labelOf x1 handbag)
)
(=>
labelOf_x1_person
(labelOf x1 person)
)
(=>
labelOf_x2_tie
(labelOf x2 tie)
)
(=>
labelOf_x2_dog
(labelOf x2 dog)
)
(=>
labelOf_x2_handbag
(labelOf x2 handbag)
)
(=>
labelOf_x2_person
(labelOf x2 person)
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
(declare-const c4 Bool)


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
(g1 c4o10)
(g1 c4o11)
(g1 c4o12)
(g1 c4o13)
(g1 c4o14)
(g1 c4o15)
(g1 c4o16)
(g1 c4o17)
(g1 c4o18)
(g1 c4o19)
(g1 c4o20)
(g1 c4o21)
(g1 c4o22)
(g1 c4o23)
(g1 c4o24)
(g1 c4o25)
(g1 c4o26)
(g1 c4o27)
(g1 c4o28)
(g1 c4o29)
(g1 c4o30)
(g1 c4o31)
(g1 c4o32)
(g1 c4o33)
(g1 c4o34)
(g1 c4o35)
(g1 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o1 c4o10)
)
(=>
(g2 c4o11)
(f c4o1 c4o11)
)
(=>
(g2 c4o12)
(f c4o1 c4o12)
)
(=>
(g2 c4o13)
(f c4o1 c4o13)
)
(=>
(g2 c4o14)
(f c4o1 c4o14)
)
(=>
(g2 c4o15)
(f c4o1 c4o15)
)
(=>
(g2 c4o16)
(f c4o1 c4o16)
)
(=>
(g2 c4o17)
(f c4o1 c4o17)
)
(=>
(g2 c4o18)
(f c4o1 c4o18)
)
(=>
(g2 c4o19)
(f c4o1 c4o19)
)
(=>
(g2 c4o20)
(f c4o1 c4o20)
)
(=>
(g2 c4o21)
(f c4o1 c4o21)
)
(=>
(g2 c4o22)
(f c4o1 c4o22)
)
(=>
(g2 c4o23)
(f c4o1 c4o23)
)
(=>
(g2 c4o24)
(f c4o1 c4o24)
)
(=>
(g2 c4o25)
(f c4o1 c4o25)
)
(=>
(g2 c4o26)
(f c4o1 c4o26)
)
(=>
(g2 c4o27)
(f c4o1 c4o27)
)
(=>
(g2 c4o28)
(f c4o1 c4o28)
)
(=>
(g2 c4o29)
(f c4o1 c4o29)
)
(=>
(g2 c4o30)
(f c4o1 c4o30)
)
(=>
(g2 c4o31)
(f c4o1 c4o31)
)
(=>
(g2 c4o32)
(f c4o1 c4o32)
)
(=>
(g2 c4o33)
(f c4o1 c4o33)
)
(=>
(g2 c4o34)
(f c4o1 c4o34)
)
(=>
(g2 c4o35)
(f c4o1 c4o35)
)
(=>
(g2 c4o36)
(f c4o1 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o2 c4o10)
)
(=>
(g2 c4o11)
(f c4o2 c4o11)
)
(=>
(g2 c4o12)
(f c4o2 c4o12)
)
(=>
(g2 c4o13)
(f c4o2 c4o13)
)
(=>
(g2 c4o14)
(f c4o2 c4o14)
)
(=>
(g2 c4o15)
(f c4o2 c4o15)
)
(=>
(g2 c4o16)
(f c4o2 c4o16)
)
(=>
(g2 c4o17)
(f c4o2 c4o17)
)
(=>
(g2 c4o18)
(f c4o2 c4o18)
)
(=>
(g2 c4o19)
(f c4o2 c4o19)
)
(=>
(g2 c4o20)
(f c4o2 c4o20)
)
(=>
(g2 c4o21)
(f c4o2 c4o21)
)
(=>
(g2 c4o22)
(f c4o2 c4o22)
)
(=>
(g2 c4o23)
(f c4o2 c4o23)
)
(=>
(g2 c4o24)
(f c4o2 c4o24)
)
(=>
(g2 c4o25)
(f c4o2 c4o25)
)
(=>
(g2 c4o26)
(f c4o2 c4o26)
)
(=>
(g2 c4o27)
(f c4o2 c4o27)
)
(=>
(g2 c4o28)
(f c4o2 c4o28)
)
(=>
(g2 c4o29)
(f c4o2 c4o29)
)
(=>
(g2 c4o30)
(f c4o2 c4o30)
)
(=>
(g2 c4o31)
(f c4o2 c4o31)
)
(=>
(g2 c4o32)
(f c4o2 c4o32)
)
(=>
(g2 c4o33)
(f c4o2 c4o33)
)
(=>
(g2 c4o34)
(f c4o2 c4o34)
)
(=>
(g2 c4o35)
(f c4o2 c4o35)
)
(=>
(g2 c4o36)
(f c4o2 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o3 c4o10)
)
(=>
(g2 c4o11)
(f c4o3 c4o11)
)
(=>
(g2 c4o12)
(f c4o3 c4o12)
)
(=>
(g2 c4o13)
(f c4o3 c4o13)
)
(=>
(g2 c4o14)
(f c4o3 c4o14)
)
(=>
(g2 c4o15)
(f c4o3 c4o15)
)
(=>
(g2 c4o16)
(f c4o3 c4o16)
)
(=>
(g2 c4o17)
(f c4o3 c4o17)
)
(=>
(g2 c4o18)
(f c4o3 c4o18)
)
(=>
(g2 c4o19)
(f c4o3 c4o19)
)
(=>
(g2 c4o20)
(f c4o3 c4o20)
)
(=>
(g2 c4o21)
(f c4o3 c4o21)
)
(=>
(g2 c4o22)
(f c4o3 c4o22)
)
(=>
(g2 c4o23)
(f c4o3 c4o23)
)
(=>
(g2 c4o24)
(f c4o3 c4o24)
)
(=>
(g2 c4o25)
(f c4o3 c4o25)
)
(=>
(g2 c4o26)
(f c4o3 c4o26)
)
(=>
(g2 c4o27)
(f c4o3 c4o27)
)
(=>
(g2 c4o28)
(f c4o3 c4o28)
)
(=>
(g2 c4o29)
(f c4o3 c4o29)
)
(=>
(g2 c4o30)
(f c4o3 c4o30)
)
(=>
(g2 c4o31)
(f c4o3 c4o31)
)
(=>
(g2 c4o32)
(f c4o3 c4o32)
)
(=>
(g2 c4o33)
(f c4o3 c4o33)
)
(=>
(g2 c4o34)
(f c4o3 c4o34)
)
(=>
(g2 c4o35)
(f c4o3 c4o35)
)
(=>
(g2 c4o36)
(f c4o3 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o4 c4o10)
)
(=>
(g2 c4o11)
(f c4o4 c4o11)
)
(=>
(g2 c4o12)
(f c4o4 c4o12)
)
(=>
(g2 c4o13)
(f c4o4 c4o13)
)
(=>
(g2 c4o14)
(f c4o4 c4o14)
)
(=>
(g2 c4o15)
(f c4o4 c4o15)
)
(=>
(g2 c4o16)
(f c4o4 c4o16)
)
(=>
(g2 c4o17)
(f c4o4 c4o17)
)
(=>
(g2 c4o18)
(f c4o4 c4o18)
)
(=>
(g2 c4o19)
(f c4o4 c4o19)
)
(=>
(g2 c4o20)
(f c4o4 c4o20)
)
(=>
(g2 c4o21)
(f c4o4 c4o21)
)
(=>
(g2 c4o22)
(f c4o4 c4o22)
)
(=>
(g2 c4o23)
(f c4o4 c4o23)
)
(=>
(g2 c4o24)
(f c4o4 c4o24)
)
(=>
(g2 c4o25)
(f c4o4 c4o25)
)
(=>
(g2 c4o26)
(f c4o4 c4o26)
)
(=>
(g2 c4o27)
(f c4o4 c4o27)
)
(=>
(g2 c4o28)
(f c4o4 c4o28)
)
(=>
(g2 c4o29)
(f c4o4 c4o29)
)
(=>
(g2 c4o30)
(f c4o4 c4o30)
)
(=>
(g2 c4o31)
(f c4o4 c4o31)
)
(=>
(g2 c4o32)
(f c4o4 c4o32)
)
(=>
(g2 c4o33)
(f c4o4 c4o33)
)
(=>
(g2 c4o34)
(f c4o4 c4o34)
)
(=>
(g2 c4o35)
(f c4o4 c4o35)
)
(=>
(g2 c4o36)
(f c4o4 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o5 c4o10)
)
(=>
(g2 c4o11)
(f c4o5 c4o11)
)
(=>
(g2 c4o12)
(f c4o5 c4o12)
)
(=>
(g2 c4o13)
(f c4o5 c4o13)
)
(=>
(g2 c4o14)
(f c4o5 c4o14)
)
(=>
(g2 c4o15)
(f c4o5 c4o15)
)
(=>
(g2 c4o16)
(f c4o5 c4o16)
)
(=>
(g2 c4o17)
(f c4o5 c4o17)
)
(=>
(g2 c4o18)
(f c4o5 c4o18)
)
(=>
(g2 c4o19)
(f c4o5 c4o19)
)
(=>
(g2 c4o20)
(f c4o5 c4o20)
)
(=>
(g2 c4o21)
(f c4o5 c4o21)
)
(=>
(g2 c4o22)
(f c4o5 c4o22)
)
(=>
(g2 c4o23)
(f c4o5 c4o23)
)
(=>
(g2 c4o24)
(f c4o5 c4o24)
)
(=>
(g2 c4o25)
(f c4o5 c4o25)
)
(=>
(g2 c4o26)
(f c4o5 c4o26)
)
(=>
(g2 c4o27)
(f c4o5 c4o27)
)
(=>
(g2 c4o28)
(f c4o5 c4o28)
)
(=>
(g2 c4o29)
(f c4o5 c4o29)
)
(=>
(g2 c4o30)
(f c4o5 c4o30)
)
(=>
(g2 c4o31)
(f c4o5 c4o31)
)
(=>
(g2 c4o32)
(f c4o5 c4o32)
)
(=>
(g2 c4o33)
(f c4o5 c4o33)
)
(=>
(g2 c4o34)
(f c4o5 c4o34)
)
(=>
(g2 c4o35)
(f c4o5 c4o35)
)
(=>
(g2 c4o36)
(f c4o5 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o6 c4o10)
)
(=>
(g2 c4o11)
(f c4o6 c4o11)
)
(=>
(g2 c4o12)
(f c4o6 c4o12)
)
(=>
(g2 c4o13)
(f c4o6 c4o13)
)
(=>
(g2 c4o14)
(f c4o6 c4o14)
)
(=>
(g2 c4o15)
(f c4o6 c4o15)
)
(=>
(g2 c4o16)
(f c4o6 c4o16)
)
(=>
(g2 c4o17)
(f c4o6 c4o17)
)
(=>
(g2 c4o18)
(f c4o6 c4o18)
)
(=>
(g2 c4o19)
(f c4o6 c4o19)
)
(=>
(g2 c4o20)
(f c4o6 c4o20)
)
(=>
(g2 c4o21)
(f c4o6 c4o21)
)
(=>
(g2 c4o22)
(f c4o6 c4o22)
)
(=>
(g2 c4o23)
(f c4o6 c4o23)
)
(=>
(g2 c4o24)
(f c4o6 c4o24)
)
(=>
(g2 c4o25)
(f c4o6 c4o25)
)
(=>
(g2 c4o26)
(f c4o6 c4o26)
)
(=>
(g2 c4o27)
(f c4o6 c4o27)
)
(=>
(g2 c4o28)
(f c4o6 c4o28)
)
(=>
(g2 c4o29)
(f c4o6 c4o29)
)
(=>
(g2 c4o30)
(f c4o6 c4o30)
)
(=>
(g2 c4o31)
(f c4o6 c4o31)
)
(=>
(g2 c4o32)
(f c4o6 c4o32)
)
(=>
(g2 c4o33)
(f c4o6 c4o33)
)
(=>
(g2 c4o34)
(f c4o6 c4o34)
)
(=>
(g2 c4o35)
(f c4o6 c4o35)
)
(=>
(g2 c4o36)
(f c4o6 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o7 c4o10)
)
(=>
(g2 c4o11)
(f c4o7 c4o11)
)
(=>
(g2 c4o12)
(f c4o7 c4o12)
)
(=>
(g2 c4o13)
(f c4o7 c4o13)
)
(=>
(g2 c4o14)
(f c4o7 c4o14)
)
(=>
(g2 c4o15)
(f c4o7 c4o15)
)
(=>
(g2 c4o16)
(f c4o7 c4o16)
)
(=>
(g2 c4o17)
(f c4o7 c4o17)
)
(=>
(g2 c4o18)
(f c4o7 c4o18)
)
(=>
(g2 c4o19)
(f c4o7 c4o19)
)
(=>
(g2 c4o20)
(f c4o7 c4o20)
)
(=>
(g2 c4o21)
(f c4o7 c4o21)
)
(=>
(g2 c4o22)
(f c4o7 c4o22)
)
(=>
(g2 c4o23)
(f c4o7 c4o23)
)
(=>
(g2 c4o24)
(f c4o7 c4o24)
)
(=>
(g2 c4o25)
(f c4o7 c4o25)
)
(=>
(g2 c4o26)
(f c4o7 c4o26)
)
(=>
(g2 c4o27)
(f c4o7 c4o27)
)
(=>
(g2 c4o28)
(f c4o7 c4o28)
)
(=>
(g2 c4o29)
(f c4o7 c4o29)
)
(=>
(g2 c4o30)
(f c4o7 c4o30)
)
(=>
(g2 c4o31)
(f c4o7 c4o31)
)
(=>
(g2 c4o32)
(f c4o7 c4o32)
)
(=>
(g2 c4o33)
(f c4o7 c4o33)
)
(=>
(g2 c4o34)
(f c4o7 c4o34)
)
(=>
(g2 c4o35)
(f c4o7 c4o35)
)
(=>
(g2 c4o36)
(f c4o7 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o8 c4o10)
)
(=>
(g2 c4o11)
(f c4o8 c4o11)
)
(=>
(g2 c4o12)
(f c4o8 c4o12)
)
(=>
(g2 c4o13)
(f c4o8 c4o13)
)
(=>
(g2 c4o14)
(f c4o8 c4o14)
)
(=>
(g2 c4o15)
(f c4o8 c4o15)
)
(=>
(g2 c4o16)
(f c4o8 c4o16)
)
(=>
(g2 c4o17)
(f c4o8 c4o17)
)
(=>
(g2 c4o18)
(f c4o8 c4o18)
)
(=>
(g2 c4o19)
(f c4o8 c4o19)
)
(=>
(g2 c4o20)
(f c4o8 c4o20)
)
(=>
(g2 c4o21)
(f c4o8 c4o21)
)
(=>
(g2 c4o22)
(f c4o8 c4o22)
)
(=>
(g2 c4o23)
(f c4o8 c4o23)
)
(=>
(g2 c4o24)
(f c4o8 c4o24)
)
(=>
(g2 c4o25)
(f c4o8 c4o25)
)
(=>
(g2 c4o26)
(f c4o8 c4o26)
)
(=>
(g2 c4o27)
(f c4o8 c4o27)
)
(=>
(g2 c4o28)
(f c4o8 c4o28)
)
(=>
(g2 c4o29)
(f c4o8 c4o29)
)
(=>
(g2 c4o30)
(f c4o8 c4o30)
)
(=>
(g2 c4o31)
(f c4o8 c4o31)
)
(=>
(g2 c4o32)
(f c4o8 c4o32)
)
(=>
(g2 c4o33)
(f c4o8 c4o33)
)
(=>
(g2 c4o34)
(f c4o8 c4o34)
)
(=>
(g2 c4o35)
(f c4o8 c4o35)
)
(=>
(g2 c4o36)
(f c4o8 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o9 c4o10)
)
(=>
(g2 c4o11)
(f c4o9 c4o11)
)
(=>
(g2 c4o12)
(f c4o9 c4o12)
)
(=>
(g2 c4o13)
(f c4o9 c4o13)
)
(=>
(g2 c4o14)
(f c4o9 c4o14)
)
(=>
(g2 c4o15)
(f c4o9 c4o15)
)
(=>
(g2 c4o16)
(f c4o9 c4o16)
)
(=>
(g2 c4o17)
(f c4o9 c4o17)
)
(=>
(g2 c4o18)
(f c4o9 c4o18)
)
(=>
(g2 c4o19)
(f c4o9 c4o19)
)
(=>
(g2 c4o20)
(f c4o9 c4o20)
)
(=>
(g2 c4o21)
(f c4o9 c4o21)
)
(=>
(g2 c4o22)
(f c4o9 c4o22)
)
(=>
(g2 c4o23)
(f c4o9 c4o23)
)
(=>
(g2 c4o24)
(f c4o9 c4o24)
)
(=>
(g2 c4o25)
(f c4o9 c4o25)
)
(=>
(g2 c4o26)
(f c4o9 c4o26)
)
(=>
(g2 c4o27)
(f c4o9 c4o27)
)
(=>
(g2 c4o28)
(f c4o9 c4o28)
)
(=>
(g2 c4o29)
(f c4o9 c4o29)
)
(=>
(g2 c4o30)
(f c4o9 c4o30)
)
(=>
(g2 c4o31)
(f c4o9 c4o31)
)
(=>
(g2 c4o32)
(f c4o9 c4o32)
)
(=>
(g2 c4o33)
(f c4o9 c4o33)
)
(=>
(g2 c4o34)
(f c4o9 c4o34)
)
(=>
(g2 c4o35)
(f c4o9 c4o35)
)
(=>
(g2 c4o36)
(f c4o9 c4o36)
)
)
)
)
(=>
(g1 c4o10)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o10 c4o1)
)
(=>
(g2 c4o2)
(f c4o10 c4o2)
)
(=>
(g2 c4o3)
(f c4o10 c4o3)
)
(=>
(g2 c4o4)
(f c4o10 c4o4)
)
(=>
(g2 c4o5)
(f c4o10 c4o5)
)
(=>
(g2 c4o6)
(f c4o10 c4o6)
)
(=>
(g2 c4o7)
(f c4o10 c4o7)
)
(=>
(g2 c4o8)
(f c4o10 c4o8)
)
(=>
(g2 c4o9)
(f c4o10 c4o9)
)
(=>
(g2 c4o10)
(f c4o10 c4o10)
)
(=>
(g2 c4o11)
(f c4o10 c4o11)
)
(=>
(g2 c4o12)
(f c4o10 c4o12)
)
(=>
(g2 c4o13)
(f c4o10 c4o13)
)
(=>
(g2 c4o14)
(f c4o10 c4o14)
)
(=>
(g2 c4o15)
(f c4o10 c4o15)
)
(=>
(g2 c4o16)
(f c4o10 c4o16)
)
(=>
(g2 c4o17)
(f c4o10 c4o17)
)
(=>
(g2 c4o18)
(f c4o10 c4o18)
)
(=>
(g2 c4o19)
(f c4o10 c4o19)
)
(=>
(g2 c4o20)
(f c4o10 c4o20)
)
(=>
(g2 c4o21)
(f c4o10 c4o21)
)
(=>
(g2 c4o22)
(f c4o10 c4o22)
)
(=>
(g2 c4o23)
(f c4o10 c4o23)
)
(=>
(g2 c4o24)
(f c4o10 c4o24)
)
(=>
(g2 c4o25)
(f c4o10 c4o25)
)
(=>
(g2 c4o26)
(f c4o10 c4o26)
)
(=>
(g2 c4o27)
(f c4o10 c4o27)
)
(=>
(g2 c4o28)
(f c4o10 c4o28)
)
(=>
(g2 c4o29)
(f c4o10 c4o29)
)
(=>
(g2 c4o30)
(f c4o10 c4o30)
)
(=>
(g2 c4o31)
(f c4o10 c4o31)
)
(=>
(g2 c4o32)
(f c4o10 c4o32)
)
(=>
(g2 c4o33)
(f c4o10 c4o33)
)
(=>
(g2 c4o34)
(f c4o10 c4o34)
)
(=>
(g2 c4o35)
(f c4o10 c4o35)
)
(=>
(g2 c4o36)
(f c4o10 c4o36)
)
)
)
)
(=>
(g1 c4o11)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o11 c4o1)
)
(=>
(g2 c4o2)
(f c4o11 c4o2)
)
(=>
(g2 c4o3)
(f c4o11 c4o3)
)
(=>
(g2 c4o4)
(f c4o11 c4o4)
)
(=>
(g2 c4o5)
(f c4o11 c4o5)
)
(=>
(g2 c4o6)
(f c4o11 c4o6)
)
(=>
(g2 c4o7)
(f c4o11 c4o7)
)
(=>
(g2 c4o8)
(f c4o11 c4o8)
)
(=>
(g2 c4o9)
(f c4o11 c4o9)
)
(=>
(g2 c4o10)
(f c4o11 c4o10)
)
(=>
(g2 c4o11)
(f c4o11 c4o11)
)
(=>
(g2 c4o12)
(f c4o11 c4o12)
)
(=>
(g2 c4o13)
(f c4o11 c4o13)
)
(=>
(g2 c4o14)
(f c4o11 c4o14)
)
(=>
(g2 c4o15)
(f c4o11 c4o15)
)
(=>
(g2 c4o16)
(f c4o11 c4o16)
)
(=>
(g2 c4o17)
(f c4o11 c4o17)
)
(=>
(g2 c4o18)
(f c4o11 c4o18)
)
(=>
(g2 c4o19)
(f c4o11 c4o19)
)
(=>
(g2 c4o20)
(f c4o11 c4o20)
)
(=>
(g2 c4o21)
(f c4o11 c4o21)
)
(=>
(g2 c4o22)
(f c4o11 c4o22)
)
(=>
(g2 c4o23)
(f c4o11 c4o23)
)
(=>
(g2 c4o24)
(f c4o11 c4o24)
)
(=>
(g2 c4o25)
(f c4o11 c4o25)
)
(=>
(g2 c4o26)
(f c4o11 c4o26)
)
(=>
(g2 c4o27)
(f c4o11 c4o27)
)
(=>
(g2 c4o28)
(f c4o11 c4o28)
)
(=>
(g2 c4o29)
(f c4o11 c4o29)
)
(=>
(g2 c4o30)
(f c4o11 c4o30)
)
(=>
(g2 c4o31)
(f c4o11 c4o31)
)
(=>
(g2 c4o32)
(f c4o11 c4o32)
)
(=>
(g2 c4o33)
(f c4o11 c4o33)
)
(=>
(g2 c4o34)
(f c4o11 c4o34)
)
(=>
(g2 c4o35)
(f c4o11 c4o35)
)
(=>
(g2 c4o36)
(f c4o11 c4o36)
)
)
)
)
(=>
(g1 c4o12)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o12 c4o1)
)
(=>
(g2 c4o2)
(f c4o12 c4o2)
)
(=>
(g2 c4o3)
(f c4o12 c4o3)
)
(=>
(g2 c4o4)
(f c4o12 c4o4)
)
(=>
(g2 c4o5)
(f c4o12 c4o5)
)
(=>
(g2 c4o6)
(f c4o12 c4o6)
)
(=>
(g2 c4o7)
(f c4o12 c4o7)
)
(=>
(g2 c4o8)
(f c4o12 c4o8)
)
(=>
(g2 c4o9)
(f c4o12 c4o9)
)
(=>
(g2 c4o10)
(f c4o12 c4o10)
)
(=>
(g2 c4o11)
(f c4o12 c4o11)
)
(=>
(g2 c4o12)
(f c4o12 c4o12)
)
(=>
(g2 c4o13)
(f c4o12 c4o13)
)
(=>
(g2 c4o14)
(f c4o12 c4o14)
)
(=>
(g2 c4o15)
(f c4o12 c4o15)
)
(=>
(g2 c4o16)
(f c4o12 c4o16)
)
(=>
(g2 c4o17)
(f c4o12 c4o17)
)
(=>
(g2 c4o18)
(f c4o12 c4o18)
)
(=>
(g2 c4o19)
(f c4o12 c4o19)
)
(=>
(g2 c4o20)
(f c4o12 c4o20)
)
(=>
(g2 c4o21)
(f c4o12 c4o21)
)
(=>
(g2 c4o22)
(f c4o12 c4o22)
)
(=>
(g2 c4o23)
(f c4o12 c4o23)
)
(=>
(g2 c4o24)
(f c4o12 c4o24)
)
(=>
(g2 c4o25)
(f c4o12 c4o25)
)
(=>
(g2 c4o26)
(f c4o12 c4o26)
)
(=>
(g2 c4o27)
(f c4o12 c4o27)
)
(=>
(g2 c4o28)
(f c4o12 c4o28)
)
(=>
(g2 c4o29)
(f c4o12 c4o29)
)
(=>
(g2 c4o30)
(f c4o12 c4o30)
)
(=>
(g2 c4o31)
(f c4o12 c4o31)
)
(=>
(g2 c4o32)
(f c4o12 c4o32)
)
(=>
(g2 c4o33)
(f c4o12 c4o33)
)
(=>
(g2 c4o34)
(f c4o12 c4o34)
)
(=>
(g2 c4o35)
(f c4o12 c4o35)
)
(=>
(g2 c4o36)
(f c4o12 c4o36)
)
)
)
)
(=>
(g1 c4o13)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o13 c4o1)
)
(=>
(g2 c4o2)
(f c4o13 c4o2)
)
(=>
(g2 c4o3)
(f c4o13 c4o3)
)
(=>
(g2 c4o4)
(f c4o13 c4o4)
)
(=>
(g2 c4o5)
(f c4o13 c4o5)
)
(=>
(g2 c4o6)
(f c4o13 c4o6)
)
(=>
(g2 c4o7)
(f c4o13 c4o7)
)
(=>
(g2 c4o8)
(f c4o13 c4o8)
)
(=>
(g2 c4o9)
(f c4o13 c4o9)
)
(=>
(g2 c4o10)
(f c4o13 c4o10)
)
(=>
(g2 c4o11)
(f c4o13 c4o11)
)
(=>
(g2 c4o12)
(f c4o13 c4o12)
)
(=>
(g2 c4o13)
(f c4o13 c4o13)
)
(=>
(g2 c4o14)
(f c4o13 c4o14)
)
(=>
(g2 c4o15)
(f c4o13 c4o15)
)
(=>
(g2 c4o16)
(f c4o13 c4o16)
)
(=>
(g2 c4o17)
(f c4o13 c4o17)
)
(=>
(g2 c4o18)
(f c4o13 c4o18)
)
(=>
(g2 c4o19)
(f c4o13 c4o19)
)
(=>
(g2 c4o20)
(f c4o13 c4o20)
)
(=>
(g2 c4o21)
(f c4o13 c4o21)
)
(=>
(g2 c4o22)
(f c4o13 c4o22)
)
(=>
(g2 c4o23)
(f c4o13 c4o23)
)
(=>
(g2 c4o24)
(f c4o13 c4o24)
)
(=>
(g2 c4o25)
(f c4o13 c4o25)
)
(=>
(g2 c4o26)
(f c4o13 c4o26)
)
(=>
(g2 c4o27)
(f c4o13 c4o27)
)
(=>
(g2 c4o28)
(f c4o13 c4o28)
)
(=>
(g2 c4o29)
(f c4o13 c4o29)
)
(=>
(g2 c4o30)
(f c4o13 c4o30)
)
(=>
(g2 c4o31)
(f c4o13 c4o31)
)
(=>
(g2 c4o32)
(f c4o13 c4o32)
)
(=>
(g2 c4o33)
(f c4o13 c4o33)
)
(=>
(g2 c4o34)
(f c4o13 c4o34)
)
(=>
(g2 c4o35)
(f c4o13 c4o35)
)
(=>
(g2 c4o36)
(f c4o13 c4o36)
)
)
)
)
(=>
(g1 c4o14)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o14 c4o1)
)
(=>
(g2 c4o2)
(f c4o14 c4o2)
)
(=>
(g2 c4o3)
(f c4o14 c4o3)
)
(=>
(g2 c4o4)
(f c4o14 c4o4)
)
(=>
(g2 c4o5)
(f c4o14 c4o5)
)
(=>
(g2 c4o6)
(f c4o14 c4o6)
)
(=>
(g2 c4o7)
(f c4o14 c4o7)
)
(=>
(g2 c4o8)
(f c4o14 c4o8)
)
(=>
(g2 c4o9)
(f c4o14 c4o9)
)
(=>
(g2 c4o10)
(f c4o14 c4o10)
)
(=>
(g2 c4o11)
(f c4o14 c4o11)
)
(=>
(g2 c4o12)
(f c4o14 c4o12)
)
(=>
(g2 c4o13)
(f c4o14 c4o13)
)
(=>
(g2 c4o14)
(f c4o14 c4o14)
)
(=>
(g2 c4o15)
(f c4o14 c4o15)
)
(=>
(g2 c4o16)
(f c4o14 c4o16)
)
(=>
(g2 c4o17)
(f c4o14 c4o17)
)
(=>
(g2 c4o18)
(f c4o14 c4o18)
)
(=>
(g2 c4o19)
(f c4o14 c4o19)
)
(=>
(g2 c4o20)
(f c4o14 c4o20)
)
(=>
(g2 c4o21)
(f c4o14 c4o21)
)
(=>
(g2 c4o22)
(f c4o14 c4o22)
)
(=>
(g2 c4o23)
(f c4o14 c4o23)
)
(=>
(g2 c4o24)
(f c4o14 c4o24)
)
(=>
(g2 c4o25)
(f c4o14 c4o25)
)
(=>
(g2 c4o26)
(f c4o14 c4o26)
)
(=>
(g2 c4o27)
(f c4o14 c4o27)
)
(=>
(g2 c4o28)
(f c4o14 c4o28)
)
(=>
(g2 c4o29)
(f c4o14 c4o29)
)
(=>
(g2 c4o30)
(f c4o14 c4o30)
)
(=>
(g2 c4o31)
(f c4o14 c4o31)
)
(=>
(g2 c4o32)
(f c4o14 c4o32)
)
(=>
(g2 c4o33)
(f c4o14 c4o33)
)
(=>
(g2 c4o34)
(f c4o14 c4o34)
)
(=>
(g2 c4o35)
(f c4o14 c4o35)
)
(=>
(g2 c4o36)
(f c4o14 c4o36)
)
)
)
)
(=>
(g1 c4o15)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o15 c4o1)
)
(=>
(g2 c4o2)
(f c4o15 c4o2)
)
(=>
(g2 c4o3)
(f c4o15 c4o3)
)
(=>
(g2 c4o4)
(f c4o15 c4o4)
)
(=>
(g2 c4o5)
(f c4o15 c4o5)
)
(=>
(g2 c4o6)
(f c4o15 c4o6)
)
(=>
(g2 c4o7)
(f c4o15 c4o7)
)
(=>
(g2 c4o8)
(f c4o15 c4o8)
)
(=>
(g2 c4o9)
(f c4o15 c4o9)
)
(=>
(g2 c4o10)
(f c4o15 c4o10)
)
(=>
(g2 c4o11)
(f c4o15 c4o11)
)
(=>
(g2 c4o12)
(f c4o15 c4o12)
)
(=>
(g2 c4o13)
(f c4o15 c4o13)
)
(=>
(g2 c4o14)
(f c4o15 c4o14)
)
(=>
(g2 c4o15)
(f c4o15 c4o15)
)
(=>
(g2 c4o16)
(f c4o15 c4o16)
)
(=>
(g2 c4o17)
(f c4o15 c4o17)
)
(=>
(g2 c4o18)
(f c4o15 c4o18)
)
(=>
(g2 c4o19)
(f c4o15 c4o19)
)
(=>
(g2 c4o20)
(f c4o15 c4o20)
)
(=>
(g2 c4o21)
(f c4o15 c4o21)
)
(=>
(g2 c4o22)
(f c4o15 c4o22)
)
(=>
(g2 c4o23)
(f c4o15 c4o23)
)
(=>
(g2 c4o24)
(f c4o15 c4o24)
)
(=>
(g2 c4o25)
(f c4o15 c4o25)
)
(=>
(g2 c4o26)
(f c4o15 c4o26)
)
(=>
(g2 c4o27)
(f c4o15 c4o27)
)
(=>
(g2 c4o28)
(f c4o15 c4o28)
)
(=>
(g2 c4o29)
(f c4o15 c4o29)
)
(=>
(g2 c4o30)
(f c4o15 c4o30)
)
(=>
(g2 c4o31)
(f c4o15 c4o31)
)
(=>
(g2 c4o32)
(f c4o15 c4o32)
)
(=>
(g2 c4o33)
(f c4o15 c4o33)
)
(=>
(g2 c4o34)
(f c4o15 c4o34)
)
(=>
(g2 c4o35)
(f c4o15 c4o35)
)
(=>
(g2 c4o36)
(f c4o15 c4o36)
)
)
)
)
(=>
(g1 c4o16)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o16 c4o1)
)
(=>
(g2 c4o2)
(f c4o16 c4o2)
)
(=>
(g2 c4o3)
(f c4o16 c4o3)
)
(=>
(g2 c4o4)
(f c4o16 c4o4)
)
(=>
(g2 c4o5)
(f c4o16 c4o5)
)
(=>
(g2 c4o6)
(f c4o16 c4o6)
)
(=>
(g2 c4o7)
(f c4o16 c4o7)
)
(=>
(g2 c4o8)
(f c4o16 c4o8)
)
(=>
(g2 c4o9)
(f c4o16 c4o9)
)
(=>
(g2 c4o10)
(f c4o16 c4o10)
)
(=>
(g2 c4o11)
(f c4o16 c4o11)
)
(=>
(g2 c4o12)
(f c4o16 c4o12)
)
(=>
(g2 c4o13)
(f c4o16 c4o13)
)
(=>
(g2 c4o14)
(f c4o16 c4o14)
)
(=>
(g2 c4o15)
(f c4o16 c4o15)
)
(=>
(g2 c4o16)
(f c4o16 c4o16)
)
(=>
(g2 c4o17)
(f c4o16 c4o17)
)
(=>
(g2 c4o18)
(f c4o16 c4o18)
)
(=>
(g2 c4o19)
(f c4o16 c4o19)
)
(=>
(g2 c4o20)
(f c4o16 c4o20)
)
(=>
(g2 c4o21)
(f c4o16 c4o21)
)
(=>
(g2 c4o22)
(f c4o16 c4o22)
)
(=>
(g2 c4o23)
(f c4o16 c4o23)
)
(=>
(g2 c4o24)
(f c4o16 c4o24)
)
(=>
(g2 c4o25)
(f c4o16 c4o25)
)
(=>
(g2 c4o26)
(f c4o16 c4o26)
)
(=>
(g2 c4o27)
(f c4o16 c4o27)
)
(=>
(g2 c4o28)
(f c4o16 c4o28)
)
(=>
(g2 c4o29)
(f c4o16 c4o29)
)
(=>
(g2 c4o30)
(f c4o16 c4o30)
)
(=>
(g2 c4o31)
(f c4o16 c4o31)
)
(=>
(g2 c4o32)
(f c4o16 c4o32)
)
(=>
(g2 c4o33)
(f c4o16 c4o33)
)
(=>
(g2 c4o34)
(f c4o16 c4o34)
)
(=>
(g2 c4o35)
(f c4o16 c4o35)
)
(=>
(g2 c4o36)
(f c4o16 c4o36)
)
)
)
)
(=>
(g1 c4o17)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o17 c4o1)
)
(=>
(g2 c4o2)
(f c4o17 c4o2)
)
(=>
(g2 c4o3)
(f c4o17 c4o3)
)
(=>
(g2 c4o4)
(f c4o17 c4o4)
)
(=>
(g2 c4o5)
(f c4o17 c4o5)
)
(=>
(g2 c4o6)
(f c4o17 c4o6)
)
(=>
(g2 c4o7)
(f c4o17 c4o7)
)
(=>
(g2 c4o8)
(f c4o17 c4o8)
)
(=>
(g2 c4o9)
(f c4o17 c4o9)
)
(=>
(g2 c4o10)
(f c4o17 c4o10)
)
(=>
(g2 c4o11)
(f c4o17 c4o11)
)
(=>
(g2 c4o12)
(f c4o17 c4o12)
)
(=>
(g2 c4o13)
(f c4o17 c4o13)
)
(=>
(g2 c4o14)
(f c4o17 c4o14)
)
(=>
(g2 c4o15)
(f c4o17 c4o15)
)
(=>
(g2 c4o16)
(f c4o17 c4o16)
)
(=>
(g2 c4o17)
(f c4o17 c4o17)
)
(=>
(g2 c4o18)
(f c4o17 c4o18)
)
(=>
(g2 c4o19)
(f c4o17 c4o19)
)
(=>
(g2 c4o20)
(f c4o17 c4o20)
)
(=>
(g2 c4o21)
(f c4o17 c4o21)
)
(=>
(g2 c4o22)
(f c4o17 c4o22)
)
(=>
(g2 c4o23)
(f c4o17 c4o23)
)
(=>
(g2 c4o24)
(f c4o17 c4o24)
)
(=>
(g2 c4o25)
(f c4o17 c4o25)
)
(=>
(g2 c4o26)
(f c4o17 c4o26)
)
(=>
(g2 c4o27)
(f c4o17 c4o27)
)
(=>
(g2 c4o28)
(f c4o17 c4o28)
)
(=>
(g2 c4o29)
(f c4o17 c4o29)
)
(=>
(g2 c4o30)
(f c4o17 c4o30)
)
(=>
(g2 c4o31)
(f c4o17 c4o31)
)
(=>
(g2 c4o32)
(f c4o17 c4o32)
)
(=>
(g2 c4o33)
(f c4o17 c4o33)
)
(=>
(g2 c4o34)
(f c4o17 c4o34)
)
(=>
(g2 c4o35)
(f c4o17 c4o35)
)
(=>
(g2 c4o36)
(f c4o17 c4o36)
)
)
)
)
(=>
(g1 c4o18)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o18 c4o1)
)
(=>
(g2 c4o2)
(f c4o18 c4o2)
)
(=>
(g2 c4o3)
(f c4o18 c4o3)
)
(=>
(g2 c4o4)
(f c4o18 c4o4)
)
(=>
(g2 c4o5)
(f c4o18 c4o5)
)
(=>
(g2 c4o6)
(f c4o18 c4o6)
)
(=>
(g2 c4o7)
(f c4o18 c4o7)
)
(=>
(g2 c4o8)
(f c4o18 c4o8)
)
(=>
(g2 c4o9)
(f c4o18 c4o9)
)
(=>
(g2 c4o10)
(f c4o18 c4o10)
)
(=>
(g2 c4o11)
(f c4o18 c4o11)
)
(=>
(g2 c4o12)
(f c4o18 c4o12)
)
(=>
(g2 c4o13)
(f c4o18 c4o13)
)
(=>
(g2 c4o14)
(f c4o18 c4o14)
)
(=>
(g2 c4o15)
(f c4o18 c4o15)
)
(=>
(g2 c4o16)
(f c4o18 c4o16)
)
(=>
(g2 c4o17)
(f c4o18 c4o17)
)
(=>
(g2 c4o18)
(f c4o18 c4o18)
)
(=>
(g2 c4o19)
(f c4o18 c4o19)
)
(=>
(g2 c4o20)
(f c4o18 c4o20)
)
(=>
(g2 c4o21)
(f c4o18 c4o21)
)
(=>
(g2 c4o22)
(f c4o18 c4o22)
)
(=>
(g2 c4o23)
(f c4o18 c4o23)
)
(=>
(g2 c4o24)
(f c4o18 c4o24)
)
(=>
(g2 c4o25)
(f c4o18 c4o25)
)
(=>
(g2 c4o26)
(f c4o18 c4o26)
)
(=>
(g2 c4o27)
(f c4o18 c4o27)
)
(=>
(g2 c4o28)
(f c4o18 c4o28)
)
(=>
(g2 c4o29)
(f c4o18 c4o29)
)
(=>
(g2 c4o30)
(f c4o18 c4o30)
)
(=>
(g2 c4o31)
(f c4o18 c4o31)
)
(=>
(g2 c4o32)
(f c4o18 c4o32)
)
(=>
(g2 c4o33)
(f c4o18 c4o33)
)
(=>
(g2 c4o34)
(f c4o18 c4o34)
)
(=>
(g2 c4o35)
(f c4o18 c4o35)
)
(=>
(g2 c4o36)
(f c4o18 c4o36)
)
)
)
)
(=>
(g1 c4o19)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o19 c4o1)
)
(=>
(g2 c4o2)
(f c4o19 c4o2)
)
(=>
(g2 c4o3)
(f c4o19 c4o3)
)
(=>
(g2 c4o4)
(f c4o19 c4o4)
)
(=>
(g2 c4o5)
(f c4o19 c4o5)
)
(=>
(g2 c4o6)
(f c4o19 c4o6)
)
(=>
(g2 c4o7)
(f c4o19 c4o7)
)
(=>
(g2 c4o8)
(f c4o19 c4o8)
)
(=>
(g2 c4o9)
(f c4o19 c4o9)
)
(=>
(g2 c4o10)
(f c4o19 c4o10)
)
(=>
(g2 c4o11)
(f c4o19 c4o11)
)
(=>
(g2 c4o12)
(f c4o19 c4o12)
)
(=>
(g2 c4o13)
(f c4o19 c4o13)
)
(=>
(g2 c4o14)
(f c4o19 c4o14)
)
(=>
(g2 c4o15)
(f c4o19 c4o15)
)
(=>
(g2 c4o16)
(f c4o19 c4o16)
)
(=>
(g2 c4o17)
(f c4o19 c4o17)
)
(=>
(g2 c4o18)
(f c4o19 c4o18)
)
(=>
(g2 c4o19)
(f c4o19 c4o19)
)
(=>
(g2 c4o20)
(f c4o19 c4o20)
)
(=>
(g2 c4o21)
(f c4o19 c4o21)
)
(=>
(g2 c4o22)
(f c4o19 c4o22)
)
(=>
(g2 c4o23)
(f c4o19 c4o23)
)
(=>
(g2 c4o24)
(f c4o19 c4o24)
)
(=>
(g2 c4o25)
(f c4o19 c4o25)
)
(=>
(g2 c4o26)
(f c4o19 c4o26)
)
(=>
(g2 c4o27)
(f c4o19 c4o27)
)
(=>
(g2 c4o28)
(f c4o19 c4o28)
)
(=>
(g2 c4o29)
(f c4o19 c4o29)
)
(=>
(g2 c4o30)
(f c4o19 c4o30)
)
(=>
(g2 c4o31)
(f c4o19 c4o31)
)
(=>
(g2 c4o32)
(f c4o19 c4o32)
)
(=>
(g2 c4o33)
(f c4o19 c4o33)
)
(=>
(g2 c4o34)
(f c4o19 c4o34)
)
(=>
(g2 c4o35)
(f c4o19 c4o35)
)
(=>
(g2 c4o36)
(f c4o19 c4o36)
)
)
)
)
(=>
(g1 c4o20)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o20 c4o1)
)
(=>
(g2 c4o2)
(f c4o20 c4o2)
)
(=>
(g2 c4o3)
(f c4o20 c4o3)
)
(=>
(g2 c4o4)
(f c4o20 c4o4)
)
(=>
(g2 c4o5)
(f c4o20 c4o5)
)
(=>
(g2 c4o6)
(f c4o20 c4o6)
)
(=>
(g2 c4o7)
(f c4o20 c4o7)
)
(=>
(g2 c4o8)
(f c4o20 c4o8)
)
(=>
(g2 c4o9)
(f c4o20 c4o9)
)
(=>
(g2 c4o10)
(f c4o20 c4o10)
)
(=>
(g2 c4o11)
(f c4o20 c4o11)
)
(=>
(g2 c4o12)
(f c4o20 c4o12)
)
(=>
(g2 c4o13)
(f c4o20 c4o13)
)
(=>
(g2 c4o14)
(f c4o20 c4o14)
)
(=>
(g2 c4o15)
(f c4o20 c4o15)
)
(=>
(g2 c4o16)
(f c4o20 c4o16)
)
(=>
(g2 c4o17)
(f c4o20 c4o17)
)
(=>
(g2 c4o18)
(f c4o20 c4o18)
)
(=>
(g2 c4o19)
(f c4o20 c4o19)
)
(=>
(g2 c4o20)
(f c4o20 c4o20)
)
(=>
(g2 c4o21)
(f c4o20 c4o21)
)
(=>
(g2 c4o22)
(f c4o20 c4o22)
)
(=>
(g2 c4o23)
(f c4o20 c4o23)
)
(=>
(g2 c4o24)
(f c4o20 c4o24)
)
(=>
(g2 c4o25)
(f c4o20 c4o25)
)
(=>
(g2 c4o26)
(f c4o20 c4o26)
)
(=>
(g2 c4o27)
(f c4o20 c4o27)
)
(=>
(g2 c4o28)
(f c4o20 c4o28)
)
(=>
(g2 c4o29)
(f c4o20 c4o29)
)
(=>
(g2 c4o30)
(f c4o20 c4o30)
)
(=>
(g2 c4o31)
(f c4o20 c4o31)
)
(=>
(g2 c4o32)
(f c4o20 c4o32)
)
(=>
(g2 c4o33)
(f c4o20 c4o33)
)
(=>
(g2 c4o34)
(f c4o20 c4o34)
)
(=>
(g2 c4o35)
(f c4o20 c4o35)
)
(=>
(g2 c4o36)
(f c4o20 c4o36)
)
)
)
)
(=>
(g1 c4o21)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o21 c4o1)
)
(=>
(g2 c4o2)
(f c4o21 c4o2)
)
(=>
(g2 c4o3)
(f c4o21 c4o3)
)
(=>
(g2 c4o4)
(f c4o21 c4o4)
)
(=>
(g2 c4o5)
(f c4o21 c4o5)
)
(=>
(g2 c4o6)
(f c4o21 c4o6)
)
(=>
(g2 c4o7)
(f c4o21 c4o7)
)
(=>
(g2 c4o8)
(f c4o21 c4o8)
)
(=>
(g2 c4o9)
(f c4o21 c4o9)
)
(=>
(g2 c4o10)
(f c4o21 c4o10)
)
(=>
(g2 c4o11)
(f c4o21 c4o11)
)
(=>
(g2 c4o12)
(f c4o21 c4o12)
)
(=>
(g2 c4o13)
(f c4o21 c4o13)
)
(=>
(g2 c4o14)
(f c4o21 c4o14)
)
(=>
(g2 c4o15)
(f c4o21 c4o15)
)
(=>
(g2 c4o16)
(f c4o21 c4o16)
)
(=>
(g2 c4o17)
(f c4o21 c4o17)
)
(=>
(g2 c4o18)
(f c4o21 c4o18)
)
(=>
(g2 c4o19)
(f c4o21 c4o19)
)
(=>
(g2 c4o20)
(f c4o21 c4o20)
)
(=>
(g2 c4o21)
(f c4o21 c4o21)
)
(=>
(g2 c4o22)
(f c4o21 c4o22)
)
(=>
(g2 c4o23)
(f c4o21 c4o23)
)
(=>
(g2 c4o24)
(f c4o21 c4o24)
)
(=>
(g2 c4o25)
(f c4o21 c4o25)
)
(=>
(g2 c4o26)
(f c4o21 c4o26)
)
(=>
(g2 c4o27)
(f c4o21 c4o27)
)
(=>
(g2 c4o28)
(f c4o21 c4o28)
)
(=>
(g2 c4o29)
(f c4o21 c4o29)
)
(=>
(g2 c4o30)
(f c4o21 c4o30)
)
(=>
(g2 c4o31)
(f c4o21 c4o31)
)
(=>
(g2 c4o32)
(f c4o21 c4o32)
)
(=>
(g2 c4o33)
(f c4o21 c4o33)
)
(=>
(g2 c4o34)
(f c4o21 c4o34)
)
(=>
(g2 c4o35)
(f c4o21 c4o35)
)
(=>
(g2 c4o36)
(f c4o21 c4o36)
)
)
)
)
(=>
(g1 c4o22)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o22 c4o1)
)
(=>
(g2 c4o2)
(f c4o22 c4o2)
)
(=>
(g2 c4o3)
(f c4o22 c4o3)
)
(=>
(g2 c4o4)
(f c4o22 c4o4)
)
(=>
(g2 c4o5)
(f c4o22 c4o5)
)
(=>
(g2 c4o6)
(f c4o22 c4o6)
)
(=>
(g2 c4o7)
(f c4o22 c4o7)
)
(=>
(g2 c4o8)
(f c4o22 c4o8)
)
(=>
(g2 c4o9)
(f c4o22 c4o9)
)
(=>
(g2 c4o10)
(f c4o22 c4o10)
)
(=>
(g2 c4o11)
(f c4o22 c4o11)
)
(=>
(g2 c4o12)
(f c4o22 c4o12)
)
(=>
(g2 c4o13)
(f c4o22 c4o13)
)
(=>
(g2 c4o14)
(f c4o22 c4o14)
)
(=>
(g2 c4o15)
(f c4o22 c4o15)
)
(=>
(g2 c4o16)
(f c4o22 c4o16)
)
(=>
(g2 c4o17)
(f c4o22 c4o17)
)
(=>
(g2 c4o18)
(f c4o22 c4o18)
)
(=>
(g2 c4o19)
(f c4o22 c4o19)
)
(=>
(g2 c4o20)
(f c4o22 c4o20)
)
(=>
(g2 c4o21)
(f c4o22 c4o21)
)
(=>
(g2 c4o22)
(f c4o22 c4o22)
)
(=>
(g2 c4o23)
(f c4o22 c4o23)
)
(=>
(g2 c4o24)
(f c4o22 c4o24)
)
(=>
(g2 c4o25)
(f c4o22 c4o25)
)
(=>
(g2 c4o26)
(f c4o22 c4o26)
)
(=>
(g2 c4o27)
(f c4o22 c4o27)
)
(=>
(g2 c4o28)
(f c4o22 c4o28)
)
(=>
(g2 c4o29)
(f c4o22 c4o29)
)
(=>
(g2 c4o30)
(f c4o22 c4o30)
)
(=>
(g2 c4o31)
(f c4o22 c4o31)
)
(=>
(g2 c4o32)
(f c4o22 c4o32)
)
(=>
(g2 c4o33)
(f c4o22 c4o33)
)
(=>
(g2 c4o34)
(f c4o22 c4o34)
)
(=>
(g2 c4o35)
(f c4o22 c4o35)
)
(=>
(g2 c4o36)
(f c4o22 c4o36)
)
)
)
)
(=>
(g1 c4o23)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o23 c4o1)
)
(=>
(g2 c4o2)
(f c4o23 c4o2)
)
(=>
(g2 c4o3)
(f c4o23 c4o3)
)
(=>
(g2 c4o4)
(f c4o23 c4o4)
)
(=>
(g2 c4o5)
(f c4o23 c4o5)
)
(=>
(g2 c4o6)
(f c4o23 c4o6)
)
(=>
(g2 c4o7)
(f c4o23 c4o7)
)
(=>
(g2 c4o8)
(f c4o23 c4o8)
)
(=>
(g2 c4o9)
(f c4o23 c4o9)
)
(=>
(g2 c4o10)
(f c4o23 c4o10)
)
(=>
(g2 c4o11)
(f c4o23 c4o11)
)
(=>
(g2 c4o12)
(f c4o23 c4o12)
)
(=>
(g2 c4o13)
(f c4o23 c4o13)
)
(=>
(g2 c4o14)
(f c4o23 c4o14)
)
(=>
(g2 c4o15)
(f c4o23 c4o15)
)
(=>
(g2 c4o16)
(f c4o23 c4o16)
)
(=>
(g2 c4o17)
(f c4o23 c4o17)
)
(=>
(g2 c4o18)
(f c4o23 c4o18)
)
(=>
(g2 c4o19)
(f c4o23 c4o19)
)
(=>
(g2 c4o20)
(f c4o23 c4o20)
)
(=>
(g2 c4o21)
(f c4o23 c4o21)
)
(=>
(g2 c4o22)
(f c4o23 c4o22)
)
(=>
(g2 c4o23)
(f c4o23 c4o23)
)
(=>
(g2 c4o24)
(f c4o23 c4o24)
)
(=>
(g2 c4o25)
(f c4o23 c4o25)
)
(=>
(g2 c4o26)
(f c4o23 c4o26)
)
(=>
(g2 c4o27)
(f c4o23 c4o27)
)
(=>
(g2 c4o28)
(f c4o23 c4o28)
)
(=>
(g2 c4o29)
(f c4o23 c4o29)
)
(=>
(g2 c4o30)
(f c4o23 c4o30)
)
(=>
(g2 c4o31)
(f c4o23 c4o31)
)
(=>
(g2 c4o32)
(f c4o23 c4o32)
)
(=>
(g2 c4o33)
(f c4o23 c4o33)
)
(=>
(g2 c4o34)
(f c4o23 c4o34)
)
(=>
(g2 c4o35)
(f c4o23 c4o35)
)
(=>
(g2 c4o36)
(f c4o23 c4o36)
)
)
)
)
(=>
(g1 c4o24)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o24 c4o1)
)
(=>
(g2 c4o2)
(f c4o24 c4o2)
)
(=>
(g2 c4o3)
(f c4o24 c4o3)
)
(=>
(g2 c4o4)
(f c4o24 c4o4)
)
(=>
(g2 c4o5)
(f c4o24 c4o5)
)
(=>
(g2 c4o6)
(f c4o24 c4o6)
)
(=>
(g2 c4o7)
(f c4o24 c4o7)
)
(=>
(g2 c4o8)
(f c4o24 c4o8)
)
(=>
(g2 c4o9)
(f c4o24 c4o9)
)
(=>
(g2 c4o10)
(f c4o24 c4o10)
)
(=>
(g2 c4o11)
(f c4o24 c4o11)
)
(=>
(g2 c4o12)
(f c4o24 c4o12)
)
(=>
(g2 c4o13)
(f c4o24 c4o13)
)
(=>
(g2 c4o14)
(f c4o24 c4o14)
)
(=>
(g2 c4o15)
(f c4o24 c4o15)
)
(=>
(g2 c4o16)
(f c4o24 c4o16)
)
(=>
(g2 c4o17)
(f c4o24 c4o17)
)
(=>
(g2 c4o18)
(f c4o24 c4o18)
)
(=>
(g2 c4o19)
(f c4o24 c4o19)
)
(=>
(g2 c4o20)
(f c4o24 c4o20)
)
(=>
(g2 c4o21)
(f c4o24 c4o21)
)
(=>
(g2 c4o22)
(f c4o24 c4o22)
)
(=>
(g2 c4o23)
(f c4o24 c4o23)
)
(=>
(g2 c4o24)
(f c4o24 c4o24)
)
(=>
(g2 c4o25)
(f c4o24 c4o25)
)
(=>
(g2 c4o26)
(f c4o24 c4o26)
)
(=>
(g2 c4o27)
(f c4o24 c4o27)
)
(=>
(g2 c4o28)
(f c4o24 c4o28)
)
(=>
(g2 c4o29)
(f c4o24 c4o29)
)
(=>
(g2 c4o30)
(f c4o24 c4o30)
)
(=>
(g2 c4o31)
(f c4o24 c4o31)
)
(=>
(g2 c4o32)
(f c4o24 c4o32)
)
(=>
(g2 c4o33)
(f c4o24 c4o33)
)
(=>
(g2 c4o34)
(f c4o24 c4o34)
)
(=>
(g2 c4o35)
(f c4o24 c4o35)
)
(=>
(g2 c4o36)
(f c4o24 c4o36)
)
)
)
)
(=>
(g1 c4o25)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o25 c4o1)
)
(=>
(g2 c4o2)
(f c4o25 c4o2)
)
(=>
(g2 c4o3)
(f c4o25 c4o3)
)
(=>
(g2 c4o4)
(f c4o25 c4o4)
)
(=>
(g2 c4o5)
(f c4o25 c4o5)
)
(=>
(g2 c4o6)
(f c4o25 c4o6)
)
(=>
(g2 c4o7)
(f c4o25 c4o7)
)
(=>
(g2 c4o8)
(f c4o25 c4o8)
)
(=>
(g2 c4o9)
(f c4o25 c4o9)
)
(=>
(g2 c4o10)
(f c4o25 c4o10)
)
(=>
(g2 c4o11)
(f c4o25 c4o11)
)
(=>
(g2 c4o12)
(f c4o25 c4o12)
)
(=>
(g2 c4o13)
(f c4o25 c4o13)
)
(=>
(g2 c4o14)
(f c4o25 c4o14)
)
(=>
(g2 c4o15)
(f c4o25 c4o15)
)
(=>
(g2 c4o16)
(f c4o25 c4o16)
)
(=>
(g2 c4o17)
(f c4o25 c4o17)
)
(=>
(g2 c4o18)
(f c4o25 c4o18)
)
(=>
(g2 c4o19)
(f c4o25 c4o19)
)
(=>
(g2 c4o20)
(f c4o25 c4o20)
)
(=>
(g2 c4o21)
(f c4o25 c4o21)
)
(=>
(g2 c4o22)
(f c4o25 c4o22)
)
(=>
(g2 c4o23)
(f c4o25 c4o23)
)
(=>
(g2 c4o24)
(f c4o25 c4o24)
)
(=>
(g2 c4o25)
(f c4o25 c4o25)
)
(=>
(g2 c4o26)
(f c4o25 c4o26)
)
(=>
(g2 c4o27)
(f c4o25 c4o27)
)
(=>
(g2 c4o28)
(f c4o25 c4o28)
)
(=>
(g2 c4o29)
(f c4o25 c4o29)
)
(=>
(g2 c4o30)
(f c4o25 c4o30)
)
(=>
(g2 c4o31)
(f c4o25 c4o31)
)
(=>
(g2 c4o32)
(f c4o25 c4o32)
)
(=>
(g2 c4o33)
(f c4o25 c4o33)
)
(=>
(g2 c4o34)
(f c4o25 c4o34)
)
(=>
(g2 c4o35)
(f c4o25 c4o35)
)
(=>
(g2 c4o36)
(f c4o25 c4o36)
)
)
)
)
(=>
(g1 c4o26)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o26 c4o1)
)
(=>
(g2 c4o2)
(f c4o26 c4o2)
)
(=>
(g2 c4o3)
(f c4o26 c4o3)
)
(=>
(g2 c4o4)
(f c4o26 c4o4)
)
(=>
(g2 c4o5)
(f c4o26 c4o5)
)
(=>
(g2 c4o6)
(f c4o26 c4o6)
)
(=>
(g2 c4o7)
(f c4o26 c4o7)
)
(=>
(g2 c4o8)
(f c4o26 c4o8)
)
(=>
(g2 c4o9)
(f c4o26 c4o9)
)
(=>
(g2 c4o10)
(f c4o26 c4o10)
)
(=>
(g2 c4o11)
(f c4o26 c4o11)
)
(=>
(g2 c4o12)
(f c4o26 c4o12)
)
(=>
(g2 c4o13)
(f c4o26 c4o13)
)
(=>
(g2 c4o14)
(f c4o26 c4o14)
)
(=>
(g2 c4o15)
(f c4o26 c4o15)
)
(=>
(g2 c4o16)
(f c4o26 c4o16)
)
(=>
(g2 c4o17)
(f c4o26 c4o17)
)
(=>
(g2 c4o18)
(f c4o26 c4o18)
)
(=>
(g2 c4o19)
(f c4o26 c4o19)
)
(=>
(g2 c4o20)
(f c4o26 c4o20)
)
(=>
(g2 c4o21)
(f c4o26 c4o21)
)
(=>
(g2 c4o22)
(f c4o26 c4o22)
)
(=>
(g2 c4o23)
(f c4o26 c4o23)
)
(=>
(g2 c4o24)
(f c4o26 c4o24)
)
(=>
(g2 c4o25)
(f c4o26 c4o25)
)
(=>
(g2 c4o26)
(f c4o26 c4o26)
)
(=>
(g2 c4o27)
(f c4o26 c4o27)
)
(=>
(g2 c4o28)
(f c4o26 c4o28)
)
(=>
(g2 c4o29)
(f c4o26 c4o29)
)
(=>
(g2 c4o30)
(f c4o26 c4o30)
)
(=>
(g2 c4o31)
(f c4o26 c4o31)
)
(=>
(g2 c4o32)
(f c4o26 c4o32)
)
(=>
(g2 c4o33)
(f c4o26 c4o33)
)
(=>
(g2 c4o34)
(f c4o26 c4o34)
)
(=>
(g2 c4o35)
(f c4o26 c4o35)
)
(=>
(g2 c4o36)
(f c4o26 c4o36)
)
)
)
)
(=>
(g1 c4o27)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o27 c4o1)
)
(=>
(g2 c4o2)
(f c4o27 c4o2)
)
(=>
(g2 c4o3)
(f c4o27 c4o3)
)
(=>
(g2 c4o4)
(f c4o27 c4o4)
)
(=>
(g2 c4o5)
(f c4o27 c4o5)
)
(=>
(g2 c4o6)
(f c4o27 c4o6)
)
(=>
(g2 c4o7)
(f c4o27 c4o7)
)
(=>
(g2 c4o8)
(f c4o27 c4o8)
)
(=>
(g2 c4o9)
(f c4o27 c4o9)
)
(=>
(g2 c4o10)
(f c4o27 c4o10)
)
(=>
(g2 c4o11)
(f c4o27 c4o11)
)
(=>
(g2 c4o12)
(f c4o27 c4o12)
)
(=>
(g2 c4o13)
(f c4o27 c4o13)
)
(=>
(g2 c4o14)
(f c4o27 c4o14)
)
(=>
(g2 c4o15)
(f c4o27 c4o15)
)
(=>
(g2 c4o16)
(f c4o27 c4o16)
)
(=>
(g2 c4o17)
(f c4o27 c4o17)
)
(=>
(g2 c4o18)
(f c4o27 c4o18)
)
(=>
(g2 c4o19)
(f c4o27 c4o19)
)
(=>
(g2 c4o20)
(f c4o27 c4o20)
)
(=>
(g2 c4o21)
(f c4o27 c4o21)
)
(=>
(g2 c4o22)
(f c4o27 c4o22)
)
(=>
(g2 c4o23)
(f c4o27 c4o23)
)
(=>
(g2 c4o24)
(f c4o27 c4o24)
)
(=>
(g2 c4o25)
(f c4o27 c4o25)
)
(=>
(g2 c4o26)
(f c4o27 c4o26)
)
(=>
(g2 c4o27)
(f c4o27 c4o27)
)
(=>
(g2 c4o28)
(f c4o27 c4o28)
)
(=>
(g2 c4o29)
(f c4o27 c4o29)
)
(=>
(g2 c4o30)
(f c4o27 c4o30)
)
(=>
(g2 c4o31)
(f c4o27 c4o31)
)
(=>
(g2 c4o32)
(f c4o27 c4o32)
)
(=>
(g2 c4o33)
(f c4o27 c4o33)
)
(=>
(g2 c4o34)
(f c4o27 c4o34)
)
(=>
(g2 c4o35)
(f c4o27 c4o35)
)
(=>
(g2 c4o36)
(f c4o27 c4o36)
)
)
)
)
(=>
(g1 c4o28)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o28 c4o1)
)
(=>
(g2 c4o2)
(f c4o28 c4o2)
)
(=>
(g2 c4o3)
(f c4o28 c4o3)
)
(=>
(g2 c4o4)
(f c4o28 c4o4)
)
(=>
(g2 c4o5)
(f c4o28 c4o5)
)
(=>
(g2 c4o6)
(f c4o28 c4o6)
)
(=>
(g2 c4o7)
(f c4o28 c4o7)
)
(=>
(g2 c4o8)
(f c4o28 c4o8)
)
(=>
(g2 c4o9)
(f c4o28 c4o9)
)
(=>
(g2 c4o10)
(f c4o28 c4o10)
)
(=>
(g2 c4o11)
(f c4o28 c4o11)
)
(=>
(g2 c4o12)
(f c4o28 c4o12)
)
(=>
(g2 c4o13)
(f c4o28 c4o13)
)
(=>
(g2 c4o14)
(f c4o28 c4o14)
)
(=>
(g2 c4o15)
(f c4o28 c4o15)
)
(=>
(g2 c4o16)
(f c4o28 c4o16)
)
(=>
(g2 c4o17)
(f c4o28 c4o17)
)
(=>
(g2 c4o18)
(f c4o28 c4o18)
)
(=>
(g2 c4o19)
(f c4o28 c4o19)
)
(=>
(g2 c4o20)
(f c4o28 c4o20)
)
(=>
(g2 c4o21)
(f c4o28 c4o21)
)
(=>
(g2 c4o22)
(f c4o28 c4o22)
)
(=>
(g2 c4o23)
(f c4o28 c4o23)
)
(=>
(g2 c4o24)
(f c4o28 c4o24)
)
(=>
(g2 c4o25)
(f c4o28 c4o25)
)
(=>
(g2 c4o26)
(f c4o28 c4o26)
)
(=>
(g2 c4o27)
(f c4o28 c4o27)
)
(=>
(g2 c4o28)
(f c4o28 c4o28)
)
(=>
(g2 c4o29)
(f c4o28 c4o29)
)
(=>
(g2 c4o30)
(f c4o28 c4o30)
)
(=>
(g2 c4o31)
(f c4o28 c4o31)
)
(=>
(g2 c4o32)
(f c4o28 c4o32)
)
(=>
(g2 c4o33)
(f c4o28 c4o33)
)
(=>
(g2 c4o34)
(f c4o28 c4o34)
)
(=>
(g2 c4o35)
(f c4o28 c4o35)
)
(=>
(g2 c4o36)
(f c4o28 c4o36)
)
)
)
)
(=>
(g1 c4o29)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o29 c4o1)
)
(=>
(g2 c4o2)
(f c4o29 c4o2)
)
(=>
(g2 c4o3)
(f c4o29 c4o3)
)
(=>
(g2 c4o4)
(f c4o29 c4o4)
)
(=>
(g2 c4o5)
(f c4o29 c4o5)
)
(=>
(g2 c4o6)
(f c4o29 c4o6)
)
(=>
(g2 c4o7)
(f c4o29 c4o7)
)
(=>
(g2 c4o8)
(f c4o29 c4o8)
)
(=>
(g2 c4o9)
(f c4o29 c4o9)
)
(=>
(g2 c4o10)
(f c4o29 c4o10)
)
(=>
(g2 c4o11)
(f c4o29 c4o11)
)
(=>
(g2 c4o12)
(f c4o29 c4o12)
)
(=>
(g2 c4o13)
(f c4o29 c4o13)
)
(=>
(g2 c4o14)
(f c4o29 c4o14)
)
(=>
(g2 c4o15)
(f c4o29 c4o15)
)
(=>
(g2 c4o16)
(f c4o29 c4o16)
)
(=>
(g2 c4o17)
(f c4o29 c4o17)
)
(=>
(g2 c4o18)
(f c4o29 c4o18)
)
(=>
(g2 c4o19)
(f c4o29 c4o19)
)
(=>
(g2 c4o20)
(f c4o29 c4o20)
)
(=>
(g2 c4o21)
(f c4o29 c4o21)
)
(=>
(g2 c4o22)
(f c4o29 c4o22)
)
(=>
(g2 c4o23)
(f c4o29 c4o23)
)
(=>
(g2 c4o24)
(f c4o29 c4o24)
)
(=>
(g2 c4o25)
(f c4o29 c4o25)
)
(=>
(g2 c4o26)
(f c4o29 c4o26)
)
(=>
(g2 c4o27)
(f c4o29 c4o27)
)
(=>
(g2 c4o28)
(f c4o29 c4o28)
)
(=>
(g2 c4o29)
(f c4o29 c4o29)
)
(=>
(g2 c4o30)
(f c4o29 c4o30)
)
(=>
(g2 c4o31)
(f c4o29 c4o31)
)
(=>
(g2 c4o32)
(f c4o29 c4o32)
)
(=>
(g2 c4o33)
(f c4o29 c4o33)
)
(=>
(g2 c4o34)
(f c4o29 c4o34)
)
(=>
(g2 c4o35)
(f c4o29 c4o35)
)
(=>
(g2 c4o36)
(f c4o29 c4o36)
)
)
)
)
(=>
(g1 c4o30)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o30 c4o1)
)
(=>
(g2 c4o2)
(f c4o30 c4o2)
)
(=>
(g2 c4o3)
(f c4o30 c4o3)
)
(=>
(g2 c4o4)
(f c4o30 c4o4)
)
(=>
(g2 c4o5)
(f c4o30 c4o5)
)
(=>
(g2 c4o6)
(f c4o30 c4o6)
)
(=>
(g2 c4o7)
(f c4o30 c4o7)
)
(=>
(g2 c4o8)
(f c4o30 c4o8)
)
(=>
(g2 c4o9)
(f c4o30 c4o9)
)
(=>
(g2 c4o10)
(f c4o30 c4o10)
)
(=>
(g2 c4o11)
(f c4o30 c4o11)
)
(=>
(g2 c4o12)
(f c4o30 c4o12)
)
(=>
(g2 c4o13)
(f c4o30 c4o13)
)
(=>
(g2 c4o14)
(f c4o30 c4o14)
)
(=>
(g2 c4o15)
(f c4o30 c4o15)
)
(=>
(g2 c4o16)
(f c4o30 c4o16)
)
(=>
(g2 c4o17)
(f c4o30 c4o17)
)
(=>
(g2 c4o18)
(f c4o30 c4o18)
)
(=>
(g2 c4o19)
(f c4o30 c4o19)
)
(=>
(g2 c4o20)
(f c4o30 c4o20)
)
(=>
(g2 c4o21)
(f c4o30 c4o21)
)
(=>
(g2 c4o22)
(f c4o30 c4o22)
)
(=>
(g2 c4o23)
(f c4o30 c4o23)
)
(=>
(g2 c4o24)
(f c4o30 c4o24)
)
(=>
(g2 c4o25)
(f c4o30 c4o25)
)
(=>
(g2 c4o26)
(f c4o30 c4o26)
)
(=>
(g2 c4o27)
(f c4o30 c4o27)
)
(=>
(g2 c4o28)
(f c4o30 c4o28)
)
(=>
(g2 c4o29)
(f c4o30 c4o29)
)
(=>
(g2 c4o30)
(f c4o30 c4o30)
)
(=>
(g2 c4o31)
(f c4o30 c4o31)
)
(=>
(g2 c4o32)
(f c4o30 c4o32)
)
(=>
(g2 c4o33)
(f c4o30 c4o33)
)
(=>
(g2 c4o34)
(f c4o30 c4o34)
)
(=>
(g2 c4o35)
(f c4o30 c4o35)
)
(=>
(g2 c4o36)
(f c4o30 c4o36)
)
)
)
)
(=>
(g1 c4o31)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o31 c4o1)
)
(=>
(g2 c4o2)
(f c4o31 c4o2)
)
(=>
(g2 c4o3)
(f c4o31 c4o3)
)
(=>
(g2 c4o4)
(f c4o31 c4o4)
)
(=>
(g2 c4o5)
(f c4o31 c4o5)
)
(=>
(g2 c4o6)
(f c4o31 c4o6)
)
(=>
(g2 c4o7)
(f c4o31 c4o7)
)
(=>
(g2 c4o8)
(f c4o31 c4o8)
)
(=>
(g2 c4o9)
(f c4o31 c4o9)
)
(=>
(g2 c4o10)
(f c4o31 c4o10)
)
(=>
(g2 c4o11)
(f c4o31 c4o11)
)
(=>
(g2 c4o12)
(f c4o31 c4o12)
)
(=>
(g2 c4o13)
(f c4o31 c4o13)
)
(=>
(g2 c4o14)
(f c4o31 c4o14)
)
(=>
(g2 c4o15)
(f c4o31 c4o15)
)
(=>
(g2 c4o16)
(f c4o31 c4o16)
)
(=>
(g2 c4o17)
(f c4o31 c4o17)
)
(=>
(g2 c4o18)
(f c4o31 c4o18)
)
(=>
(g2 c4o19)
(f c4o31 c4o19)
)
(=>
(g2 c4o20)
(f c4o31 c4o20)
)
(=>
(g2 c4o21)
(f c4o31 c4o21)
)
(=>
(g2 c4o22)
(f c4o31 c4o22)
)
(=>
(g2 c4o23)
(f c4o31 c4o23)
)
(=>
(g2 c4o24)
(f c4o31 c4o24)
)
(=>
(g2 c4o25)
(f c4o31 c4o25)
)
(=>
(g2 c4o26)
(f c4o31 c4o26)
)
(=>
(g2 c4o27)
(f c4o31 c4o27)
)
(=>
(g2 c4o28)
(f c4o31 c4o28)
)
(=>
(g2 c4o29)
(f c4o31 c4o29)
)
(=>
(g2 c4o30)
(f c4o31 c4o30)
)
(=>
(g2 c4o31)
(f c4o31 c4o31)
)
(=>
(g2 c4o32)
(f c4o31 c4o32)
)
(=>
(g2 c4o33)
(f c4o31 c4o33)
)
(=>
(g2 c4o34)
(f c4o31 c4o34)
)
(=>
(g2 c4o35)
(f c4o31 c4o35)
)
(=>
(g2 c4o36)
(f c4o31 c4o36)
)
)
)
)
(=>
(g1 c4o32)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o32 c4o1)
)
(=>
(g2 c4o2)
(f c4o32 c4o2)
)
(=>
(g2 c4o3)
(f c4o32 c4o3)
)
(=>
(g2 c4o4)
(f c4o32 c4o4)
)
(=>
(g2 c4o5)
(f c4o32 c4o5)
)
(=>
(g2 c4o6)
(f c4o32 c4o6)
)
(=>
(g2 c4o7)
(f c4o32 c4o7)
)
(=>
(g2 c4o8)
(f c4o32 c4o8)
)
(=>
(g2 c4o9)
(f c4o32 c4o9)
)
(=>
(g2 c4o10)
(f c4o32 c4o10)
)
(=>
(g2 c4o11)
(f c4o32 c4o11)
)
(=>
(g2 c4o12)
(f c4o32 c4o12)
)
(=>
(g2 c4o13)
(f c4o32 c4o13)
)
(=>
(g2 c4o14)
(f c4o32 c4o14)
)
(=>
(g2 c4o15)
(f c4o32 c4o15)
)
(=>
(g2 c4o16)
(f c4o32 c4o16)
)
(=>
(g2 c4o17)
(f c4o32 c4o17)
)
(=>
(g2 c4o18)
(f c4o32 c4o18)
)
(=>
(g2 c4o19)
(f c4o32 c4o19)
)
(=>
(g2 c4o20)
(f c4o32 c4o20)
)
(=>
(g2 c4o21)
(f c4o32 c4o21)
)
(=>
(g2 c4o22)
(f c4o32 c4o22)
)
(=>
(g2 c4o23)
(f c4o32 c4o23)
)
(=>
(g2 c4o24)
(f c4o32 c4o24)
)
(=>
(g2 c4o25)
(f c4o32 c4o25)
)
(=>
(g2 c4o26)
(f c4o32 c4o26)
)
(=>
(g2 c4o27)
(f c4o32 c4o27)
)
(=>
(g2 c4o28)
(f c4o32 c4o28)
)
(=>
(g2 c4o29)
(f c4o32 c4o29)
)
(=>
(g2 c4o30)
(f c4o32 c4o30)
)
(=>
(g2 c4o31)
(f c4o32 c4o31)
)
(=>
(g2 c4o32)
(f c4o32 c4o32)
)
(=>
(g2 c4o33)
(f c4o32 c4o33)
)
(=>
(g2 c4o34)
(f c4o32 c4o34)
)
(=>
(g2 c4o35)
(f c4o32 c4o35)
)
(=>
(g2 c4o36)
(f c4o32 c4o36)
)
)
)
)
(=>
(g1 c4o33)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o33 c4o1)
)
(=>
(g2 c4o2)
(f c4o33 c4o2)
)
(=>
(g2 c4o3)
(f c4o33 c4o3)
)
(=>
(g2 c4o4)
(f c4o33 c4o4)
)
(=>
(g2 c4o5)
(f c4o33 c4o5)
)
(=>
(g2 c4o6)
(f c4o33 c4o6)
)
(=>
(g2 c4o7)
(f c4o33 c4o7)
)
(=>
(g2 c4o8)
(f c4o33 c4o8)
)
(=>
(g2 c4o9)
(f c4o33 c4o9)
)
(=>
(g2 c4o10)
(f c4o33 c4o10)
)
(=>
(g2 c4o11)
(f c4o33 c4o11)
)
(=>
(g2 c4o12)
(f c4o33 c4o12)
)
(=>
(g2 c4o13)
(f c4o33 c4o13)
)
(=>
(g2 c4o14)
(f c4o33 c4o14)
)
(=>
(g2 c4o15)
(f c4o33 c4o15)
)
(=>
(g2 c4o16)
(f c4o33 c4o16)
)
(=>
(g2 c4o17)
(f c4o33 c4o17)
)
(=>
(g2 c4o18)
(f c4o33 c4o18)
)
(=>
(g2 c4o19)
(f c4o33 c4o19)
)
(=>
(g2 c4o20)
(f c4o33 c4o20)
)
(=>
(g2 c4o21)
(f c4o33 c4o21)
)
(=>
(g2 c4o22)
(f c4o33 c4o22)
)
(=>
(g2 c4o23)
(f c4o33 c4o23)
)
(=>
(g2 c4o24)
(f c4o33 c4o24)
)
(=>
(g2 c4o25)
(f c4o33 c4o25)
)
(=>
(g2 c4o26)
(f c4o33 c4o26)
)
(=>
(g2 c4o27)
(f c4o33 c4o27)
)
(=>
(g2 c4o28)
(f c4o33 c4o28)
)
(=>
(g2 c4o29)
(f c4o33 c4o29)
)
(=>
(g2 c4o30)
(f c4o33 c4o30)
)
(=>
(g2 c4o31)
(f c4o33 c4o31)
)
(=>
(g2 c4o32)
(f c4o33 c4o32)
)
(=>
(g2 c4o33)
(f c4o33 c4o33)
)
(=>
(g2 c4o34)
(f c4o33 c4o34)
)
(=>
(g2 c4o35)
(f c4o33 c4o35)
)
(=>
(g2 c4o36)
(f c4o33 c4o36)
)
)
)
)
(=>
(g1 c4o34)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o34 c4o1)
)
(=>
(g2 c4o2)
(f c4o34 c4o2)
)
(=>
(g2 c4o3)
(f c4o34 c4o3)
)
(=>
(g2 c4o4)
(f c4o34 c4o4)
)
(=>
(g2 c4o5)
(f c4o34 c4o5)
)
(=>
(g2 c4o6)
(f c4o34 c4o6)
)
(=>
(g2 c4o7)
(f c4o34 c4o7)
)
(=>
(g2 c4o8)
(f c4o34 c4o8)
)
(=>
(g2 c4o9)
(f c4o34 c4o9)
)
(=>
(g2 c4o10)
(f c4o34 c4o10)
)
(=>
(g2 c4o11)
(f c4o34 c4o11)
)
(=>
(g2 c4o12)
(f c4o34 c4o12)
)
(=>
(g2 c4o13)
(f c4o34 c4o13)
)
(=>
(g2 c4o14)
(f c4o34 c4o14)
)
(=>
(g2 c4o15)
(f c4o34 c4o15)
)
(=>
(g2 c4o16)
(f c4o34 c4o16)
)
(=>
(g2 c4o17)
(f c4o34 c4o17)
)
(=>
(g2 c4o18)
(f c4o34 c4o18)
)
(=>
(g2 c4o19)
(f c4o34 c4o19)
)
(=>
(g2 c4o20)
(f c4o34 c4o20)
)
(=>
(g2 c4o21)
(f c4o34 c4o21)
)
(=>
(g2 c4o22)
(f c4o34 c4o22)
)
(=>
(g2 c4o23)
(f c4o34 c4o23)
)
(=>
(g2 c4o24)
(f c4o34 c4o24)
)
(=>
(g2 c4o25)
(f c4o34 c4o25)
)
(=>
(g2 c4o26)
(f c4o34 c4o26)
)
(=>
(g2 c4o27)
(f c4o34 c4o27)
)
(=>
(g2 c4o28)
(f c4o34 c4o28)
)
(=>
(g2 c4o29)
(f c4o34 c4o29)
)
(=>
(g2 c4o30)
(f c4o34 c4o30)
)
(=>
(g2 c4o31)
(f c4o34 c4o31)
)
(=>
(g2 c4o32)
(f c4o34 c4o32)
)
(=>
(g2 c4o33)
(f c4o34 c4o33)
)
(=>
(g2 c4o34)
(f c4o34 c4o34)
)
(=>
(g2 c4o35)
(f c4o34 c4o35)
)
(=>
(g2 c4o36)
(f c4o34 c4o36)
)
)
)
)
(=>
(g1 c4o35)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o35 c4o1)
)
(=>
(g2 c4o2)
(f c4o35 c4o2)
)
(=>
(g2 c4o3)
(f c4o35 c4o3)
)
(=>
(g2 c4o4)
(f c4o35 c4o4)
)
(=>
(g2 c4o5)
(f c4o35 c4o5)
)
(=>
(g2 c4o6)
(f c4o35 c4o6)
)
(=>
(g2 c4o7)
(f c4o35 c4o7)
)
(=>
(g2 c4o8)
(f c4o35 c4o8)
)
(=>
(g2 c4o9)
(f c4o35 c4o9)
)
(=>
(g2 c4o10)
(f c4o35 c4o10)
)
(=>
(g2 c4o11)
(f c4o35 c4o11)
)
(=>
(g2 c4o12)
(f c4o35 c4o12)
)
(=>
(g2 c4o13)
(f c4o35 c4o13)
)
(=>
(g2 c4o14)
(f c4o35 c4o14)
)
(=>
(g2 c4o15)
(f c4o35 c4o15)
)
(=>
(g2 c4o16)
(f c4o35 c4o16)
)
(=>
(g2 c4o17)
(f c4o35 c4o17)
)
(=>
(g2 c4o18)
(f c4o35 c4o18)
)
(=>
(g2 c4o19)
(f c4o35 c4o19)
)
(=>
(g2 c4o20)
(f c4o35 c4o20)
)
(=>
(g2 c4o21)
(f c4o35 c4o21)
)
(=>
(g2 c4o22)
(f c4o35 c4o22)
)
(=>
(g2 c4o23)
(f c4o35 c4o23)
)
(=>
(g2 c4o24)
(f c4o35 c4o24)
)
(=>
(g2 c4o25)
(f c4o35 c4o25)
)
(=>
(g2 c4o26)
(f c4o35 c4o26)
)
(=>
(g2 c4o27)
(f c4o35 c4o27)
)
(=>
(g2 c4o28)
(f c4o35 c4o28)
)
(=>
(g2 c4o29)
(f c4o35 c4o29)
)
(=>
(g2 c4o30)
(f c4o35 c4o30)
)
(=>
(g2 c4o31)
(f c4o35 c4o31)
)
(=>
(g2 c4o32)
(f c4o35 c4o32)
)
(=>
(g2 c4o33)
(f c4o35 c4o33)
)
(=>
(g2 c4o34)
(f c4o35 c4o34)
)
(=>
(g2 c4o35)
(f c4o35 c4o35)
)
(=>
(g2 c4o36)
(f c4o35 c4o36)
)
)
)
)
(=>
(g1 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o36 c4o1)
)
(=>
(g2 c4o2)
(f c4o36 c4o2)
)
(=>
(g2 c4o3)
(f c4o36 c4o3)
)
(=>
(g2 c4o4)
(f c4o36 c4o4)
)
(=>
(g2 c4o5)
(f c4o36 c4o5)
)
(=>
(g2 c4o6)
(f c4o36 c4o6)
)
(=>
(g2 c4o7)
(f c4o36 c4o7)
)
(=>
(g2 c4o8)
(f c4o36 c4o8)
)
(=>
(g2 c4o9)
(f c4o36 c4o9)
)
(=>
(g2 c4o10)
(f c4o36 c4o10)
)
(=>
(g2 c4o11)
(f c4o36 c4o11)
)
(=>
(g2 c4o12)
(f c4o36 c4o12)
)
(=>
(g2 c4o13)
(f c4o36 c4o13)
)
(=>
(g2 c4o14)
(f c4o36 c4o14)
)
(=>
(g2 c4o15)
(f c4o36 c4o15)
)
(=>
(g2 c4o16)
(f c4o36 c4o16)
)
(=>
(g2 c4o17)
(f c4o36 c4o17)
)
(=>
(g2 c4o18)
(f c4o36 c4o18)
)
(=>
(g2 c4o19)
(f c4o36 c4o19)
)
(=>
(g2 c4o20)
(f c4o36 c4o20)
)
(=>
(g2 c4o21)
(f c4o36 c4o21)
)
(=>
(g2 c4o22)
(f c4o36 c4o22)
)
(=>
(g2 c4o23)
(f c4o36 c4o23)
)
(=>
(g2 c4o24)
(f c4o36 c4o24)
)
(=>
(g2 c4o25)
(f c4o36 c4o25)
)
(=>
(g2 c4o26)
(f c4o36 c4o26)
)
(=>
(g2 c4o27)
(f c4o36 c4o27)
)
(=>
(g2 c4o28)
(f c4o36 c4o28)
)
(=>
(g2 c4o29)
(f c4o36 c4o29)
)
(=>
(g2 c4o30)
(f c4o36 c4o30)
)
(=>
(g2 c4o31)
(f c4o36 c4o31)
)
(=>
(g2 c4o32)
(f c4o36 c4o32)
)
(=>
(g2 c4o33)
(f c4o36 c4o33)
)
(=>
(g2 c4o34)
(f c4o36 c4o34)
)
(=>
(g2 c4o35)
(f c4o36 c4o35)
)
(=>
(g2 c4o36)
(f c4o36 c4o36)
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
(g1 c4o10)
(g1 c4o11)
(g1 c4o12)
(g1 c4o13)
(g1 c4o14)
(g1 c4o15)
(g1 c4o16)
(g1 c4o17)
(g1 c4o18)
(g1 c4o19)
(g1 c4o20)
(g1 c4o21)
(g1 c4o22)
(g1 c4o23)
(g1 c4o24)
(g1 c4o25)
(g1 c4o26)
(g1 c4o27)
(g1 c4o28)
(g1 c4o29)
(g1 c4o30)
(g1 c4o31)
(g1 c4o32)
(g1 c4o33)
(g1 c4o34)
(g1 c4o35)
(g1 c4o36)
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
(and
(g2 c4o10)
(f c4o1 c4o10)
)
(and
(g2 c4o11)
(f c4o1 c4o11)
)
(and
(g2 c4o12)
(f c4o1 c4o12)
)
(and
(g2 c4o13)
(f c4o1 c4o13)
)
(and
(g2 c4o14)
(f c4o1 c4o14)
)
(and
(g2 c4o15)
(f c4o1 c4o15)
)
(and
(g2 c4o16)
(f c4o1 c4o16)
)
(and
(g2 c4o17)
(f c4o1 c4o17)
)
(and
(g2 c4o18)
(f c4o1 c4o18)
)
(and
(g2 c4o19)
(f c4o1 c4o19)
)
(and
(g2 c4o20)
(f c4o1 c4o20)
)
(and
(g2 c4o21)
(f c4o1 c4o21)
)
(and
(g2 c4o22)
(f c4o1 c4o22)
)
(and
(g2 c4o23)
(f c4o1 c4o23)
)
(and
(g2 c4o24)
(f c4o1 c4o24)
)
(and
(g2 c4o25)
(f c4o1 c4o25)
)
(and
(g2 c4o26)
(f c4o1 c4o26)
)
(and
(g2 c4o27)
(f c4o1 c4o27)
)
(and
(g2 c4o28)
(f c4o1 c4o28)
)
(and
(g2 c4o29)
(f c4o1 c4o29)
)
(and
(g2 c4o30)
(f c4o1 c4o30)
)
(and
(g2 c4o31)
(f c4o1 c4o31)
)
(and
(g2 c4o32)
(f c4o1 c4o32)
)
(and
(g2 c4o33)
(f c4o1 c4o33)
)
(and
(g2 c4o34)
(f c4o1 c4o34)
)
(and
(g2 c4o35)
(f c4o1 c4o35)
)
(and
(g2 c4o36)
(f c4o1 c4o36)
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
(and
(g2 c4o10)
(f c4o2 c4o10)
)
(and
(g2 c4o11)
(f c4o2 c4o11)
)
(and
(g2 c4o12)
(f c4o2 c4o12)
)
(and
(g2 c4o13)
(f c4o2 c4o13)
)
(and
(g2 c4o14)
(f c4o2 c4o14)
)
(and
(g2 c4o15)
(f c4o2 c4o15)
)
(and
(g2 c4o16)
(f c4o2 c4o16)
)
(and
(g2 c4o17)
(f c4o2 c4o17)
)
(and
(g2 c4o18)
(f c4o2 c4o18)
)
(and
(g2 c4o19)
(f c4o2 c4o19)
)
(and
(g2 c4o20)
(f c4o2 c4o20)
)
(and
(g2 c4o21)
(f c4o2 c4o21)
)
(and
(g2 c4o22)
(f c4o2 c4o22)
)
(and
(g2 c4o23)
(f c4o2 c4o23)
)
(and
(g2 c4o24)
(f c4o2 c4o24)
)
(and
(g2 c4o25)
(f c4o2 c4o25)
)
(and
(g2 c4o26)
(f c4o2 c4o26)
)
(and
(g2 c4o27)
(f c4o2 c4o27)
)
(and
(g2 c4o28)
(f c4o2 c4o28)
)
(and
(g2 c4o29)
(f c4o2 c4o29)
)
(and
(g2 c4o30)
(f c4o2 c4o30)
)
(and
(g2 c4o31)
(f c4o2 c4o31)
)
(and
(g2 c4o32)
(f c4o2 c4o32)
)
(and
(g2 c4o33)
(f c4o2 c4o33)
)
(and
(g2 c4o34)
(f c4o2 c4o34)
)
(and
(g2 c4o35)
(f c4o2 c4o35)
)
(and
(g2 c4o36)
(f c4o2 c4o36)
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
(and
(g2 c4o10)
(f c4o3 c4o10)
)
(and
(g2 c4o11)
(f c4o3 c4o11)
)
(and
(g2 c4o12)
(f c4o3 c4o12)
)
(and
(g2 c4o13)
(f c4o3 c4o13)
)
(and
(g2 c4o14)
(f c4o3 c4o14)
)
(and
(g2 c4o15)
(f c4o3 c4o15)
)
(and
(g2 c4o16)
(f c4o3 c4o16)
)
(and
(g2 c4o17)
(f c4o3 c4o17)
)
(and
(g2 c4o18)
(f c4o3 c4o18)
)
(and
(g2 c4o19)
(f c4o3 c4o19)
)
(and
(g2 c4o20)
(f c4o3 c4o20)
)
(and
(g2 c4o21)
(f c4o3 c4o21)
)
(and
(g2 c4o22)
(f c4o3 c4o22)
)
(and
(g2 c4o23)
(f c4o3 c4o23)
)
(and
(g2 c4o24)
(f c4o3 c4o24)
)
(and
(g2 c4o25)
(f c4o3 c4o25)
)
(and
(g2 c4o26)
(f c4o3 c4o26)
)
(and
(g2 c4o27)
(f c4o3 c4o27)
)
(and
(g2 c4o28)
(f c4o3 c4o28)
)
(and
(g2 c4o29)
(f c4o3 c4o29)
)
(and
(g2 c4o30)
(f c4o3 c4o30)
)
(and
(g2 c4o31)
(f c4o3 c4o31)
)
(and
(g2 c4o32)
(f c4o3 c4o32)
)
(and
(g2 c4o33)
(f c4o3 c4o33)
)
(and
(g2 c4o34)
(f c4o3 c4o34)
)
(and
(g2 c4o35)
(f c4o3 c4o35)
)
(and
(g2 c4o36)
(f c4o3 c4o36)
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
(and
(g2 c4o10)
(f c4o4 c4o10)
)
(and
(g2 c4o11)
(f c4o4 c4o11)
)
(and
(g2 c4o12)
(f c4o4 c4o12)
)
(and
(g2 c4o13)
(f c4o4 c4o13)
)
(and
(g2 c4o14)
(f c4o4 c4o14)
)
(and
(g2 c4o15)
(f c4o4 c4o15)
)
(and
(g2 c4o16)
(f c4o4 c4o16)
)
(and
(g2 c4o17)
(f c4o4 c4o17)
)
(and
(g2 c4o18)
(f c4o4 c4o18)
)
(and
(g2 c4o19)
(f c4o4 c4o19)
)
(and
(g2 c4o20)
(f c4o4 c4o20)
)
(and
(g2 c4o21)
(f c4o4 c4o21)
)
(and
(g2 c4o22)
(f c4o4 c4o22)
)
(and
(g2 c4o23)
(f c4o4 c4o23)
)
(and
(g2 c4o24)
(f c4o4 c4o24)
)
(and
(g2 c4o25)
(f c4o4 c4o25)
)
(and
(g2 c4o26)
(f c4o4 c4o26)
)
(and
(g2 c4o27)
(f c4o4 c4o27)
)
(and
(g2 c4o28)
(f c4o4 c4o28)
)
(and
(g2 c4o29)
(f c4o4 c4o29)
)
(and
(g2 c4o30)
(f c4o4 c4o30)
)
(and
(g2 c4o31)
(f c4o4 c4o31)
)
(and
(g2 c4o32)
(f c4o4 c4o32)
)
(and
(g2 c4o33)
(f c4o4 c4o33)
)
(and
(g2 c4o34)
(f c4o4 c4o34)
)
(and
(g2 c4o35)
(f c4o4 c4o35)
)
(and
(g2 c4o36)
(f c4o4 c4o36)
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
(and
(g2 c4o10)
(f c4o5 c4o10)
)
(and
(g2 c4o11)
(f c4o5 c4o11)
)
(and
(g2 c4o12)
(f c4o5 c4o12)
)
(and
(g2 c4o13)
(f c4o5 c4o13)
)
(and
(g2 c4o14)
(f c4o5 c4o14)
)
(and
(g2 c4o15)
(f c4o5 c4o15)
)
(and
(g2 c4o16)
(f c4o5 c4o16)
)
(and
(g2 c4o17)
(f c4o5 c4o17)
)
(and
(g2 c4o18)
(f c4o5 c4o18)
)
(and
(g2 c4o19)
(f c4o5 c4o19)
)
(and
(g2 c4o20)
(f c4o5 c4o20)
)
(and
(g2 c4o21)
(f c4o5 c4o21)
)
(and
(g2 c4o22)
(f c4o5 c4o22)
)
(and
(g2 c4o23)
(f c4o5 c4o23)
)
(and
(g2 c4o24)
(f c4o5 c4o24)
)
(and
(g2 c4o25)
(f c4o5 c4o25)
)
(and
(g2 c4o26)
(f c4o5 c4o26)
)
(and
(g2 c4o27)
(f c4o5 c4o27)
)
(and
(g2 c4o28)
(f c4o5 c4o28)
)
(and
(g2 c4o29)
(f c4o5 c4o29)
)
(and
(g2 c4o30)
(f c4o5 c4o30)
)
(and
(g2 c4o31)
(f c4o5 c4o31)
)
(and
(g2 c4o32)
(f c4o5 c4o32)
)
(and
(g2 c4o33)
(f c4o5 c4o33)
)
(and
(g2 c4o34)
(f c4o5 c4o34)
)
(and
(g2 c4o35)
(f c4o5 c4o35)
)
(and
(g2 c4o36)
(f c4o5 c4o36)
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
(and
(g2 c4o10)
(f c4o6 c4o10)
)
(and
(g2 c4o11)
(f c4o6 c4o11)
)
(and
(g2 c4o12)
(f c4o6 c4o12)
)
(and
(g2 c4o13)
(f c4o6 c4o13)
)
(and
(g2 c4o14)
(f c4o6 c4o14)
)
(and
(g2 c4o15)
(f c4o6 c4o15)
)
(and
(g2 c4o16)
(f c4o6 c4o16)
)
(and
(g2 c4o17)
(f c4o6 c4o17)
)
(and
(g2 c4o18)
(f c4o6 c4o18)
)
(and
(g2 c4o19)
(f c4o6 c4o19)
)
(and
(g2 c4o20)
(f c4o6 c4o20)
)
(and
(g2 c4o21)
(f c4o6 c4o21)
)
(and
(g2 c4o22)
(f c4o6 c4o22)
)
(and
(g2 c4o23)
(f c4o6 c4o23)
)
(and
(g2 c4o24)
(f c4o6 c4o24)
)
(and
(g2 c4o25)
(f c4o6 c4o25)
)
(and
(g2 c4o26)
(f c4o6 c4o26)
)
(and
(g2 c4o27)
(f c4o6 c4o27)
)
(and
(g2 c4o28)
(f c4o6 c4o28)
)
(and
(g2 c4o29)
(f c4o6 c4o29)
)
(and
(g2 c4o30)
(f c4o6 c4o30)
)
(and
(g2 c4o31)
(f c4o6 c4o31)
)
(and
(g2 c4o32)
(f c4o6 c4o32)
)
(and
(g2 c4o33)
(f c4o6 c4o33)
)
(and
(g2 c4o34)
(f c4o6 c4o34)
)
(and
(g2 c4o35)
(f c4o6 c4o35)
)
(and
(g2 c4o36)
(f c4o6 c4o36)
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
(and
(g2 c4o10)
(f c4o7 c4o10)
)
(and
(g2 c4o11)
(f c4o7 c4o11)
)
(and
(g2 c4o12)
(f c4o7 c4o12)
)
(and
(g2 c4o13)
(f c4o7 c4o13)
)
(and
(g2 c4o14)
(f c4o7 c4o14)
)
(and
(g2 c4o15)
(f c4o7 c4o15)
)
(and
(g2 c4o16)
(f c4o7 c4o16)
)
(and
(g2 c4o17)
(f c4o7 c4o17)
)
(and
(g2 c4o18)
(f c4o7 c4o18)
)
(and
(g2 c4o19)
(f c4o7 c4o19)
)
(and
(g2 c4o20)
(f c4o7 c4o20)
)
(and
(g2 c4o21)
(f c4o7 c4o21)
)
(and
(g2 c4o22)
(f c4o7 c4o22)
)
(and
(g2 c4o23)
(f c4o7 c4o23)
)
(and
(g2 c4o24)
(f c4o7 c4o24)
)
(and
(g2 c4o25)
(f c4o7 c4o25)
)
(and
(g2 c4o26)
(f c4o7 c4o26)
)
(and
(g2 c4o27)
(f c4o7 c4o27)
)
(and
(g2 c4o28)
(f c4o7 c4o28)
)
(and
(g2 c4o29)
(f c4o7 c4o29)
)
(and
(g2 c4o30)
(f c4o7 c4o30)
)
(and
(g2 c4o31)
(f c4o7 c4o31)
)
(and
(g2 c4o32)
(f c4o7 c4o32)
)
(and
(g2 c4o33)
(f c4o7 c4o33)
)
(and
(g2 c4o34)
(f c4o7 c4o34)
)
(and
(g2 c4o35)
(f c4o7 c4o35)
)
(and
(g2 c4o36)
(f c4o7 c4o36)
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
(and
(g2 c4o10)
(f c4o8 c4o10)
)
(and
(g2 c4o11)
(f c4o8 c4o11)
)
(and
(g2 c4o12)
(f c4o8 c4o12)
)
(and
(g2 c4o13)
(f c4o8 c4o13)
)
(and
(g2 c4o14)
(f c4o8 c4o14)
)
(and
(g2 c4o15)
(f c4o8 c4o15)
)
(and
(g2 c4o16)
(f c4o8 c4o16)
)
(and
(g2 c4o17)
(f c4o8 c4o17)
)
(and
(g2 c4o18)
(f c4o8 c4o18)
)
(and
(g2 c4o19)
(f c4o8 c4o19)
)
(and
(g2 c4o20)
(f c4o8 c4o20)
)
(and
(g2 c4o21)
(f c4o8 c4o21)
)
(and
(g2 c4o22)
(f c4o8 c4o22)
)
(and
(g2 c4o23)
(f c4o8 c4o23)
)
(and
(g2 c4o24)
(f c4o8 c4o24)
)
(and
(g2 c4o25)
(f c4o8 c4o25)
)
(and
(g2 c4o26)
(f c4o8 c4o26)
)
(and
(g2 c4o27)
(f c4o8 c4o27)
)
(and
(g2 c4o28)
(f c4o8 c4o28)
)
(and
(g2 c4o29)
(f c4o8 c4o29)
)
(and
(g2 c4o30)
(f c4o8 c4o30)
)
(and
(g2 c4o31)
(f c4o8 c4o31)
)
(and
(g2 c4o32)
(f c4o8 c4o32)
)
(and
(g2 c4o33)
(f c4o8 c4o33)
)
(and
(g2 c4o34)
(f c4o8 c4o34)
)
(and
(g2 c4o35)
(f c4o8 c4o35)
)
(and
(g2 c4o36)
(f c4o8 c4o36)
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
(and
(g2 c4o10)
(f c4o9 c4o10)
)
(and
(g2 c4o11)
(f c4o9 c4o11)
)
(and
(g2 c4o12)
(f c4o9 c4o12)
)
(and
(g2 c4o13)
(f c4o9 c4o13)
)
(and
(g2 c4o14)
(f c4o9 c4o14)
)
(and
(g2 c4o15)
(f c4o9 c4o15)
)
(and
(g2 c4o16)
(f c4o9 c4o16)
)
(and
(g2 c4o17)
(f c4o9 c4o17)
)
(and
(g2 c4o18)
(f c4o9 c4o18)
)
(and
(g2 c4o19)
(f c4o9 c4o19)
)
(and
(g2 c4o20)
(f c4o9 c4o20)
)
(and
(g2 c4o21)
(f c4o9 c4o21)
)
(and
(g2 c4o22)
(f c4o9 c4o22)
)
(and
(g2 c4o23)
(f c4o9 c4o23)
)
(and
(g2 c4o24)
(f c4o9 c4o24)
)
(and
(g2 c4o25)
(f c4o9 c4o25)
)
(and
(g2 c4o26)
(f c4o9 c4o26)
)
(and
(g2 c4o27)
(f c4o9 c4o27)
)
(and
(g2 c4o28)
(f c4o9 c4o28)
)
(and
(g2 c4o29)
(f c4o9 c4o29)
)
(and
(g2 c4o30)
(f c4o9 c4o30)
)
(and
(g2 c4o31)
(f c4o9 c4o31)
)
(and
(g2 c4o32)
(f c4o9 c4o32)
)
(and
(g2 c4o33)
(f c4o9 c4o33)
)
(and
(g2 c4o34)
(f c4o9 c4o34)
)
(and
(g2 c4o35)
(f c4o9 c4o35)
)
(and
(g2 c4o36)
(f c4o9 c4o36)
)
)
)
(=>
(g1 c4o10)
(or
(and
(g2 c4o1)
(f c4o10 c4o1)
)
(and
(g2 c4o2)
(f c4o10 c4o2)
)
(and
(g2 c4o3)
(f c4o10 c4o3)
)
(and
(g2 c4o4)
(f c4o10 c4o4)
)
(and
(g2 c4o5)
(f c4o10 c4o5)
)
(and
(g2 c4o6)
(f c4o10 c4o6)
)
(and
(g2 c4o7)
(f c4o10 c4o7)
)
(and
(g2 c4o8)
(f c4o10 c4o8)
)
(and
(g2 c4o9)
(f c4o10 c4o9)
)
(and
(g2 c4o10)
(f c4o10 c4o10)
)
(and
(g2 c4o11)
(f c4o10 c4o11)
)
(and
(g2 c4o12)
(f c4o10 c4o12)
)
(and
(g2 c4o13)
(f c4o10 c4o13)
)
(and
(g2 c4o14)
(f c4o10 c4o14)
)
(and
(g2 c4o15)
(f c4o10 c4o15)
)
(and
(g2 c4o16)
(f c4o10 c4o16)
)
(and
(g2 c4o17)
(f c4o10 c4o17)
)
(and
(g2 c4o18)
(f c4o10 c4o18)
)
(and
(g2 c4o19)
(f c4o10 c4o19)
)
(and
(g2 c4o20)
(f c4o10 c4o20)
)
(and
(g2 c4o21)
(f c4o10 c4o21)
)
(and
(g2 c4o22)
(f c4o10 c4o22)
)
(and
(g2 c4o23)
(f c4o10 c4o23)
)
(and
(g2 c4o24)
(f c4o10 c4o24)
)
(and
(g2 c4o25)
(f c4o10 c4o25)
)
(and
(g2 c4o26)
(f c4o10 c4o26)
)
(and
(g2 c4o27)
(f c4o10 c4o27)
)
(and
(g2 c4o28)
(f c4o10 c4o28)
)
(and
(g2 c4o29)
(f c4o10 c4o29)
)
(and
(g2 c4o30)
(f c4o10 c4o30)
)
(and
(g2 c4o31)
(f c4o10 c4o31)
)
(and
(g2 c4o32)
(f c4o10 c4o32)
)
(and
(g2 c4o33)
(f c4o10 c4o33)
)
(and
(g2 c4o34)
(f c4o10 c4o34)
)
(and
(g2 c4o35)
(f c4o10 c4o35)
)
(and
(g2 c4o36)
(f c4o10 c4o36)
)
)
)
(=>
(g1 c4o11)
(or
(and
(g2 c4o1)
(f c4o11 c4o1)
)
(and
(g2 c4o2)
(f c4o11 c4o2)
)
(and
(g2 c4o3)
(f c4o11 c4o3)
)
(and
(g2 c4o4)
(f c4o11 c4o4)
)
(and
(g2 c4o5)
(f c4o11 c4o5)
)
(and
(g2 c4o6)
(f c4o11 c4o6)
)
(and
(g2 c4o7)
(f c4o11 c4o7)
)
(and
(g2 c4o8)
(f c4o11 c4o8)
)
(and
(g2 c4o9)
(f c4o11 c4o9)
)
(and
(g2 c4o10)
(f c4o11 c4o10)
)
(and
(g2 c4o11)
(f c4o11 c4o11)
)
(and
(g2 c4o12)
(f c4o11 c4o12)
)
(and
(g2 c4o13)
(f c4o11 c4o13)
)
(and
(g2 c4o14)
(f c4o11 c4o14)
)
(and
(g2 c4o15)
(f c4o11 c4o15)
)
(and
(g2 c4o16)
(f c4o11 c4o16)
)
(and
(g2 c4o17)
(f c4o11 c4o17)
)
(and
(g2 c4o18)
(f c4o11 c4o18)
)
(and
(g2 c4o19)
(f c4o11 c4o19)
)
(and
(g2 c4o20)
(f c4o11 c4o20)
)
(and
(g2 c4o21)
(f c4o11 c4o21)
)
(and
(g2 c4o22)
(f c4o11 c4o22)
)
(and
(g2 c4o23)
(f c4o11 c4o23)
)
(and
(g2 c4o24)
(f c4o11 c4o24)
)
(and
(g2 c4o25)
(f c4o11 c4o25)
)
(and
(g2 c4o26)
(f c4o11 c4o26)
)
(and
(g2 c4o27)
(f c4o11 c4o27)
)
(and
(g2 c4o28)
(f c4o11 c4o28)
)
(and
(g2 c4o29)
(f c4o11 c4o29)
)
(and
(g2 c4o30)
(f c4o11 c4o30)
)
(and
(g2 c4o31)
(f c4o11 c4o31)
)
(and
(g2 c4o32)
(f c4o11 c4o32)
)
(and
(g2 c4o33)
(f c4o11 c4o33)
)
(and
(g2 c4o34)
(f c4o11 c4o34)
)
(and
(g2 c4o35)
(f c4o11 c4o35)
)
(and
(g2 c4o36)
(f c4o11 c4o36)
)
)
)
(=>
(g1 c4o12)
(or
(and
(g2 c4o1)
(f c4o12 c4o1)
)
(and
(g2 c4o2)
(f c4o12 c4o2)
)
(and
(g2 c4o3)
(f c4o12 c4o3)
)
(and
(g2 c4o4)
(f c4o12 c4o4)
)
(and
(g2 c4o5)
(f c4o12 c4o5)
)
(and
(g2 c4o6)
(f c4o12 c4o6)
)
(and
(g2 c4o7)
(f c4o12 c4o7)
)
(and
(g2 c4o8)
(f c4o12 c4o8)
)
(and
(g2 c4o9)
(f c4o12 c4o9)
)
(and
(g2 c4o10)
(f c4o12 c4o10)
)
(and
(g2 c4o11)
(f c4o12 c4o11)
)
(and
(g2 c4o12)
(f c4o12 c4o12)
)
(and
(g2 c4o13)
(f c4o12 c4o13)
)
(and
(g2 c4o14)
(f c4o12 c4o14)
)
(and
(g2 c4o15)
(f c4o12 c4o15)
)
(and
(g2 c4o16)
(f c4o12 c4o16)
)
(and
(g2 c4o17)
(f c4o12 c4o17)
)
(and
(g2 c4o18)
(f c4o12 c4o18)
)
(and
(g2 c4o19)
(f c4o12 c4o19)
)
(and
(g2 c4o20)
(f c4o12 c4o20)
)
(and
(g2 c4o21)
(f c4o12 c4o21)
)
(and
(g2 c4o22)
(f c4o12 c4o22)
)
(and
(g2 c4o23)
(f c4o12 c4o23)
)
(and
(g2 c4o24)
(f c4o12 c4o24)
)
(and
(g2 c4o25)
(f c4o12 c4o25)
)
(and
(g2 c4o26)
(f c4o12 c4o26)
)
(and
(g2 c4o27)
(f c4o12 c4o27)
)
(and
(g2 c4o28)
(f c4o12 c4o28)
)
(and
(g2 c4o29)
(f c4o12 c4o29)
)
(and
(g2 c4o30)
(f c4o12 c4o30)
)
(and
(g2 c4o31)
(f c4o12 c4o31)
)
(and
(g2 c4o32)
(f c4o12 c4o32)
)
(and
(g2 c4o33)
(f c4o12 c4o33)
)
(and
(g2 c4o34)
(f c4o12 c4o34)
)
(and
(g2 c4o35)
(f c4o12 c4o35)
)
(and
(g2 c4o36)
(f c4o12 c4o36)
)
)
)
(=>
(g1 c4o13)
(or
(and
(g2 c4o1)
(f c4o13 c4o1)
)
(and
(g2 c4o2)
(f c4o13 c4o2)
)
(and
(g2 c4o3)
(f c4o13 c4o3)
)
(and
(g2 c4o4)
(f c4o13 c4o4)
)
(and
(g2 c4o5)
(f c4o13 c4o5)
)
(and
(g2 c4o6)
(f c4o13 c4o6)
)
(and
(g2 c4o7)
(f c4o13 c4o7)
)
(and
(g2 c4o8)
(f c4o13 c4o8)
)
(and
(g2 c4o9)
(f c4o13 c4o9)
)
(and
(g2 c4o10)
(f c4o13 c4o10)
)
(and
(g2 c4o11)
(f c4o13 c4o11)
)
(and
(g2 c4o12)
(f c4o13 c4o12)
)
(and
(g2 c4o13)
(f c4o13 c4o13)
)
(and
(g2 c4o14)
(f c4o13 c4o14)
)
(and
(g2 c4o15)
(f c4o13 c4o15)
)
(and
(g2 c4o16)
(f c4o13 c4o16)
)
(and
(g2 c4o17)
(f c4o13 c4o17)
)
(and
(g2 c4o18)
(f c4o13 c4o18)
)
(and
(g2 c4o19)
(f c4o13 c4o19)
)
(and
(g2 c4o20)
(f c4o13 c4o20)
)
(and
(g2 c4o21)
(f c4o13 c4o21)
)
(and
(g2 c4o22)
(f c4o13 c4o22)
)
(and
(g2 c4o23)
(f c4o13 c4o23)
)
(and
(g2 c4o24)
(f c4o13 c4o24)
)
(and
(g2 c4o25)
(f c4o13 c4o25)
)
(and
(g2 c4o26)
(f c4o13 c4o26)
)
(and
(g2 c4o27)
(f c4o13 c4o27)
)
(and
(g2 c4o28)
(f c4o13 c4o28)
)
(and
(g2 c4o29)
(f c4o13 c4o29)
)
(and
(g2 c4o30)
(f c4o13 c4o30)
)
(and
(g2 c4o31)
(f c4o13 c4o31)
)
(and
(g2 c4o32)
(f c4o13 c4o32)
)
(and
(g2 c4o33)
(f c4o13 c4o33)
)
(and
(g2 c4o34)
(f c4o13 c4o34)
)
(and
(g2 c4o35)
(f c4o13 c4o35)
)
(and
(g2 c4o36)
(f c4o13 c4o36)
)
)
)
(=>
(g1 c4o14)
(or
(and
(g2 c4o1)
(f c4o14 c4o1)
)
(and
(g2 c4o2)
(f c4o14 c4o2)
)
(and
(g2 c4o3)
(f c4o14 c4o3)
)
(and
(g2 c4o4)
(f c4o14 c4o4)
)
(and
(g2 c4o5)
(f c4o14 c4o5)
)
(and
(g2 c4o6)
(f c4o14 c4o6)
)
(and
(g2 c4o7)
(f c4o14 c4o7)
)
(and
(g2 c4o8)
(f c4o14 c4o8)
)
(and
(g2 c4o9)
(f c4o14 c4o9)
)
(and
(g2 c4o10)
(f c4o14 c4o10)
)
(and
(g2 c4o11)
(f c4o14 c4o11)
)
(and
(g2 c4o12)
(f c4o14 c4o12)
)
(and
(g2 c4o13)
(f c4o14 c4o13)
)
(and
(g2 c4o14)
(f c4o14 c4o14)
)
(and
(g2 c4o15)
(f c4o14 c4o15)
)
(and
(g2 c4o16)
(f c4o14 c4o16)
)
(and
(g2 c4o17)
(f c4o14 c4o17)
)
(and
(g2 c4o18)
(f c4o14 c4o18)
)
(and
(g2 c4o19)
(f c4o14 c4o19)
)
(and
(g2 c4o20)
(f c4o14 c4o20)
)
(and
(g2 c4o21)
(f c4o14 c4o21)
)
(and
(g2 c4o22)
(f c4o14 c4o22)
)
(and
(g2 c4o23)
(f c4o14 c4o23)
)
(and
(g2 c4o24)
(f c4o14 c4o24)
)
(and
(g2 c4o25)
(f c4o14 c4o25)
)
(and
(g2 c4o26)
(f c4o14 c4o26)
)
(and
(g2 c4o27)
(f c4o14 c4o27)
)
(and
(g2 c4o28)
(f c4o14 c4o28)
)
(and
(g2 c4o29)
(f c4o14 c4o29)
)
(and
(g2 c4o30)
(f c4o14 c4o30)
)
(and
(g2 c4o31)
(f c4o14 c4o31)
)
(and
(g2 c4o32)
(f c4o14 c4o32)
)
(and
(g2 c4o33)
(f c4o14 c4o33)
)
(and
(g2 c4o34)
(f c4o14 c4o34)
)
(and
(g2 c4o35)
(f c4o14 c4o35)
)
(and
(g2 c4o36)
(f c4o14 c4o36)
)
)
)
(=>
(g1 c4o15)
(or
(and
(g2 c4o1)
(f c4o15 c4o1)
)
(and
(g2 c4o2)
(f c4o15 c4o2)
)
(and
(g2 c4o3)
(f c4o15 c4o3)
)
(and
(g2 c4o4)
(f c4o15 c4o4)
)
(and
(g2 c4o5)
(f c4o15 c4o5)
)
(and
(g2 c4o6)
(f c4o15 c4o6)
)
(and
(g2 c4o7)
(f c4o15 c4o7)
)
(and
(g2 c4o8)
(f c4o15 c4o8)
)
(and
(g2 c4o9)
(f c4o15 c4o9)
)
(and
(g2 c4o10)
(f c4o15 c4o10)
)
(and
(g2 c4o11)
(f c4o15 c4o11)
)
(and
(g2 c4o12)
(f c4o15 c4o12)
)
(and
(g2 c4o13)
(f c4o15 c4o13)
)
(and
(g2 c4o14)
(f c4o15 c4o14)
)
(and
(g2 c4o15)
(f c4o15 c4o15)
)
(and
(g2 c4o16)
(f c4o15 c4o16)
)
(and
(g2 c4o17)
(f c4o15 c4o17)
)
(and
(g2 c4o18)
(f c4o15 c4o18)
)
(and
(g2 c4o19)
(f c4o15 c4o19)
)
(and
(g2 c4o20)
(f c4o15 c4o20)
)
(and
(g2 c4o21)
(f c4o15 c4o21)
)
(and
(g2 c4o22)
(f c4o15 c4o22)
)
(and
(g2 c4o23)
(f c4o15 c4o23)
)
(and
(g2 c4o24)
(f c4o15 c4o24)
)
(and
(g2 c4o25)
(f c4o15 c4o25)
)
(and
(g2 c4o26)
(f c4o15 c4o26)
)
(and
(g2 c4o27)
(f c4o15 c4o27)
)
(and
(g2 c4o28)
(f c4o15 c4o28)
)
(and
(g2 c4o29)
(f c4o15 c4o29)
)
(and
(g2 c4o30)
(f c4o15 c4o30)
)
(and
(g2 c4o31)
(f c4o15 c4o31)
)
(and
(g2 c4o32)
(f c4o15 c4o32)
)
(and
(g2 c4o33)
(f c4o15 c4o33)
)
(and
(g2 c4o34)
(f c4o15 c4o34)
)
(and
(g2 c4o35)
(f c4o15 c4o35)
)
(and
(g2 c4o36)
(f c4o15 c4o36)
)
)
)
(=>
(g1 c4o16)
(or
(and
(g2 c4o1)
(f c4o16 c4o1)
)
(and
(g2 c4o2)
(f c4o16 c4o2)
)
(and
(g2 c4o3)
(f c4o16 c4o3)
)
(and
(g2 c4o4)
(f c4o16 c4o4)
)
(and
(g2 c4o5)
(f c4o16 c4o5)
)
(and
(g2 c4o6)
(f c4o16 c4o6)
)
(and
(g2 c4o7)
(f c4o16 c4o7)
)
(and
(g2 c4o8)
(f c4o16 c4o8)
)
(and
(g2 c4o9)
(f c4o16 c4o9)
)
(and
(g2 c4o10)
(f c4o16 c4o10)
)
(and
(g2 c4o11)
(f c4o16 c4o11)
)
(and
(g2 c4o12)
(f c4o16 c4o12)
)
(and
(g2 c4o13)
(f c4o16 c4o13)
)
(and
(g2 c4o14)
(f c4o16 c4o14)
)
(and
(g2 c4o15)
(f c4o16 c4o15)
)
(and
(g2 c4o16)
(f c4o16 c4o16)
)
(and
(g2 c4o17)
(f c4o16 c4o17)
)
(and
(g2 c4o18)
(f c4o16 c4o18)
)
(and
(g2 c4o19)
(f c4o16 c4o19)
)
(and
(g2 c4o20)
(f c4o16 c4o20)
)
(and
(g2 c4o21)
(f c4o16 c4o21)
)
(and
(g2 c4o22)
(f c4o16 c4o22)
)
(and
(g2 c4o23)
(f c4o16 c4o23)
)
(and
(g2 c4o24)
(f c4o16 c4o24)
)
(and
(g2 c4o25)
(f c4o16 c4o25)
)
(and
(g2 c4o26)
(f c4o16 c4o26)
)
(and
(g2 c4o27)
(f c4o16 c4o27)
)
(and
(g2 c4o28)
(f c4o16 c4o28)
)
(and
(g2 c4o29)
(f c4o16 c4o29)
)
(and
(g2 c4o30)
(f c4o16 c4o30)
)
(and
(g2 c4o31)
(f c4o16 c4o31)
)
(and
(g2 c4o32)
(f c4o16 c4o32)
)
(and
(g2 c4o33)
(f c4o16 c4o33)
)
(and
(g2 c4o34)
(f c4o16 c4o34)
)
(and
(g2 c4o35)
(f c4o16 c4o35)
)
(and
(g2 c4o36)
(f c4o16 c4o36)
)
)
)
(=>
(g1 c4o17)
(or
(and
(g2 c4o1)
(f c4o17 c4o1)
)
(and
(g2 c4o2)
(f c4o17 c4o2)
)
(and
(g2 c4o3)
(f c4o17 c4o3)
)
(and
(g2 c4o4)
(f c4o17 c4o4)
)
(and
(g2 c4o5)
(f c4o17 c4o5)
)
(and
(g2 c4o6)
(f c4o17 c4o6)
)
(and
(g2 c4o7)
(f c4o17 c4o7)
)
(and
(g2 c4o8)
(f c4o17 c4o8)
)
(and
(g2 c4o9)
(f c4o17 c4o9)
)
(and
(g2 c4o10)
(f c4o17 c4o10)
)
(and
(g2 c4o11)
(f c4o17 c4o11)
)
(and
(g2 c4o12)
(f c4o17 c4o12)
)
(and
(g2 c4o13)
(f c4o17 c4o13)
)
(and
(g2 c4o14)
(f c4o17 c4o14)
)
(and
(g2 c4o15)
(f c4o17 c4o15)
)
(and
(g2 c4o16)
(f c4o17 c4o16)
)
(and
(g2 c4o17)
(f c4o17 c4o17)
)
(and
(g2 c4o18)
(f c4o17 c4o18)
)
(and
(g2 c4o19)
(f c4o17 c4o19)
)
(and
(g2 c4o20)
(f c4o17 c4o20)
)
(and
(g2 c4o21)
(f c4o17 c4o21)
)
(and
(g2 c4o22)
(f c4o17 c4o22)
)
(and
(g2 c4o23)
(f c4o17 c4o23)
)
(and
(g2 c4o24)
(f c4o17 c4o24)
)
(and
(g2 c4o25)
(f c4o17 c4o25)
)
(and
(g2 c4o26)
(f c4o17 c4o26)
)
(and
(g2 c4o27)
(f c4o17 c4o27)
)
(and
(g2 c4o28)
(f c4o17 c4o28)
)
(and
(g2 c4o29)
(f c4o17 c4o29)
)
(and
(g2 c4o30)
(f c4o17 c4o30)
)
(and
(g2 c4o31)
(f c4o17 c4o31)
)
(and
(g2 c4o32)
(f c4o17 c4o32)
)
(and
(g2 c4o33)
(f c4o17 c4o33)
)
(and
(g2 c4o34)
(f c4o17 c4o34)
)
(and
(g2 c4o35)
(f c4o17 c4o35)
)
(and
(g2 c4o36)
(f c4o17 c4o36)
)
)
)
(=>
(g1 c4o18)
(or
(and
(g2 c4o1)
(f c4o18 c4o1)
)
(and
(g2 c4o2)
(f c4o18 c4o2)
)
(and
(g2 c4o3)
(f c4o18 c4o3)
)
(and
(g2 c4o4)
(f c4o18 c4o4)
)
(and
(g2 c4o5)
(f c4o18 c4o5)
)
(and
(g2 c4o6)
(f c4o18 c4o6)
)
(and
(g2 c4o7)
(f c4o18 c4o7)
)
(and
(g2 c4o8)
(f c4o18 c4o8)
)
(and
(g2 c4o9)
(f c4o18 c4o9)
)
(and
(g2 c4o10)
(f c4o18 c4o10)
)
(and
(g2 c4o11)
(f c4o18 c4o11)
)
(and
(g2 c4o12)
(f c4o18 c4o12)
)
(and
(g2 c4o13)
(f c4o18 c4o13)
)
(and
(g2 c4o14)
(f c4o18 c4o14)
)
(and
(g2 c4o15)
(f c4o18 c4o15)
)
(and
(g2 c4o16)
(f c4o18 c4o16)
)
(and
(g2 c4o17)
(f c4o18 c4o17)
)
(and
(g2 c4o18)
(f c4o18 c4o18)
)
(and
(g2 c4o19)
(f c4o18 c4o19)
)
(and
(g2 c4o20)
(f c4o18 c4o20)
)
(and
(g2 c4o21)
(f c4o18 c4o21)
)
(and
(g2 c4o22)
(f c4o18 c4o22)
)
(and
(g2 c4o23)
(f c4o18 c4o23)
)
(and
(g2 c4o24)
(f c4o18 c4o24)
)
(and
(g2 c4o25)
(f c4o18 c4o25)
)
(and
(g2 c4o26)
(f c4o18 c4o26)
)
(and
(g2 c4o27)
(f c4o18 c4o27)
)
(and
(g2 c4o28)
(f c4o18 c4o28)
)
(and
(g2 c4o29)
(f c4o18 c4o29)
)
(and
(g2 c4o30)
(f c4o18 c4o30)
)
(and
(g2 c4o31)
(f c4o18 c4o31)
)
(and
(g2 c4o32)
(f c4o18 c4o32)
)
(and
(g2 c4o33)
(f c4o18 c4o33)
)
(and
(g2 c4o34)
(f c4o18 c4o34)
)
(and
(g2 c4o35)
(f c4o18 c4o35)
)
(and
(g2 c4o36)
(f c4o18 c4o36)
)
)
)
(=>
(g1 c4o19)
(or
(and
(g2 c4o1)
(f c4o19 c4o1)
)
(and
(g2 c4o2)
(f c4o19 c4o2)
)
(and
(g2 c4o3)
(f c4o19 c4o3)
)
(and
(g2 c4o4)
(f c4o19 c4o4)
)
(and
(g2 c4o5)
(f c4o19 c4o5)
)
(and
(g2 c4o6)
(f c4o19 c4o6)
)
(and
(g2 c4o7)
(f c4o19 c4o7)
)
(and
(g2 c4o8)
(f c4o19 c4o8)
)
(and
(g2 c4o9)
(f c4o19 c4o9)
)
(and
(g2 c4o10)
(f c4o19 c4o10)
)
(and
(g2 c4o11)
(f c4o19 c4o11)
)
(and
(g2 c4o12)
(f c4o19 c4o12)
)
(and
(g2 c4o13)
(f c4o19 c4o13)
)
(and
(g2 c4o14)
(f c4o19 c4o14)
)
(and
(g2 c4o15)
(f c4o19 c4o15)
)
(and
(g2 c4o16)
(f c4o19 c4o16)
)
(and
(g2 c4o17)
(f c4o19 c4o17)
)
(and
(g2 c4o18)
(f c4o19 c4o18)
)
(and
(g2 c4o19)
(f c4o19 c4o19)
)
(and
(g2 c4o20)
(f c4o19 c4o20)
)
(and
(g2 c4o21)
(f c4o19 c4o21)
)
(and
(g2 c4o22)
(f c4o19 c4o22)
)
(and
(g2 c4o23)
(f c4o19 c4o23)
)
(and
(g2 c4o24)
(f c4o19 c4o24)
)
(and
(g2 c4o25)
(f c4o19 c4o25)
)
(and
(g2 c4o26)
(f c4o19 c4o26)
)
(and
(g2 c4o27)
(f c4o19 c4o27)
)
(and
(g2 c4o28)
(f c4o19 c4o28)
)
(and
(g2 c4o29)
(f c4o19 c4o29)
)
(and
(g2 c4o30)
(f c4o19 c4o30)
)
(and
(g2 c4o31)
(f c4o19 c4o31)
)
(and
(g2 c4o32)
(f c4o19 c4o32)
)
(and
(g2 c4o33)
(f c4o19 c4o33)
)
(and
(g2 c4o34)
(f c4o19 c4o34)
)
(and
(g2 c4o35)
(f c4o19 c4o35)
)
(and
(g2 c4o36)
(f c4o19 c4o36)
)
)
)
(=>
(g1 c4o20)
(or
(and
(g2 c4o1)
(f c4o20 c4o1)
)
(and
(g2 c4o2)
(f c4o20 c4o2)
)
(and
(g2 c4o3)
(f c4o20 c4o3)
)
(and
(g2 c4o4)
(f c4o20 c4o4)
)
(and
(g2 c4o5)
(f c4o20 c4o5)
)
(and
(g2 c4o6)
(f c4o20 c4o6)
)
(and
(g2 c4o7)
(f c4o20 c4o7)
)
(and
(g2 c4o8)
(f c4o20 c4o8)
)
(and
(g2 c4o9)
(f c4o20 c4o9)
)
(and
(g2 c4o10)
(f c4o20 c4o10)
)
(and
(g2 c4o11)
(f c4o20 c4o11)
)
(and
(g2 c4o12)
(f c4o20 c4o12)
)
(and
(g2 c4o13)
(f c4o20 c4o13)
)
(and
(g2 c4o14)
(f c4o20 c4o14)
)
(and
(g2 c4o15)
(f c4o20 c4o15)
)
(and
(g2 c4o16)
(f c4o20 c4o16)
)
(and
(g2 c4o17)
(f c4o20 c4o17)
)
(and
(g2 c4o18)
(f c4o20 c4o18)
)
(and
(g2 c4o19)
(f c4o20 c4o19)
)
(and
(g2 c4o20)
(f c4o20 c4o20)
)
(and
(g2 c4o21)
(f c4o20 c4o21)
)
(and
(g2 c4o22)
(f c4o20 c4o22)
)
(and
(g2 c4o23)
(f c4o20 c4o23)
)
(and
(g2 c4o24)
(f c4o20 c4o24)
)
(and
(g2 c4o25)
(f c4o20 c4o25)
)
(and
(g2 c4o26)
(f c4o20 c4o26)
)
(and
(g2 c4o27)
(f c4o20 c4o27)
)
(and
(g2 c4o28)
(f c4o20 c4o28)
)
(and
(g2 c4o29)
(f c4o20 c4o29)
)
(and
(g2 c4o30)
(f c4o20 c4o30)
)
(and
(g2 c4o31)
(f c4o20 c4o31)
)
(and
(g2 c4o32)
(f c4o20 c4o32)
)
(and
(g2 c4o33)
(f c4o20 c4o33)
)
(and
(g2 c4o34)
(f c4o20 c4o34)
)
(and
(g2 c4o35)
(f c4o20 c4o35)
)
(and
(g2 c4o36)
(f c4o20 c4o36)
)
)
)
(=>
(g1 c4o21)
(or
(and
(g2 c4o1)
(f c4o21 c4o1)
)
(and
(g2 c4o2)
(f c4o21 c4o2)
)
(and
(g2 c4o3)
(f c4o21 c4o3)
)
(and
(g2 c4o4)
(f c4o21 c4o4)
)
(and
(g2 c4o5)
(f c4o21 c4o5)
)
(and
(g2 c4o6)
(f c4o21 c4o6)
)
(and
(g2 c4o7)
(f c4o21 c4o7)
)
(and
(g2 c4o8)
(f c4o21 c4o8)
)
(and
(g2 c4o9)
(f c4o21 c4o9)
)
(and
(g2 c4o10)
(f c4o21 c4o10)
)
(and
(g2 c4o11)
(f c4o21 c4o11)
)
(and
(g2 c4o12)
(f c4o21 c4o12)
)
(and
(g2 c4o13)
(f c4o21 c4o13)
)
(and
(g2 c4o14)
(f c4o21 c4o14)
)
(and
(g2 c4o15)
(f c4o21 c4o15)
)
(and
(g2 c4o16)
(f c4o21 c4o16)
)
(and
(g2 c4o17)
(f c4o21 c4o17)
)
(and
(g2 c4o18)
(f c4o21 c4o18)
)
(and
(g2 c4o19)
(f c4o21 c4o19)
)
(and
(g2 c4o20)
(f c4o21 c4o20)
)
(and
(g2 c4o21)
(f c4o21 c4o21)
)
(and
(g2 c4o22)
(f c4o21 c4o22)
)
(and
(g2 c4o23)
(f c4o21 c4o23)
)
(and
(g2 c4o24)
(f c4o21 c4o24)
)
(and
(g2 c4o25)
(f c4o21 c4o25)
)
(and
(g2 c4o26)
(f c4o21 c4o26)
)
(and
(g2 c4o27)
(f c4o21 c4o27)
)
(and
(g2 c4o28)
(f c4o21 c4o28)
)
(and
(g2 c4o29)
(f c4o21 c4o29)
)
(and
(g2 c4o30)
(f c4o21 c4o30)
)
(and
(g2 c4o31)
(f c4o21 c4o31)
)
(and
(g2 c4o32)
(f c4o21 c4o32)
)
(and
(g2 c4o33)
(f c4o21 c4o33)
)
(and
(g2 c4o34)
(f c4o21 c4o34)
)
(and
(g2 c4o35)
(f c4o21 c4o35)
)
(and
(g2 c4o36)
(f c4o21 c4o36)
)
)
)
(=>
(g1 c4o22)
(or
(and
(g2 c4o1)
(f c4o22 c4o1)
)
(and
(g2 c4o2)
(f c4o22 c4o2)
)
(and
(g2 c4o3)
(f c4o22 c4o3)
)
(and
(g2 c4o4)
(f c4o22 c4o4)
)
(and
(g2 c4o5)
(f c4o22 c4o5)
)
(and
(g2 c4o6)
(f c4o22 c4o6)
)
(and
(g2 c4o7)
(f c4o22 c4o7)
)
(and
(g2 c4o8)
(f c4o22 c4o8)
)
(and
(g2 c4o9)
(f c4o22 c4o9)
)
(and
(g2 c4o10)
(f c4o22 c4o10)
)
(and
(g2 c4o11)
(f c4o22 c4o11)
)
(and
(g2 c4o12)
(f c4o22 c4o12)
)
(and
(g2 c4o13)
(f c4o22 c4o13)
)
(and
(g2 c4o14)
(f c4o22 c4o14)
)
(and
(g2 c4o15)
(f c4o22 c4o15)
)
(and
(g2 c4o16)
(f c4o22 c4o16)
)
(and
(g2 c4o17)
(f c4o22 c4o17)
)
(and
(g2 c4o18)
(f c4o22 c4o18)
)
(and
(g2 c4o19)
(f c4o22 c4o19)
)
(and
(g2 c4o20)
(f c4o22 c4o20)
)
(and
(g2 c4o21)
(f c4o22 c4o21)
)
(and
(g2 c4o22)
(f c4o22 c4o22)
)
(and
(g2 c4o23)
(f c4o22 c4o23)
)
(and
(g2 c4o24)
(f c4o22 c4o24)
)
(and
(g2 c4o25)
(f c4o22 c4o25)
)
(and
(g2 c4o26)
(f c4o22 c4o26)
)
(and
(g2 c4o27)
(f c4o22 c4o27)
)
(and
(g2 c4o28)
(f c4o22 c4o28)
)
(and
(g2 c4o29)
(f c4o22 c4o29)
)
(and
(g2 c4o30)
(f c4o22 c4o30)
)
(and
(g2 c4o31)
(f c4o22 c4o31)
)
(and
(g2 c4o32)
(f c4o22 c4o32)
)
(and
(g2 c4o33)
(f c4o22 c4o33)
)
(and
(g2 c4o34)
(f c4o22 c4o34)
)
(and
(g2 c4o35)
(f c4o22 c4o35)
)
(and
(g2 c4o36)
(f c4o22 c4o36)
)
)
)
(=>
(g1 c4o23)
(or
(and
(g2 c4o1)
(f c4o23 c4o1)
)
(and
(g2 c4o2)
(f c4o23 c4o2)
)
(and
(g2 c4o3)
(f c4o23 c4o3)
)
(and
(g2 c4o4)
(f c4o23 c4o4)
)
(and
(g2 c4o5)
(f c4o23 c4o5)
)
(and
(g2 c4o6)
(f c4o23 c4o6)
)
(and
(g2 c4o7)
(f c4o23 c4o7)
)
(and
(g2 c4o8)
(f c4o23 c4o8)
)
(and
(g2 c4o9)
(f c4o23 c4o9)
)
(and
(g2 c4o10)
(f c4o23 c4o10)
)
(and
(g2 c4o11)
(f c4o23 c4o11)
)
(and
(g2 c4o12)
(f c4o23 c4o12)
)
(and
(g2 c4o13)
(f c4o23 c4o13)
)
(and
(g2 c4o14)
(f c4o23 c4o14)
)
(and
(g2 c4o15)
(f c4o23 c4o15)
)
(and
(g2 c4o16)
(f c4o23 c4o16)
)
(and
(g2 c4o17)
(f c4o23 c4o17)
)
(and
(g2 c4o18)
(f c4o23 c4o18)
)
(and
(g2 c4o19)
(f c4o23 c4o19)
)
(and
(g2 c4o20)
(f c4o23 c4o20)
)
(and
(g2 c4o21)
(f c4o23 c4o21)
)
(and
(g2 c4o22)
(f c4o23 c4o22)
)
(and
(g2 c4o23)
(f c4o23 c4o23)
)
(and
(g2 c4o24)
(f c4o23 c4o24)
)
(and
(g2 c4o25)
(f c4o23 c4o25)
)
(and
(g2 c4o26)
(f c4o23 c4o26)
)
(and
(g2 c4o27)
(f c4o23 c4o27)
)
(and
(g2 c4o28)
(f c4o23 c4o28)
)
(and
(g2 c4o29)
(f c4o23 c4o29)
)
(and
(g2 c4o30)
(f c4o23 c4o30)
)
(and
(g2 c4o31)
(f c4o23 c4o31)
)
(and
(g2 c4o32)
(f c4o23 c4o32)
)
(and
(g2 c4o33)
(f c4o23 c4o33)
)
(and
(g2 c4o34)
(f c4o23 c4o34)
)
(and
(g2 c4o35)
(f c4o23 c4o35)
)
(and
(g2 c4o36)
(f c4o23 c4o36)
)
)
)
(=>
(g1 c4o24)
(or
(and
(g2 c4o1)
(f c4o24 c4o1)
)
(and
(g2 c4o2)
(f c4o24 c4o2)
)
(and
(g2 c4o3)
(f c4o24 c4o3)
)
(and
(g2 c4o4)
(f c4o24 c4o4)
)
(and
(g2 c4o5)
(f c4o24 c4o5)
)
(and
(g2 c4o6)
(f c4o24 c4o6)
)
(and
(g2 c4o7)
(f c4o24 c4o7)
)
(and
(g2 c4o8)
(f c4o24 c4o8)
)
(and
(g2 c4o9)
(f c4o24 c4o9)
)
(and
(g2 c4o10)
(f c4o24 c4o10)
)
(and
(g2 c4o11)
(f c4o24 c4o11)
)
(and
(g2 c4o12)
(f c4o24 c4o12)
)
(and
(g2 c4o13)
(f c4o24 c4o13)
)
(and
(g2 c4o14)
(f c4o24 c4o14)
)
(and
(g2 c4o15)
(f c4o24 c4o15)
)
(and
(g2 c4o16)
(f c4o24 c4o16)
)
(and
(g2 c4o17)
(f c4o24 c4o17)
)
(and
(g2 c4o18)
(f c4o24 c4o18)
)
(and
(g2 c4o19)
(f c4o24 c4o19)
)
(and
(g2 c4o20)
(f c4o24 c4o20)
)
(and
(g2 c4o21)
(f c4o24 c4o21)
)
(and
(g2 c4o22)
(f c4o24 c4o22)
)
(and
(g2 c4o23)
(f c4o24 c4o23)
)
(and
(g2 c4o24)
(f c4o24 c4o24)
)
(and
(g2 c4o25)
(f c4o24 c4o25)
)
(and
(g2 c4o26)
(f c4o24 c4o26)
)
(and
(g2 c4o27)
(f c4o24 c4o27)
)
(and
(g2 c4o28)
(f c4o24 c4o28)
)
(and
(g2 c4o29)
(f c4o24 c4o29)
)
(and
(g2 c4o30)
(f c4o24 c4o30)
)
(and
(g2 c4o31)
(f c4o24 c4o31)
)
(and
(g2 c4o32)
(f c4o24 c4o32)
)
(and
(g2 c4o33)
(f c4o24 c4o33)
)
(and
(g2 c4o34)
(f c4o24 c4o34)
)
(and
(g2 c4o35)
(f c4o24 c4o35)
)
(and
(g2 c4o36)
(f c4o24 c4o36)
)
)
)
(=>
(g1 c4o25)
(or
(and
(g2 c4o1)
(f c4o25 c4o1)
)
(and
(g2 c4o2)
(f c4o25 c4o2)
)
(and
(g2 c4o3)
(f c4o25 c4o3)
)
(and
(g2 c4o4)
(f c4o25 c4o4)
)
(and
(g2 c4o5)
(f c4o25 c4o5)
)
(and
(g2 c4o6)
(f c4o25 c4o6)
)
(and
(g2 c4o7)
(f c4o25 c4o7)
)
(and
(g2 c4o8)
(f c4o25 c4o8)
)
(and
(g2 c4o9)
(f c4o25 c4o9)
)
(and
(g2 c4o10)
(f c4o25 c4o10)
)
(and
(g2 c4o11)
(f c4o25 c4o11)
)
(and
(g2 c4o12)
(f c4o25 c4o12)
)
(and
(g2 c4o13)
(f c4o25 c4o13)
)
(and
(g2 c4o14)
(f c4o25 c4o14)
)
(and
(g2 c4o15)
(f c4o25 c4o15)
)
(and
(g2 c4o16)
(f c4o25 c4o16)
)
(and
(g2 c4o17)
(f c4o25 c4o17)
)
(and
(g2 c4o18)
(f c4o25 c4o18)
)
(and
(g2 c4o19)
(f c4o25 c4o19)
)
(and
(g2 c4o20)
(f c4o25 c4o20)
)
(and
(g2 c4o21)
(f c4o25 c4o21)
)
(and
(g2 c4o22)
(f c4o25 c4o22)
)
(and
(g2 c4o23)
(f c4o25 c4o23)
)
(and
(g2 c4o24)
(f c4o25 c4o24)
)
(and
(g2 c4o25)
(f c4o25 c4o25)
)
(and
(g2 c4o26)
(f c4o25 c4o26)
)
(and
(g2 c4o27)
(f c4o25 c4o27)
)
(and
(g2 c4o28)
(f c4o25 c4o28)
)
(and
(g2 c4o29)
(f c4o25 c4o29)
)
(and
(g2 c4o30)
(f c4o25 c4o30)
)
(and
(g2 c4o31)
(f c4o25 c4o31)
)
(and
(g2 c4o32)
(f c4o25 c4o32)
)
(and
(g2 c4o33)
(f c4o25 c4o33)
)
(and
(g2 c4o34)
(f c4o25 c4o34)
)
(and
(g2 c4o35)
(f c4o25 c4o35)
)
(and
(g2 c4o36)
(f c4o25 c4o36)
)
)
)
(=>
(g1 c4o26)
(or
(and
(g2 c4o1)
(f c4o26 c4o1)
)
(and
(g2 c4o2)
(f c4o26 c4o2)
)
(and
(g2 c4o3)
(f c4o26 c4o3)
)
(and
(g2 c4o4)
(f c4o26 c4o4)
)
(and
(g2 c4o5)
(f c4o26 c4o5)
)
(and
(g2 c4o6)
(f c4o26 c4o6)
)
(and
(g2 c4o7)
(f c4o26 c4o7)
)
(and
(g2 c4o8)
(f c4o26 c4o8)
)
(and
(g2 c4o9)
(f c4o26 c4o9)
)
(and
(g2 c4o10)
(f c4o26 c4o10)
)
(and
(g2 c4o11)
(f c4o26 c4o11)
)
(and
(g2 c4o12)
(f c4o26 c4o12)
)
(and
(g2 c4o13)
(f c4o26 c4o13)
)
(and
(g2 c4o14)
(f c4o26 c4o14)
)
(and
(g2 c4o15)
(f c4o26 c4o15)
)
(and
(g2 c4o16)
(f c4o26 c4o16)
)
(and
(g2 c4o17)
(f c4o26 c4o17)
)
(and
(g2 c4o18)
(f c4o26 c4o18)
)
(and
(g2 c4o19)
(f c4o26 c4o19)
)
(and
(g2 c4o20)
(f c4o26 c4o20)
)
(and
(g2 c4o21)
(f c4o26 c4o21)
)
(and
(g2 c4o22)
(f c4o26 c4o22)
)
(and
(g2 c4o23)
(f c4o26 c4o23)
)
(and
(g2 c4o24)
(f c4o26 c4o24)
)
(and
(g2 c4o25)
(f c4o26 c4o25)
)
(and
(g2 c4o26)
(f c4o26 c4o26)
)
(and
(g2 c4o27)
(f c4o26 c4o27)
)
(and
(g2 c4o28)
(f c4o26 c4o28)
)
(and
(g2 c4o29)
(f c4o26 c4o29)
)
(and
(g2 c4o30)
(f c4o26 c4o30)
)
(and
(g2 c4o31)
(f c4o26 c4o31)
)
(and
(g2 c4o32)
(f c4o26 c4o32)
)
(and
(g2 c4o33)
(f c4o26 c4o33)
)
(and
(g2 c4o34)
(f c4o26 c4o34)
)
(and
(g2 c4o35)
(f c4o26 c4o35)
)
(and
(g2 c4o36)
(f c4o26 c4o36)
)
)
)
(=>
(g1 c4o27)
(or
(and
(g2 c4o1)
(f c4o27 c4o1)
)
(and
(g2 c4o2)
(f c4o27 c4o2)
)
(and
(g2 c4o3)
(f c4o27 c4o3)
)
(and
(g2 c4o4)
(f c4o27 c4o4)
)
(and
(g2 c4o5)
(f c4o27 c4o5)
)
(and
(g2 c4o6)
(f c4o27 c4o6)
)
(and
(g2 c4o7)
(f c4o27 c4o7)
)
(and
(g2 c4o8)
(f c4o27 c4o8)
)
(and
(g2 c4o9)
(f c4o27 c4o9)
)
(and
(g2 c4o10)
(f c4o27 c4o10)
)
(and
(g2 c4o11)
(f c4o27 c4o11)
)
(and
(g2 c4o12)
(f c4o27 c4o12)
)
(and
(g2 c4o13)
(f c4o27 c4o13)
)
(and
(g2 c4o14)
(f c4o27 c4o14)
)
(and
(g2 c4o15)
(f c4o27 c4o15)
)
(and
(g2 c4o16)
(f c4o27 c4o16)
)
(and
(g2 c4o17)
(f c4o27 c4o17)
)
(and
(g2 c4o18)
(f c4o27 c4o18)
)
(and
(g2 c4o19)
(f c4o27 c4o19)
)
(and
(g2 c4o20)
(f c4o27 c4o20)
)
(and
(g2 c4o21)
(f c4o27 c4o21)
)
(and
(g2 c4o22)
(f c4o27 c4o22)
)
(and
(g2 c4o23)
(f c4o27 c4o23)
)
(and
(g2 c4o24)
(f c4o27 c4o24)
)
(and
(g2 c4o25)
(f c4o27 c4o25)
)
(and
(g2 c4o26)
(f c4o27 c4o26)
)
(and
(g2 c4o27)
(f c4o27 c4o27)
)
(and
(g2 c4o28)
(f c4o27 c4o28)
)
(and
(g2 c4o29)
(f c4o27 c4o29)
)
(and
(g2 c4o30)
(f c4o27 c4o30)
)
(and
(g2 c4o31)
(f c4o27 c4o31)
)
(and
(g2 c4o32)
(f c4o27 c4o32)
)
(and
(g2 c4o33)
(f c4o27 c4o33)
)
(and
(g2 c4o34)
(f c4o27 c4o34)
)
(and
(g2 c4o35)
(f c4o27 c4o35)
)
(and
(g2 c4o36)
(f c4o27 c4o36)
)
)
)
(=>
(g1 c4o28)
(or
(and
(g2 c4o1)
(f c4o28 c4o1)
)
(and
(g2 c4o2)
(f c4o28 c4o2)
)
(and
(g2 c4o3)
(f c4o28 c4o3)
)
(and
(g2 c4o4)
(f c4o28 c4o4)
)
(and
(g2 c4o5)
(f c4o28 c4o5)
)
(and
(g2 c4o6)
(f c4o28 c4o6)
)
(and
(g2 c4o7)
(f c4o28 c4o7)
)
(and
(g2 c4o8)
(f c4o28 c4o8)
)
(and
(g2 c4o9)
(f c4o28 c4o9)
)
(and
(g2 c4o10)
(f c4o28 c4o10)
)
(and
(g2 c4o11)
(f c4o28 c4o11)
)
(and
(g2 c4o12)
(f c4o28 c4o12)
)
(and
(g2 c4o13)
(f c4o28 c4o13)
)
(and
(g2 c4o14)
(f c4o28 c4o14)
)
(and
(g2 c4o15)
(f c4o28 c4o15)
)
(and
(g2 c4o16)
(f c4o28 c4o16)
)
(and
(g2 c4o17)
(f c4o28 c4o17)
)
(and
(g2 c4o18)
(f c4o28 c4o18)
)
(and
(g2 c4o19)
(f c4o28 c4o19)
)
(and
(g2 c4o20)
(f c4o28 c4o20)
)
(and
(g2 c4o21)
(f c4o28 c4o21)
)
(and
(g2 c4o22)
(f c4o28 c4o22)
)
(and
(g2 c4o23)
(f c4o28 c4o23)
)
(and
(g2 c4o24)
(f c4o28 c4o24)
)
(and
(g2 c4o25)
(f c4o28 c4o25)
)
(and
(g2 c4o26)
(f c4o28 c4o26)
)
(and
(g2 c4o27)
(f c4o28 c4o27)
)
(and
(g2 c4o28)
(f c4o28 c4o28)
)
(and
(g2 c4o29)
(f c4o28 c4o29)
)
(and
(g2 c4o30)
(f c4o28 c4o30)
)
(and
(g2 c4o31)
(f c4o28 c4o31)
)
(and
(g2 c4o32)
(f c4o28 c4o32)
)
(and
(g2 c4o33)
(f c4o28 c4o33)
)
(and
(g2 c4o34)
(f c4o28 c4o34)
)
(and
(g2 c4o35)
(f c4o28 c4o35)
)
(and
(g2 c4o36)
(f c4o28 c4o36)
)
)
)
(=>
(g1 c4o29)
(or
(and
(g2 c4o1)
(f c4o29 c4o1)
)
(and
(g2 c4o2)
(f c4o29 c4o2)
)
(and
(g2 c4o3)
(f c4o29 c4o3)
)
(and
(g2 c4o4)
(f c4o29 c4o4)
)
(and
(g2 c4o5)
(f c4o29 c4o5)
)
(and
(g2 c4o6)
(f c4o29 c4o6)
)
(and
(g2 c4o7)
(f c4o29 c4o7)
)
(and
(g2 c4o8)
(f c4o29 c4o8)
)
(and
(g2 c4o9)
(f c4o29 c4o9)
)
(and
(g2 c4o10)
(f c4o29 c4o10)
)
(and
(g2 c4o11)
(f c4o29 c4o11)
)
(and
(g2 c4o12)
(f c4o29 c4o12)
)
(and
(g2 c4o13)
(f c4o29 c4o13)
)
(and
(g2 c4o14)
(f c4o29 c4o14)
)
(and
(g2 c4o15)
(f c4o29 c4o15)
)
(and
(g2 c4o16)
(f c4o29 c4o16)
)
(and
(g2 c4o17)
(f c4o29 c4o17)
)
(and
(g2 c4o18)
(f c4o29 c4o18)
)
(and
(g2 c4o19)
(f c4o29 c4o19)
)
(and
(g2 c4o20)
(f c4o29 c4o20)
)
(and
(g2 c4o21)
(f c4o29 c4o21)
)
(and
(g2 c4o22)
(f c4o29 c4o22)
)
(and
(g2 c4o23)
(f c4o29 c4o23)
)
(and
(g2 c4o24)
(f c4o29 c4o24)
)
(and
(g2 c4o25)
(f c4o29 c4o25)
)
(and
(g2 c4o26)
(f c4o29 c4o26)
)
(and
(g2 c4o27)
(f c4o29 c4o27)
)
(and
(g2 c4o28)
(f c4o29 c4o28)
)
(and
(g2 c4o29)
(f c4o29 c4o29)
)
(and
(g2 c4o30)
(f c4o29 c4o30)
)
(and
(g2 c4o31)
(f c4o29 c4o31)
)
(and
(g2 c4o32)
(f c4o29 c4o32)
)
(and
(g2 c4o33)
(f c4o29 c4o33)
)
(and
(g2 c4o34)
(f c4o29 c4o34)
)
(and
(g2 c4o35)
(f c4o29 c4o35)
)
(and
(g2 c4o36)
(f c4o29 c4o36)
)
)
)
(=>
(g1 c4o30)
(or
(and
(g2 c4o1)
(f c4o30 c4o1)
)
(and
(g2 c4o2)
(f c4o30 c4o2)
)
(and
(g2 c4o3)
(f c4o30 c4o3)
)
(and
(g2 c4o4)
(f c4o30 c4o4)
)
(and
(g2 c4o5)
(f c4o30 c4o5)
)
(and
(g2 c4o6)
(f c4o30 c4o6)
)
(and
(g2 c4o7)
(f c4o30 c4o7)
)
(and
(g2 c4o8)
(f c4o30 c4o8)
)
(and
(g2 c4o9)
(f c4o30 c4o9)
)
(and
(g2 c4o10)
(f c4o30 c4o10)
)
(and
(g2 c4o11)
(f c4o30 c4o11)
)
(and
(g2 c4o12)
(f c4o30 c4o12)
)
(and
(g2 c4o13)
(f c4o30 c4o13)
)
(and
(g2 c4o14)
(f c4o30 c4o14)
)
(and
(g2 c4o15)
(f c4o30 c4o15)
)
(and
(g2 c4o16)
(f c4o30 c4o16)
)
(and
(g2 c4o17)
(f c4o30 c4o17)
)
(and
(g2 c4o18)
(f c4o30 c4o18)
)
(and
(g2 c4o19)
(f c4o30 c4o19)
)
(and
(g2 c4o20)
(f c4o30 c4o20)
)
(and
(g2 c4o21)
(f c4o30 c4o21)
)
(and
(g2 c4o22)
(f c4o30 c4o22)
)
(and
(g2 c4o23)
(f c4o30 c4o23)
)
(and
(g2 c4o24)
(f c4o30 c4o24)
)
(and
(g2 c4o25)
(f c4o30 c4o25)
)
(and
(g2 c4o26)
(f c4o30 c4o26)
)
(and
(g2 c4o27)
(f c4o30 c4o27)
)
(and
(g2 c4o28)
(f c4o30 c4o28)
)
(and
(g2 c4o29)
(f c4o30 c4o29)
)
(and
(g2 c4o30)
(f c4o30 c4o30)
)
(and
(g2 c4o31)
(f c4o30 c4o31)
)
(and
(g2 c4o32)
(f c4o30 c4o32)
)
(and
(g2 c4o33)
(f c4o30 c4o33)
)
(and
(g2 c4o34)
(f c4o30 c4o34)
)
(and
(g2 c4o35)
(f c4o30 c4o35)
)
(and
(g2 c4o36)
(f c4o30 c4o36)
)
)
)
(=>
(g1 c4o31)
(or
(and
(g2 c4o1)
(f c4o31 c4o1)
)
(and
(g2 c4o2)
(f c4o31 c4o2)
)
(and
(g2 c4o3)
(f c4o31 c4o3)
)
(and
(g2 c4o4)
(f c4o31 c4o4)
)
(and
(g2 c4o5)
(f c4o31 c4o5)
)
(and
(g2 c4o6)
(f c4o31 c4o6)
)
(and
(g2 c4o7)
(f c4o31 c4o7)
)
(and
(g2 c4o8)
(f c4o31 c4o8)
)
(and
(g2 c4o9)
(f c4o31 c4o9)
)
(and
(g2 c4o10)
(f c4o31 c4o10)
)
(and
(g2 c4o11)
(f c4o31 c4o11)
)
(and
(g2 c4o12)
(f c4o31 c4o12)
)
(and
(g2 c4o13)
(f c4o31 c4o13)
)
(and
(g2 c4o14)
(f c4o31 c4o14)
)
(and
(g2 c4o15)
(f c4o31 c4o15)
)
(and
(g2 c4o16)
(f c4o31 c4o16)
)
(and
(g2 c4o17)
(f c4o31 c4o17)
)
(and
(g2 c4o18)
(f c4o31 c4o18)
)
(and
(g2 c4o19)
(f c4o31 c4o19)
)
(and
(g2 c4o20)
(f c4o31 c4o20)
)
(and
(g2 c4o21)
(f c4o31 c4o21)
)
(and
(g2 c4o22)
(f c4o31 c4o22)
)
(and
(g2 c4o23)
(f c4o31 c4o23)
)
(and
(g2 c4o24)
(f c4o31 c4o24)
)
(and
(g2 c4o25)
(f c4o31 c4o25)
)
(and
(g2 c4o26)
(f c4o31 c4o26)
)
(and
(g2 c4o27)
(f c4o31 c4o27)
)
(and
(g2 c4o28)
(f c4o31 c4o28)
)
(and
(g2 c4o29)
(f c4o31 c4o29)
)
(and
(g2 c4o30)
(f c4o31 c4o30)
)
(and
(g2 c4o31)
(f c4o31 c4o31)
)
(and
(g2 c4o32)
(f c4o31 c4o32)
)
(and
(g2 c4o33)
(f c4o31 c4o33)
)
(and
(g2 c4o34)
(f c4o31 c4o34)
)
(and
(g2 c4o35)
(f c4o31 c4o35)
)
(and
(g2 c4o36)
(f c4o31 c4o36)
)
)
)
(=>
(g1 c4o32)
(or
(and
(g2 c4o1)
(f c4o32 c4o1)
)
(and
(g2 c4o2)
(f c4o32 c4o2)
)
(and
(g2 c4o3)
(f c4o32 c4o3)
)
(and
(g2 c4o4)
(f c4o32 c4o4)
)
(and
(g2 c4o5)
(f c4o32 c4o5)
)
(and
(g2 c4o6)
(f c4o32 c4o6)
)
(and
(g2 c4o7)
(f c4o32 c4o7)
)
(and
(g2 c4o8)
(f c4o32 c4o8)
)
(and
(g2 c4o9)
(f c4o32 c4o9)
)
(and
(g2 c4o10)
(f c4o32 c4o10)
)
(and
(g2 c4o11)
(f c4o32 c4o11)
)
(and
(g2 c4o12)
(f c4o32 c4o12)
)
(and
(g2 c4o13)
(f c4o32 c4o13)
)
(and
(g2 c4o14)
(f c4o32 c4o14)
)
(and
(g2 c4o15)
(f c4o32 c4o15)
)
(and
(g2 c4o16)
(f c4o32 c4o16)
)
(and
(g2 c4o17)
(f c4o32 c4o17)
)
(and
(g2 c4o18)
(f c4o32 c4o18)
)
(and
(g2 c4o19)
(f c4o32 c4o19)
)
(and
(g2 c4o20)
(f c4o32 c4o20)
)
(and
(g2 c4o21)
(f c4o32 c4o21)
)
(and
(g2 c4o22)
(f c4o32 c4o22)
)
(and
(g2 c4o23)
(f c4o32 c4o23)
)
(and
(g2 c4o24)
(f c4o32 c4o24)
)
(and
(g2 c4o25)
(f c4o32 c4o25)
)
(and
(g2 c4o26)
(f c4o32 c4o26)
)
(and
(g2 c4o27)
(f c4o32 c4o27)
)
(and
(g2 c4o28)
(f c4o32 c4o28)
)
(and
(g2 c4o29)
(f c4o32 c4o29)
)
(and
(g2 c4o30)
(f c4o32 c4o30)
)
(and
(g2 c4o31)
(f c4o32 c4o31)
)
(and
(g2 c4o32)
(f c4o32 c4o32)
)
(and
(g2 c4o33)
(f c4o32 c4o33)
)
(and
(g2 c4o34)
(f c4o32 c4o34)
)
(and
(g2 c4o35)
(f c4o32 c4o35)
)
(and
(g2 c4o36)
(f c4o32 c4o36)
)
)
)
(=>
(g1 c4o33)
(or
(and
(g2 c4o1)
(f c4o33 c4o1)
)
(and
(g2 c4o2)
(f c4o33 c4o2)
)
(and
(g2 c4o3)
(f c4o33 c4o3)
)
(and
(g2 c4o4)
(f c4o33 c4o4)
)
(and
(g2 c4o5)
(f c4o33 c4o5)
)
(and
(g2 c4o6)
(f c4o33 c4o6)
)
(and
(g2 c4o7)
(f c4o33 c4o7)
)
(and
(g2 c4o8)
(f c4o33 c4o8)
)
(and
(g2 c4o9)
(f c4o33 c4o9)
)
(and
(g2 c4o10)
(f c4o33 c4o10)
)
(and
(g2 c4o11)
(f c4o33 c4o11)
)
(and
(g2 c4o12)
(f c4o33 c4o12)
)
(and
(g2 c4o13)
(f c4o33 c4o13)
)
(and
(g2 c4o14)
(f c4o33 c4o14)
)
(and
(g2 c4o15)
(f c4o33 c4o15)
)
(and
(g2 c4o16)
(f c4o33 c4o16)
)
(and
(g2 c4o17)
(f c4o33 c4o17)
)
(and
(g2 c4o18)
(f c4o33 c4o18)
)
(and
(g2 c4o19)
(f c4o33 c4o19)
)
(and
(g2 c4o20)
(f c4o33 c4o20)
)
(and
(g2 c4o21)
(f c4o33 c4o21)
)
(and
(g2 c4o22)
(f c4o33 c4o22)
)
(and
(g2 c4o23)
(f c4o33 c4o23)
)
(and
(g2 c4o24)
(f c4o33 c4o24)
)
(and
(g2 c4o25)
(f c4o33 c4o25)
)
(and
(g2 c4o26)
(f c4o33 c4o26)
)
(and
(g2 c4o27)
(f c4o33 c4o27)
)
(and
(g2 c4o28)
(f c4o33 c4o28)
)
(and
(g2 c4o29)
(f c4o33 c4o29)
)
(and
(g2 c4o30)
(f c4o33 c4o30)
)
(and
(g2 c4o31)
(f c4o33 c4o31)
)
(and
(g2 c4o32)
(f c4o33 c4o32)
)
(and
(g2 c4o33)
(f c4o33 c4o33)
)
(and
(g2 c4o34)
(f c4o33 c4o34)
)
(and
(g2 c4o35)
(f c4o33 c4o35)
)
(and
(g2 c4o36)
(f c4o33 c4o36)
)
)
)
(=>
(g1 c4o34)
(or
(and
(g2 c4o1)
(f c4o34 c4o1)
)
(and
(g2 c4o2)
(f c4o34 c4o2)
)
(and
(g2 c4o3)
(f c4o34 c4o3)
)
(and
(g2 c4o4)
(f c4o34 c4o4)
)
(and
(g2 c4o5)
(f c4o34 c4o5)
)
(and
(g2 c4o6)
(f c4o34 c4o6)
)
(and
(g2 c4o7)
(f c4o34 c4o7)
)
(and
(g2 c4o8)
(f c4o34 c4o8)
)
(and
(g2 c4o9)
(f c4o34 c4o9)
)
(and
(g2 c4o10)
(f c4o34 c4o10)
)
(and
(g2 c4o11)
(f c4o34 c4o11)
)
(and
(g2 c4o12)
(f c4o34 c4o12)
)
(and
(g2 c4o13)
(f c4o34 c4o13)
)
(and
(g2 c4o14)
(f c4o34 c4o14)
)
(and
(g2 c4o15)
(f c4o34 c4o15)
)
(and
(g2 c4o16)
(f c4o34 c4o16)
)
(and
(g2 c4o17)
(f c4o34 c4o17)
)
(and
(g2 c4o18)
(f c4o34 c4o18)
)
(and
(g2 c4o19)
(f c4o34 c4o19)
)
(and
(g2 c4o20)
(f c4o34 c4o20)
)
(and
(g2 c4o21)
(f c4o34 c4o21)
)
(and
(g2 c4o22)
(f c4o34 c4o22)
)
(and
(g2 c4o23)
(f c4o34 c4o23)
)
(and
(g2 c4o24)
(f c4o34 c4o24)
)
(and
(g2 c4o25)
(f c4o34 c4o25)
)
(and
(g2 c4o26)
(f c4o34 c4o26)
)
(and
(g2 c4o27)
(f c4o34 c4o27)
)
(and
(g2 c4o28)
(f c4o34 c4o28)
)
(and
(g2 c4o29)
(f c4o34 c4o29)
)
(and
(g2 c4o30)
(f c4o34 c4o30)
)
(and
(g2 c4o31)
(f c4o34 c4o31)
)
(and
(g2 c4o32)
(f c4o34 c4o32)
)
(and
(g2 c4o33)
(f c4o34 c4o33)
)
(and
(g2 c4o34)
(f c4o34 c4o34)
)
(and
(g2 c4o35)
(f c4o34 c4o35)
)
(and
(g2 c4o36)
(f c4o34 c4o36)
)
)
)
(=>
(g1 c4o35)
(or
(and
(g2 c4o1)
(f c4o35 c4o1)
)
(and
(g2 c4o2)
(f c4o35 c4o2)
)
(and
(g2 c4o3)
(f c4o35 c4o3)
)
(and
(g2 c4o4)
(f c4o35 c4o4)
)
(and
(g2 c4o5)
(f c4o35 c4o5)
)
(and
(g2 c4o6)
(f c4o35 c4o6)
)
(and
(g2 c4o7)
(f c4o35 c4o7)
)
(and
(g2 c4o8)
(f c4o35 c4o8)
)
(and
(g2 c4o9)
(f c4o35 c4o9)
)
(and
(g2 c4o10)
(f c4o35 c4o10)
)
(and
(g2 c4o11)
(f c4o35 c4o11)
)
(and
(g2 c4o12)
(f c4o35 c4o12)
)
(and
(g2 c4o13)
(f c4o35 c4o13)
)
(and
(g2 c4o14)
(f c4o35 c4o14)
)
(and
(g2 c4o15)
(f c4o35 c4o15)
)
(and
(g2 c4o16)
(f c4o35 c4o16)
)
(and
(g2 c4o17)
(f c4o35 c4o17)
)
(and
(g2 c4o18)
(f c4o35 c4o18)
)
(and
(g2 c4o19)
(f c4o35 c4o19)
)
(and
(g2 c4o20)
(f c4o35 c4o20)
)
(and
(g2 c4o21)
(f c4o35 c4o21)
)
(and
(g2 c4o22)
(f c4o35 c4o22)
)
(and
(g2 c4o23)
(f c4o35 c4o23)
)
(and
(g2 c4o24)
(f c4o35 c4o24)
)
(and
(g2 c4o25)
(f c4o35 c4o25)
)
(and
(g2 c4o26)
(f c4o35 c4o26)
)
(and
(g2 c4o27)
(f c4o35 c4o27)
)
(and
(g2 c4o28)
(f c4o35 c4o28)
)
(and
(g2 c4o29)
(f c4o35 c4o29)
)
(and
(g2 c4o30)
(f c4o35 c4o30)
)
(and
(g2 c4o31)
(f c4o35 c4o31)
)
(and
(g2 c4o32)
(f c4o35 c4o32)
)
(and
(g2 c4o33)
(f c4o35 c4o33)
)
(and
(g2 c4o34)
(f c4o35 c4o34)
)
(and
(g2 c4o35)
(f c4o35 c4o35)
)
(and
(g2 c4o36)
(f c4o35 c4o36)
)
)
)
(=>
(g1 c4o36)
(or
(and
(g2 c4o1)
(f c4o36 c4o1)
)
(and
(g2 c4o2)
(f c4o36 c4o2)
)
(and
(g2 c4o3)
(f c4o36 c4o3)
)
(and
(g2 c4o4)
(f c4o36 c4o4)
)
(and
(g2 c4o5)
(f c4o36 c4o5)
)
(and
(g2 c4o6)
(f c4o36 c4o6)
)
(and
(g2 c4o7)
(f c4o36 c4o7)
)
(and
(g2 c4o8)
(f c4o36 c4o8)
)
(and
(g2 c4o9)
(f c4o36 c4o9)
)
(and
(g2 c4o10)
(f c4o36 c4o10)
)
(and
(g2 c4o11)
(f c4o36 c4o11)
)
(and
(g2 c4o12)
(f c4o36 c4o12)
)
(and
(g2 c4o13)
(f c4o36 c4o13)
)
(and
(g2 c4o14)
(f c4o36 c4o14)
)
(and
(g2 c4o15)
(f c4o36 c4o15)
)
(and
(g2 c4o16)
(f c4o36 c4o16)
)
(and
(g2 c4o17)
(f c4o36 c4o17)
)
(and
(g2 c4o18)
(f c4o36 c4o18)
)
(and
(g2 c4o19)
(f c4o36 c4o19)
)
(and
(g2 c4o20)
(f c4o36 c4o20)
)
(and
(g2 c4o21)
(f c4o36 c4o21)
)
(and
(g2 c4o22)
(f c4o36 c4o22)
)
(and
(g2 c4o23)
(f c4o36 c4o23)
)
(and
(g2 c4o24)
(f c4o36 c4o24)
)
(and
(g2 c4o25)
(f c4o36 c4o25)
)
(and
(g2 c4o26)
(f c4o36 c4o26)
)
(and
(g2 c4o27)
(f c4o36 c4o27)
)
(and
(g2 c4o28)
(f c4o36 c4o28)
)
(and
(g2 c4o29)
(f c4o36 c4o29)
)
(and
(g2 c4o30)
(f c4o36 c4o30)
)
(and
(g2 c4o31)
(f c4o36 c4o31)
)
(and
(g2 c4o32)
(f c4o36 c4o32)
)
(and
(g2 c4o33)
(f c4o36 c4o33)
)
(and
(g2 c4o34)
(f c4o36 c4o34)
)
(and
(g2 c4o35)
(f c4o36 c4o35)
)
(and
(g2 c4o36)
(f c4o36 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o1 c4o10)
)
(=>
(g2 c4o11)
(f c4o1 c4o11)
)
(=>
(g2 c4o12)
(f c4o1 c4o12)
)
(=>
(g2 c4o13)
(f c4o1 c4o13)
)
(=>
(g2 c4o14)
(f c4o1 c4o14)
)
(=>
(g2 c4o15)
(f c4o1 c4o15)
)
(=>
(g2 c4o16)
(f c4o1 c4o16)
)
(=>
(g2 c4o17)
(f c4o1 c4o17)
)
(=>
(g2 c4o18)
(f c4o1 c4o18)
)
(=>
(g2 c4o19)
(f c4o1 c4o19)
)
(=>
(g2 c4o20)
(f c4o1 c4o20)
)
(=>
(g2 c4o21)
(f c4o1 c4o21)
)
(=>
(g2 c4o22)
(f c4o1 c4o22)
)
(=>
(g2 c4o23)
(f c4o1 c4o23)
)
(=>
(g2 c4o24)
(f c4o1 c4o24)
)
(=>
(g2 c4o25)
(f c4o1 c4o25)
)
(=>
(g2 c4o26)
(f c4o1 c4o26)
)
(=>
(g2 c4o27)
(f c4o1 c4o27)
)
(=>
(g2 c4o28)
(f c4o1 c4o28)
)
(=>
(g2 c4o29)
(f c4o1 c4o29)
)
(=>
(g2 c4o30)
(f c4o1 c4o30)
)
(=>
(g2 c4o31)
(f c4o1 c4o31)
)
(=>
(g2 c4o32)
(f c4o1 c4o32)
)
(=>
(g2 c4o33)
(f c4o1 c4o33)
)
(=>
(g2 c4o34)
(f c4o1 c4o34)
)
(=>
(g2 c4o35)
(f c4o1 c4o35)
)
(=>
(g2 c4o36)
(f c4o1 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o2 c4o10)
)
(=>
(g2 c4o11)
(f c4o2 c4o11)
)
(=>
(g2 c4o12)
(f c4o2 c4o12)
)
(=>
(g2 c4o13)
(f c4o2 c4o13)
)
(=>
(g2 c4o14)
(f c4o2 c4o14)
)
(=>
(g2 c4o15)
(f c4o2 c4o15)
)
(=>
(g2 c4o16)
(f c4o2 c4o16)
)
(=>
(g2 c4o17)
(f c4o2 c4o17)
)
(=>
(g2 c4o18)
(f c4o2 c4o18)
)
(=>
(g2 c4o19)
(f c4o2 c4o19)
)
(=>
(g2 c4o20)
(f c4o2 c4o20)
)
(=>
(g2 c4o21)
(f c4o2 c4o21)
)
(=>
(g2 c4o22)
(f c4o2 c4o22)
)
(=>
(g2 c4o23)
(f c4o2 c4o23)
)
(=>
(g2 c4o24)
(f c4o2 c4o24)
)
(=>
(g2 c4o25)
(f c4o2 c4o25)
)
(=>
(g2 c4o26)
(f c4o2 c4o26)
)
(=>
(g2 c4o27)
(f c4o2 c4o27)
)
(=>
(g2 c4o28)
(f c4o2 c4o28)
)
(=>
(g2 c4o29)
(f c4o2 c4o29)
)
(=>
(g2 c4o30)
(f c4o2 c4o30)
)
(=>
(g2 c4o31)
(f c4o2 c4o31)
)
(=>
(g2 c4o32)
(f c4o2 c4o32)
)
(=>
(g2 c4o33)
(f c4o2 c4o33)
)
(=>
(g2 c4o34)
(f c4o2 c4o34)
)
(=>
(g2 c4o35)
(f c4o2 c4o35)
)
(=>
(g2 c4o36)
(f c4o2 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o3 c4o10)
)
(=>
(g2 c4o11)
(f c4o3 c4o11)
)
(=>
(g2 c4o12)
(f c4o3 c4o12)
)
(=>
(g2 c4o13)
(f c4o3 c4o13)
)
(=>
(g2 c4o14)
(f c4o3 c4o14)
)
(=>
(g2 c4o15)
(f c4o3 c4o15)
)
(=>
(g2 c4o16)
(f c4o3 c4o16)
)
(=>
(g2 c4o17)
(f c4o3 c4o17)
)
(=>
(g2 c4o18)
(f c4o3 c4o18)
)
(=>
(g2 c4o19)
(f c4o3 c4o19)
)
(=>
(g2 c4o20)
(f c4o3 c4o20)
)
(=>
(g2 c4o21)
(f c4o3 c4o21)
)
(=>
(g2 c4o22)
(f c4o3 c4o22)
)
(=>
(g2 c4o23)
(f c4o3 c4o23)
)
(=>
(g2 c4o24)
(f c4o3 c4o24)
)
(=>
(g2 c4o25)
(f c4o3 c4o25)
)
(=>
(g2 c4o26)
(f c4o3 c4o26)
)
(=>
(g2 c4o27)
(f c4o3 c4o27)
)
(=>
(g2 c4o28)
(f c4o3 c4o28)
)
(=>
(g2 c4o29)
(f c4o3 c4o29)
)
(=>
(g2 c4o30)
(f c4o3 c4o30)
)
(=>
(g2 c4o31)
(f c4o3 c4o31)
)
(=>
(g2 c4o32)
(f c4o3 c4o32)
)
(=>
(g2 c4o33)
(f c4o3 c4o33)
)
(=>
(g2 c4o34)
(f c4o3 c4o34)
)
(=>
(g2 c4o35)
(f c4o3 c4o35)
)
(=>
(g2 c4o36)
(f c4o3 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o4 c4o10)
)
(=>
(g2 c4o11)
(f c4o4 c4o11)
)
(=>
(g2 c4o12)
(f c4o4 c4o12)
)
(=>
(g2 c4o13)
(f c4o4 c4o13)
)
(=>
(g2 c4o14)
(f c4o4 c4o14)
)
(=>
(g2 c4o15)
(f c4o4 c4o15)
)
(=>
(g2 c4o16)
(f c4o4 c4o16)
)
(=>
(g2 c4o17)
(f c4o4 c4o17)
)
(=>
(g2 c4o18)
(f c4o4 c4o18)
)
(=>
(g2 c4o19)
(f c4o4 c4o19)
)
(=>
(g2 c4o20)
(f c4o4 c4o20)
)
(=>
(g2 c4o21)
(f c4o4 c4o21)
)
(=>
(g2 c4o22)
(f c4o4 c4o22)
)
(=>
(g2 c4o23)
(f c4o4 c4o23)
)
(=>
(g2 c4o24)
(f c4o4 c4o24)
)
(=>
(g2 c4o25)
(f c4o4 c4o25)
)
(=>
(g2 c4o26)
(f c4o4 c4o26)
)
(=>
(g2 c4o27)
(f c4o4 c4o27)
)
(=>
(g2 c4o28)
(f c4o4 c4o28)
)
(=>
(g2 c4o29)
(f c4o4 c4o29)
)
(=>
(g2 c4o30)
(f c4o4 c4o30)
)
(=>
(g2 c4o31)
(f c4o4 c4o31)
)
(=>
(g2 c4o32)
(f c4o4 c4o32)
)
(=>
(g2 c4o33)
(f c4o4 c4o33)
)
(=>
(g2 c4o34)
(f c4o4 c4o34)
)
(=>
(g2 c4o35)
(f c4o4 c4o35)
)
(=>
(g2 c4o36)
(f c4o4 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o5 c4o10)
)
(=>
(g2 c4o11)
(f c4o5 c4o11)
)
(=>
(g2 c4o12)
(f c4o5 c4o12)
)
(=>
(g2 c4o13)
(f c4o5 c4o13)
)
(=>
(g2 c4o14)
(f c4o5 c4o14)
)
(=>
(g2 c4o15)
(f c4o5 c4o15)
)
(=>
(g2 c4o16)
(f c4o5 c4o16)
)
(=>
(g2 c4o17)
(f c4o5 c4o17)
)
(=>
(g2 c4o18)
(f c4o5 c4o18)
)
(=>
(g2 c4o19)
(f c4o5 c4o19)
)
(=>
(g2 c4o20)
(f c4o5 c4o20)
)
(=>
(g2 c4o21)
(f c4o5 c4o21)
)
(=>
(g2 c4o22)
(f c4o5 c4o22)
)
(=>
(g2 c4o23)
(f c4o5 c4o23)
)
(=>
(g2 c4o24)
(f c4o5 c4o24)
)
(=>
(g2 c4o25)
(f c4o5 c4o25)
)
(=>
(g2 c4o26)
(f c4o5 c4o26)
)
(=>
(g2 c4o27)
(f c4o5 c4o27)
)
(=>
(g2 c4o28)
(f c4o5 c4o28)
)
(=>
(g2 c4o29)
(f c4o5 c4o29)
)
(=>
(g2 c4o30)
(f c4o5 c4o30)
)
(=>
(g2 c4o31)
(f c4o5 c4o31)
)
(=>
(g2 c4o32)
(f c4o5 c4o32)
)
(=>
(g2 c4o33)
(f c4o5 c4o33)
)
(=>
(g2 c4o34)
(f c4o5 c4o34)
)
(=>
(g2 c4o35)
(f c4o5 c4o35)
)
(=>
(g2 c4o36)
(f c4o5 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o6 c4o10)
)
(=>
(g2 c4o11)
(f c4o6 c4o11)
)
(=>
(g2 c4o12)
(f c4o6 c4o12)
)
(=>
(g2 c4o13)
(f c4o6 c4o13)
)
(=>
(g2 c4o14)
(f c4o6 c4o14)
)
(=>
(g2 c4o15)
(f c4o6 c4o15)
)
(=>
(g2 c4o16)
(f c4o6 c4o16)
)
(=>
(g2 c4o17)
(f c4o6 c4o17)
)
(=>
(g2 c4o18)
(f c4o6 c4o18)
)
(=>
(g2 c4o19)
(f c4o6 c4o19)
)
(=>
(g2 c4o20)
(f c4o6 c4o20)
)
(=>
(g2 c4o21)
(f c4o6 c4o21)
)
(=>
(g2 c4o22)
(f c4o6 c4o22)
)
(=>
(g2 c4o23)
(f c4o6 c4o23)
)
(=>
(g2 c4o24)
(f c4o6 c4o24)
)
(=>
(g2 c4o25)
(f c4o6 c4o25)
)
(=>
(g2 c4o26)
(f c4o6 c4o26)
)
(=>
(g2 c4o27)
(f c4o6 c4o27)
)
(=>
(g2 c4o28)
(f c4o6 c4o28)
)
(=>
(g2 c4o29)
(f c4o6 c4o29)
)
(=>
(g2 c4o30)
(f c4o6 c4o30)
)
(=>
(g2 c4o31)
(f c4o6 c4o31)
)
(=>
(g2 c4o32)
(f c4o6 c4o32)
)
(=>
(g2 c4o33)
(f c4o6 c4o33)
)
(=>
(g2 c4o34)
(f c4o6 c4o34)
)
(=>
(g2 c4o35)
(f c4o6 c4o35)
)
(=>
(g2 c4o36)
(f c4o6 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o7 c4o10)
)
(=>
(g2 c4o11)
(f c4o7 c4o11)
)
(=>
(g2 c4o12)
(f c4o7 c4o12)
)
(=>
(g2 c4o13)
(f c4o7 c4o13)
)
(=>
(g2 c4o14)
(f c4o7 c4o14)
)
(=>
(g2 c4o15)
(f c4o7 c4o15)
)
(=>
(g2 c4o16)
(f c4o7 c4o16)
)
(=>
(g2 c4o17)
(f c4o7 c4o17)
)
(=>
(g2 c4o18)
(f c4o7 c4o18)
)
(=>
(g2 c4o19)
(f c4o7 c4o19)
)
(=>
(g2 c4o20)
(f c4o7 c4o20)
)
(=>
(g2 c4o21)
(f c4o7 c4o21)
)
(=>
(g2 c4o22)
(f c4o7 c4o22)
)
(=>
(g2 c4o23)
(f c4o7 c4o23)
)
(=>
(g2 c4o24)
(f c4o7 c4o24)
)
(=>
(g2 c4o25)
(f c4o7 c4o25)
)
(=>
(g2 c4o26)
(f c4o7 c4o26)
)
(=>
(g2 c4o27)
(f c4o7 c4o27)
)
(=>
(g2 c4o28)
(f c4o7 c4o28)
)
(=>
(g2 c4o29)
(f c4o7 c4o29)
)
(=>
(g2 c4o30)
(f c4o7 c4o30)
)
(=>
(g2 c4o31)
(f c4o7 c4o31)
)
(=>
(g2 c4o32)
(f c4o7 c4o32)
)
(=>
(g2 c4o33)
(f c4o7 c4o33)
)
(=>
(g2 c4o34)
(f c4o7 c4o34)
)
(=>
(g2 c4o35)
(f c4o7 c4o35)
)
(=>
(g2 c4o36)
(f c4o7 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o8 c4o10)
)
(=>
(g2 c4o11)
(f c4o8 c4o11)
)
(=>
(g2 c4o12)
(f c4o8 c4o12)
)
(=>
(g2 c4o13)
(f c4o8 c4o13)
)
(=>
(g2 c4o14)
(f c4o8 c4o14)
)
(=>
(g2 c4o15)
(f c4o8 c4o15)
)
(=>
(g2 c4o16)
(f c4o8 c4o16)
)
(=>
(g2 c4o17)
(f c4o8 c4o17)
)
(=>
(g2 c4o18)
(f c4o8 c4o18)
)
(=>
(g2 c4o19)
(f c4o8 c4o19)
)
(=>
(g2 c4o20)
(f c4o8 c4o20)
)
(=>
(g2 c4o21)
(f c4o8 c4o21)
)
(=>
(g2 c4o22)
(f c4o8 c4o22)
)
(=>
(g2 c4o23)
(f c4o8 c4o23)
)
(=>
(g2 c4o24)
(f c4o8 c4o24)
)
(=>
(g2 c4o25)
(f c4o8 c4o25)
)
(=>
(g2 c4o26)
(f c4o8 c4o26)
)
(=>
(g2 c4o27)
(f c4o8 c4o27)
)
(=>
(g2 c4o28)
(f c4o8 c4o28)
)
(=>
(g2 c4o29)
(f c4o8 c4o29)
)
(=>
(g2 c4o30)
(f c4o8 c4o30)
)
(=>
(g2 c4o31)
(f c4o8 c4o31)
)
(=>
(g2 c4o32)
(f c4o8 c4o32)
)
(=>
(g2 c4o33)
(f c4o8 c4o33)
)
(=>
(g2 c4o34)
(f c4o8 c4o34)
)
(=>
(g2 c4o35)
(f c4o8 c4o35)
)
(=>
(g2 c4o36)
(f c4o8 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
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
(=>
(g2 c4o10)
(f c4o9 c4o10)
)
(=>
(g2 c4o11)
(f c4o9 c4o11)
)
(=>
(g2 c4o12)
(f c4o9 c4o12)
)
(=>
(g2 c4o13)
(f c4o9 c4o13)
)
(=>
(g2 c4o14)
(f c4o9 c4o14)
)
(=>
(g2 c4o15)
(f c4o9 c4o15)
)
(=>
(g2 c4o16)
(f c4o9 c4o16)
)
(=>
(g2 c4o17)
(f c4o9 c4o17)
)
(=>
(g2 c4o18)
(f c4o9 c4o18)
)
(=>
(g2 c4o19)
(f c4o9 c4o19)
)
(=>
(g2 c4o20)
(f c4o9 c4o20)
)
(=>
(g2 c4o21)
(f c4o9 c4o21)
)
(=>
(g2 c4o22)
(f c4o9 c4o22)
)
(=>
(g2 c4o23)
(f c4o9 c4o23)
)
(=>
(g2 c4o24)
(f c4o9 c4o24)
)
(=>
(g2 c4o25)
(f c4o9 c4o25)
)
(=>
(g2 c4o26)
(f c4o9 c4o26)
)
(=>
(g2 c4o27)
(f c4o9 c4o27)
)
(=>
(g2 c4o28)
(f c4o9 c4o28)
)
(=>
(g2 c4o29)
(f c4o9 c4o29)
)
(=>
(g2 c4o30)
(f c4o9 c4o30)
)
(=>
(g2 c4o31)
(f c4o9 c4o31)
)
(=>
(g2 c4o32)
(f c4o9 c4o32)
)
(=>
(g2 c4o33)
(f c4o9 c4o33)
)
(=>
(g2 c4o34)
(f c4o9 c4o34)
)
(=>
(g2 c4o35)
(f c4o9 c4o35)
)
(=>
(g2 c4o36)
(f c4o9 c4o36)
)
)
)
)
(and
(g1 c4o10)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o10 c4o1)
)
(=>
(g2 c4o2)
(f c4o10 c4o2)
)
(=>
(g2 c4o3)
(f c4o10 c4o3)
)
(=>
(g2 c4o4)
(f c4o10 c4o4)
)
(=>
(g2 c4o5)
(f c4o10 c4o5)
)
(=>
(g2 c4o6)
(f c4o10 c4o6)
)
(=>
(g2 c4o7)
(f c4o10 c4o7)
)
(=>
(g2 c4o8)
(f c4o10 c4o8)
)
(=>
(g2 c4o9)
(f c4o10 c4o9)
)
(=>
(g2 c4o10)
(f c4o10 c4o10)
)
(=>
(g2 c4o11)
(f c4o10 c4o11)
)
(=>
(g2 c4o12)
(f c4o10 c4o12)
)
(=>
(g2 c4o13)
(f c4o10 c4o13)
)
(=>
(g2 c4o14)
(f c4o10 c4o14)
)
(=>
(g2 c4o15)
(f c4o10 c4o15)
)
(=>
(g2 c4o16)
(f c4o10 c4o16)
)
(=>
(g2 c4o17)
(f c4o10 c4o17)
)
(=>
(g2 c4o18)
(f c4o10 c4o18)
)
(=>
(g2 c4o19)
(f c4o10 c4o19)
)
(=>
(g2 c4o20)
(f c4o10 c4o20)
)
(=>
(g2 c4o21)
(f c4o10 c4o21)
)
(=>
(g2 c4o22)
(f c4o10 c4o22)
)
(=>
(g2 c4o23)
(f c4o10 c4o23)
)
(=>
(g2 c4o24)
(f c4o10 c4o24)
)
(=>
(g2 c4o25)
(f c4o10 c4o25)
)
(=>
(g2 c4o26)
(f c4o10 c4o26)
)
(=>
(g2 c4o27)
(f c4o10 c4o27)
)
(=>
(g2 c4o28)
(f c4o10 c4o28)
)
(=>
(g2 c4o29)
(f c4o10 c4o29)
)
(=>
(g2 c4o30)
(f c4o10 c4o30)
)
(=>
(g2 c4o31)
(f c4o10 c4o31)
)
(=>
(g2 c4o32)
(f c4o10 c4o32)
)
(=>
(g2 c4o33)
(f c4o10 c4o33)
)
(=>
(g2 c4o34)
(f c4o10 c4o34)
)
(=>
(g2 c4o35)
(f c4o10 c4o35)
)
(=>
(g2 c4o36)
(f c4o10 c4o36)
)
)
)
)
(and
(g1 c4o11)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o11 c4o1)
)
(=>
(g2 c4o2)
(f c4o11 c4o2)
)
(=>
(g2 c4o3)
(f c4o11 c4o3)
)
(=>
(g2 c4o4)
(f c4o11 c4o4)
)
(=>
(g2 c4o5)
(f c4o11 c4o5)
)
(=>
(g2 c4o6)
(f c4o11 c4o6)
)
(=>
(g2 c4o7)
(f c4o11 c4o7)
)
(=>
(g2 c4o8)
(f c4o11 c4o8)
)
(=>
(g2 c4o9)
(f c4o11 c4o9)
)
(=>
(g2 c4o10)
(f c4o11 c4o10)
)
(=>
(g2 c4o11)
(f c4o11 c4o11)
)
(=>
(g2 c4o12)
(f c4o11 c4o12)
)
(=>
(g2 c4o13)
(f c4o11 c4o13)
)
(=>
(g2 c4o14)
(f c4o11 c4o14)
)
(=>
(g2 c4o15)
(f c4o11 c4o15)
)
(=>
(g2 c4o16)
(f c4o11 c4o16)
)
(=>
(g2 c4o17)
(f c4o11 c4o17)
)
(=>
(g2 c4o18)
(f c4o11 c4o18)
)
(=>
(g2 c4o19)
(f c4o11 c4o19)
)
(=>
(g2 c4o20)
(f c4o11 c4o20)
)
(=>
(g2 c4o21)
(f c4o11 c4o21)
)
(=>
(g2 c4o22)
(f c4o11 c4o22)
)
(=>
(g2 c4o23)
(f c4o11 c4o23)
)
(=>
(g2 c4o24)
(f c4o11 c4o24)
)
(=>
(g2 c4o25)
(f c4o11 c4o25)
)
(=>
(g2 c4o26)
(f c4o11 c4o26)
)
(=>
(g2 c4o27)
(f c4o11 c4o27)
)
(=>
(g2 c4o28)
(f c4o11 c4o28)
)
(=>
(g2 c4o29)
(f c4o11 c4o29)
)
(=>
(g2 c4o30)
(f c4o11 c4o30)
)
(=>
(g2 c4o31)
(f c4o11 c4o31)
)
(=>
(g2 c4o32)
(f c4o11 c4o32)
)
(=>
(g2 c4o33)
(f c4o11 c4o33)
)
(=>
(g2 c4o34)
(f c4o11 c4o34)
)
(=>
(g2 c4o35)
(f c4o11 c4o35)
)
(=>
(g2 c4o36)
(f c4o11 c4o36)
)
)
)
)
(and
(g1 c4o12)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o12 c4o1)
)
(=>
(g2 c4o2)
(f c4o12 c4o2)
)
(=>
(g2 c4o3)
(f c4o12 c4o3)
)
(=>
(g2 c4o4)
(f c4o12 c4o4)
)
(=>
(g2 c4o5)
(f c4o12 c4o5)
)
(=>
(g2 c4o6)
(f c4o12 c4o6)
)
(=>
(g2 c4o7)
(f c4o12 c4o7)
)
(=>
(g2 c4o8)
(f c4o12 c4o8)
)
(=>
(g2 c4o9)
(f c4o12 c4o9)
)
(=>
(g2 c4o10)
(f c4o12 c4o10)
)
(=>
(g2 c4o11)
(f c4o12 c4o11)
)
(=>
(g2 c4o12)
(f c4o12 c4o12)
)
(=>
(g2 c4o13)
(f c4o12 c4o13)
)
(=>
(g2 c4o14)
(f c4o12 c4o14)
)
(=>
(g2 c4o15)
(f c4o12 c4o15)
)
(=>
(g2 c4o16)
(f c4o12 c4o16)
)
(=>
(g2 c4o17)
(f c4o12 c4o17)
)
(=>
(g2 c4o18)
(f c4o12 c4o18)
)
(=>
(g2 c4o19)
(f c4o12 c4o19)
)
(=>
(g2 c4o20)
(f c4o12 c4o20)
)
(=>
(g2 c4o21)
(f c4o12 c4o21)
)
(=>
(g2 c4o22)
(f c4o12 c4o22)
)
(=>
(g2 c4o23)
(f c4o12 c4o23)
)
(=>
(g2 c4o24)
(f c4o12 c4o24)
)
(=>
(g2 c4o25)
(f c4o12 c4o25)
)
(=>
(g2 c4o26)
(f c4o12 c4o26)
)
(=>
(g2 c4o27)
(f c4o12 c4o27)
)
(=>
(g2 c4o28)
(f c4o12 c4o28)
)
(=>
(g2 c4o29)
(f c4o12 c4o29)
)
(=>
(g2 c4o30)
(f c4o12 c4o30)
)
(=>
(g2 c4o31)
(f c4o12 c4o31)
)
(=>
(g2 c4o32)
(f c4o12 c4o32)
)
(=>
(g2 c4o33)
(f c4o12 c4o33)
)
(=>
(g2 c4o34)
(f c4o12 c4o34)
)
(=>
(g2 c4o35)
(f c4o12 c4o35)
)
(=>
(g2 c4o36)
(f c4o12 c4o36)
)
)
)
)
(and
(g1 c4o13)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o13 c4o1)
)
(=>
(g2 c4o2)
(f c4o13 c4o2)
)
(=>
(g2 c4o3)
(f c4o13 c4o3)
)
(=>
(g2 c4o4)
(f c4o13 c4o4)
)
(=>
(g2 c4o5)
(f c4o13 c4o5)
)
(=>
(g2 c4o6)
(f c4o13 c4o6)
)
(=>
(g2 c4o7)
(f c4o13 c4o7)
)
(=>
(g2 c4o8)
(f c4o13 c4o8)
)
(=>
(g2 c4o9)
(f c4o13 c4o9)
)
(=>
(g2 c4o10)
(f c4o13 c4o10)
)
(=>
(g2 c4o11)
(f c4o13 c4o11)
)
(=>
(g2 c4o12)
(f c4o13 c4o12)
)
(=>
(g2 c4o13)
(f c4o13 c4o13)
)
(=>
(g2 c4o14)
(f c4o13 c4o14)
)
(=>
(g2 c4o15)
(f c4o13 c4o15)
)
(=>
(g2 c4o16)
(f c4o13 c4o16)
)
(=>
(g2 c4o17)
(f c4o13 c4o17)
)
(=>
(g2 c4o18)
(f c4o13 c4o18)
)
(=>
(g2 c4o19)
(f c4o13 c4o19)
)
(=>
(g2 c4o20)
(f c4o13 c4o20)
)
(=>
(g2 c4o21)
(f c4o13 c4o21)
)
(=>
(g2 c4o22)
(f c4o13 c4o22)
)
(=>
(g2 c4o23)
(f c4o13 c4o23)
)
(=>
(g2 c4o24)
(f c4o13 c4o24)
)
(=>
(g2 c4o25)
(f c4o13 c4o25)
)
(=>
(g2 c4o26)
(f c4o13 c4o26)
)
(=>
(g2 c4o27)
(f c4o13 c4o27)
)
(=>
(g2 c4o28)
(f c4o13 c4o28)
)
(=>
(g2 c4o29)
(f c4o13 c4o29)
)
(=>
(g2 c4o30)
(f c4o13 c4o30)
)
(=>
(g2 c4o31)
(f c4o13 c4o31)
)
(=>
(g2 c4o32)
(f c4o13 c4o32)
)
(=>
(g2 c4o33)
(f c4o13 c4o33)
)
(=>
(g2 c4o34)
(f c4o13 c4o34)
)
(=>
(g2 c4o35)
(f c4o13 c4o35)
)
(=>
(g2 c4o36)
(f c4o13 c4o36)
)
)
)
)
(and
(g1 c4o14)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o14 c4o1)
)
(=>
(g2 c4o2)
(f c4o14 c4o2)
)
(=>
(g2 c4o3)
(f c4o14 c4o3)
)
(=>
(g2 c4o4)
(f c4o14 c4o4)
)
(=>
(g2 c4o5)
(f c4o14 c4o5)
)
(=>
(g2 c4o6)
(f c4o14 c4o6)
)
(=>
(g2 c4o7)
(f c4o14 c4o7)
)
(=>
(g2 c4o8)
(f c4o14 c4o8)
)
(=>
(g2 c4o9)
(f c4o14 c4o9)
)
(=>
(g2 c4o10)
(f c4o14 c4o10)
)
(=>
(g2 c4o11)
(f c4o14 c4o11)
)
(=>
(g2 c4o12)
(f c4o14 c4o12)
)
(=>
(g2 c4o13)
(f c4o14 c4o13)
)
(=>
(g2 c4o14)
(f c4o14 c4o14)
)
(=>
(g2 c4o15)
(f c4o14 c4o15)
)
(=>
(g2 c4o16)
(f c4o14 c4o16)
)
(=>
(g2 c4o17)
(f c4o14 c4o17)
)
(=>
(g2 c4o18)
(f c4o14 c4o18)
)
(=>
(g2 c4o19)
(f c4o14 c4o19)
)
(=>
(g2 c4o20)
(f c4o14 c4o20)
)
(=>
(g2 c4o21)
(f c4o14 c4o21)
)
(=>
(g2 c4o22)
(f c4o14 c4o22)
)
(=>
(g2 c4o23)
(f c4o14 c4o23)
)
(=>
(g2 c4o24)
(f c4o14 c4o24)
)
(=>
(g2 c4o25)
(f c4o14 c4o25)
)
(=>
(g2 c4o26)
(f c4o14 c4o26)
)
(=>
(g2 c4o27)
(f c4o14 c4o27)
)
(=>
(g2 c4o28)
(f c4o14 c4o28)
)
(=>
(g2 c4o29)
(f c4o14 c4o29)
)
(=>
(g2 c4o30)
(f c4o14 c4o30)
)
(=>
(g2 c4o31)
(f c4o14 c4o31)
)
(=>
(g2 c4o32)
(f c4o14 c4o32)
)
(=>
(g2 c4o33)
(f c4o14 c4o33)
)
(=>
(g2 c4o34)
(f c4o14 c4o34)
)
(=>
(g2 c4o35)
(f c4o14 c4o35)
)
(=>
(g2 c4o36)
(f c4o14 c4o36)
)
)
)
)
(and
(g1 c4o15)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o15 c4o1)
)
(=>
(g2 c4o2)
(f c4o15 c4o2)
)
(=>
(g2 c4o3)
(f c4o15 c4o3)
)
(=>
(g2 c4o4)
(f c4o15 c4o4)
)
(=>
(g2 c4o5)
(f c4o15 c4o5)
)
(=>
(g2 c4o6)
(f c4o15 c4o6)
)
(=>
(g2 c4o7)
(f c4o15 c4o7)
)
(=>
(g2 c4o8)
(f c4o15 c4o8)
)
(=>
(g2 c4o9)
(f c4o15 c4o9)
)
(=>
(g2 c4o10)
(f c4o15 c4o10)
)
(=>
(g2 c4o11)
(f c4o15 c4o11)
)
(=>
(g2 c4o12)
(f c4o15 c4o12)
)
(=>
(g2 c4o13)
(f c4o15 c4o13)
)
(=>
(g2 c4o14)
(f c4o15 c4o14)
)
(=>
(g2 c4o15)
(f c4o15 c4o15)
)
(=>
(g2 c4o16)
(f c4o15 c4o16)
)
(=>
(g2 c4o17)
(f c4o15 c4o17)
)
(=>
(g2 c4o18)
(f c4o15 c4o18)
)
(=>
(g2 c4o19)
(f c4o15 c4o19)
)
(=>
(g2 c4o20)
(f c4o15 c4o20)
)
(=>
(g2 c4o21)
(f c4o15 c4o21)
)
(=>
(g2 c4o22)
(f c4o15 c4o22)
)
(=>
(g2 c4o23)
(f c4o15 c4o23)
)
(=>
(g2 c4o24)
(f c4o15 c4o24)
)
(=>
(g2 c4o25)
(f c4o15 c4o25)
)
(=>
(g2 c4o26)
(f c4o15 c4o26)
)
(=>
(g2 c4o27)
(f c4o15 c4o27)
)
(=>
(g2 c4o28)
(f c4o15 c4o28)
)
(=>
(g2 c4o29)
(f c4o15 c4o29)
)
(=>
(g2 c4o30)
(f c4o15 c4o30)
)
(=>
(g2 c4o31)
(f c4o15 c4o31)
)
(=>
(g2 c4o32)
(f c4o15 c4o32)
)
(=>
(g2 c4o33)
(f c4o15 c4o33)
)
(=>
(g2 c4o34)
(f c4o15 c4o34)
)
(=>
(g2 c4o35)
(f c4o15 c4o35)
)
(=>
(g2 c4o36)
(f c4o15 c4o36)
)
)
)
)
(and
(g1 c4o16)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o16 c4o1)
)
(=>
(g2 c4o2)
(f c4o16 c4o2)
)
(=>
(g2 c4o3)
(f c4o16 c4o3)
)
(=>
(g2 c4o4)
(f c4o16 c4o4)
)
(=>
(g2 c4o5)
(f c4o16 c4o5)
)
(=>
(g2 c4o6)
(f c4o16 c4o6)
)
(=>
(g2 c4o7)
(f c4o16 c4o7)
)
(=>
(g2 c4o8)
(f c4o16 c4o8)
)
(=>
(g2 c4o9)
(f c4o16 c4o9)
)
(=>
(g2 c4o10)
(f c4o16 c4o10)
)
(=>
(g2 c4o11)
(f c4o16 c4o11)
)
(=>
(g2 c4o12)
(f c4o16 c4o12)
)
(=>
(g2 c4o13)
(f c4o16 c4o13)
)
(=>
(g2 c4o14)
(f c4o16 c4o14)
)
(=>
(g2 c4o15)
(f c4o16 c4o15)
)
(=>
(g2 c4o16)
(f c4o16 c4o16)
)
(=>
(g2 c4o17)
(f c4o16 c4o17)
)
(=>
(g2 c4o18)
(f c4o16 c4o18)
)
(=>
(g2 c4o19)
(f c4o16 c4o19)
)
(=>
(g2 c4o20)
(f c4o16 c4o20)
)
(=>
(g2 c4o21)
(f c4o16 c4o21)
)
(=>
(g2 c4o22)
(f c4o16 c4o22)
)
(=>
(g2 c4o23)
(f c4o16 c4o23)
)
(=>
(g2 c4o24)
(f c4o16 c4o24)
)
(=>
(g2 c4o25)
(f c4o16 c4o25)
)
(=>
(g2 c4o26)
(f c4o16 c4o26)
)
(=>
(g2 c4o27)
(f c4o16 c4o27)
)
(=>
(g2 c4o28)
(f c4o16 c4o28)
)
(=>
(g2 c4o29)
(f c4o16 c4o29)
)
(=>
(g2 c4o30)
(f c4o16 c4o30)
)
(=>
(g2 c4o31)
(f c4o16 c4o31)
)
(=>
(g2 c4o32)
(f c4o16 c4o32)
)
(=>
(g2 c4o33)
(f c4o16 c4o33)
)
(=>
(g2 c4o34)
(f c4o16 c4o34)
)
(=>
(g2 c4o35)
(f c4o16 c4o35)
)
(=>
(g2 c4o36)
(f c4o16 c4o36)
)
)
)
)
(and
(g1 c4o17)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o17 c4o1)
)
(=>
(g2 c4o2)
(f c4o17 c4o2)
)
(=>
(g2 c4o3)
(f c4o17 c4o3)
)
(=>
(g2 c4o4)
(f c4o17 c4o4)
)
(=>
(g2 c4o5)
(f c4o17 c4o5)
)
(=>
(g2 c4o6)
(f c4o17 c4o6)
)
(=>
(g2 c4o7)
(f c4o17 c4o7)
)
(=>
(g2 c4o8)
(f c4o17 c4o8)
)
(=>
(g2 c4o9)
(f c4o17 c4o9)
)
(=>
(g2 c4o10)
(f c4o17 c4o10)
)
(=>
(g2 c4o11)
(f c4o17 c4o11)
)
(=>
(g2 c4o12)
(f c4o17 c4o12)
)
(=>
(g2 c4o13)
(f c4o17 c4o13)
)
(=>
(g2 c4o14)
(f c4o17 c4o14)
)
(=>
(g2 c4o15)
(f c4o17 c4o15)
)
(=>
(g2 c4o16)
(f c4o17 c4o16)
)
(=>
(g2 c4o17)
(f c4o17 c4o17)
)
(=>
(g2 c4o18)
(f c4o17 c4o18)
)
(=>
(g2 c4o19)
(f c4o17 c4o19)
)
(=>
(g2 c4o20)
(f c4o17 c4o20)
)
(=>
(g2 c4o21)
(f c4o17 c4o21)
)
(=>
(g2 c4o22)
(f c4o17 c4o22)
)
(=>
(g2 c4o23)
(f c4o17 c4o23)
)
(=>
(g2 c4o24)
(f c4o17 c4o24)
)
(=>
(g2 c4o25)
(f c4o17 c4o25)
)
(=>
(g2 c4o26)
(f c4o17 c4o26)
)
(=>
(g2 c4o27)
(f c4o17 c4o27)
)
(=>
(g2 c4o28)
(f c4o17 c4o28)
)
(=>
(g2 c4o29)
(f c4o17 c4o29)
)
(=>
(g2 c4o30)
(f c4o17 c4o30)
)
(=>
(g2 c4o31)
(f c4o17 c4o31)
)
(=>
(g2 c4o32)
(f c4o17 c4o32)
)
(=>
(g2 c4o33)
(f c4o17 c4o33)
)
(=>
(g2 c4o34)
(f c4o17 c4o34)
)
(=>
(g2 c4o35)
(f c4o17 c4o35)
)
(=>
(g2 c4o36)
(f c4o17 c4o36)
)
)
)
)
(and
(g1 c4o18)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o18 c4o1)
)
(=>
(g2 c4o2)
(f c4o18 c4o2)
)
(=>
(g2 c4o3)
(f c4o18 c4o3)
)
(=>
(g2 c4o4)
(f c4o18 c4o4)
)
(=>
(g2 c4o5)
(f c4o18 c4o5)
)
(=>
(g2 c4o6)
(f c4o18 c4o6)
)
(=>
(g2 c4o7)
(f c4o18 c4o7)
)
(=>
(g2 c4o8)
(f c4o18 c4o8)
)
(=>
(g2 c4o9)
(f c4o18 c4o9)
)
(=>
(g2 c4o10)
(f c4o18 c4o10)
)
(=>
(g2 c4o11)
(f c4o18 c4o11)
)
(=>
(g2 c4o12)
(f c4o18 c4o12)
)
(=>
(g2 c4o13)
(f c4o18 c4o13)
)
(=>
(g2 c4o14)
(f c4o18 c4o14)
)
(=>
(g2 c4o15)
(f c4o18 c4o15)
)
(=>
(g2 c4o16)
(f c4o18 c4o16)
)
(=>
(g2 c4o17)
(f c4o18 c4o17)
)
(=>
(g2 c4o18)
(f c4o18 c4o18)
)
(=>
(g2 c4o19)
(f c4o18 c4o19)
)
(=>
(g2 c4o20)
(f c4o18 c4o20)
)
(=>
(g2 c4o21)
(f c4o18 c4o21)
)
(=>
(g2 c4o22)
(f c4o18 c4o22)
)
(=>
(g2 c4o23)
(f c4o18 c4o23)
)
(=>
(g2 c4o24)
(f c4o18 c4o24)
)
(=>
(g2 c4o25)
(f c4o18 c4o25)
)
(=>
(g2 c4o26)
(f c4o18 c4o26)
)
(=>
(g2 c4o27)
(f c4o18 c4o27)
)
(=>
(g2 c4o28)
(f c4o18 c4o28)
)
(=>
(g2 c4o29)
(f c4o18 c4o29)
)
(=>
(g2 c4o30)
(f c4o18 c4o30)
)
(=>
(g2 c4o31)
(f c4o18 c4o31)
)
(=>
(g2 c4o32)
(f c4o18 c4o32)
)
(=>
(g2 c4o33)
(f c4o18 c4o33)
)
(=>
(g2 c4o34)
(f c4o18 c4o34)
)
(=>
(g2 c4o35)
(f c4o18 c4o35)
)
(=>
(g2 c4o36)
(f c4o18 c4o36)
)
)
)
)
(and
(g1 c4o19)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o19 c4o1)
)
(=>
(g2 c4o2)
(f c4o19 c4o2)
)
(=>
(g2 c4o3)
(f c4o19 c4o3)
)
(=>
(g2 c4o4)
(f c4o19 c4o4)
)
(=>
(g2 c4o5)
(f c4o19 c4o5)
)
(=>
(g2 c4o6)
(f c4o19 c4o6)
)
(=>
(g2 c4o7)
(f c4o19 c4o7)
)
(=>
(g2 c4o8)
(f c4o19 c4o8)
)
(=>
(g2 c4o9)
(f c4o19 c4o9)
)
(=>
(g2 c4o10)
(f c4o19 c4o10)
)
(=>
(g2 c4o11)
(f c4o19 c4o11)
)
(=>
(g2 c4o12)
(f c4o19 c4o12)
)
(=>
(g2 c4o13)
(f c4o19 c4o13)
)
(=>
(g2 c4o14)
(f c4o19 c4o14)
)
(=>
(g2 c4o15)
(f c4o19 c4o15)
)
(=>
(g2 c4o16)
(f c4o19 c4o16)
)
(=>
(g2 c4o17)
(f c4o19 c4o17)
)
(=>
(g2 c4o18)
(f c4o19 c4o18)
)
(=>
(g2 c4o19)
(f c4o19 c4o19)
)
(=>
(g2 c4o20)
(f c4o19 c4o20)
)
(=>
(g2 c4o21)
(f c4o19 c4o21)
)
(=>
(g2 c4o22)
(f c4o19 c4o22)
)
(=>
(g2 c4o23)
(f c4o19 c4o23)
)
(=>
(g2 c4o24)
(f c4o19 c4o24)
)
(=>
(g2 c4o25)
(f c4o19 c4o25)
)
(=>
(g2 c4o26)
(f c4o19 c4o26)
)
(=>
(g2 c4o27)
(f c4o19 c4o27)
)
(=>
(g2 c4o28)
(f c4o19 c4o28)
)
(=>
(g2 c4o29)
(f c4o19 c4o29)
)
(=>
(g2 c4o30)
(f c4o19 c4o30)
)
(=>
(g2 c4o31)
(f c4o19 c4o31)
)
(=>
(g2 c4o32)
(f c4o19 c4o32)
)
(=>
(g2 c4o33)
(f c4o19 c4o33)
)
(=>
(g2 c4o34)
(f c4o19 c4o34)
)
(=>
(g2 c4o35)
(f c4o19 c4o35)
)
(=>
(g2 c4o36)
(f c4o19 c4o36)
)
)
)
)
(and
(g1 c4o20)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o20 c4o1)
)
(=>
(g2 c4o2)
(f c4o20 c4o2)
)
(=>
(g2 c4o3)
(f c4o20 c4o3)
)
(=>
(g2 c4o4)
(f c4o20 c4o4)
)
(=>
(g2 c4o5)
(f c4o20 c4o5)
)
(=>
(g2 c4o6)
(f c4o20 c4o6)
)
(=>
(g2 c4o7)
(f c4o20 c4o7)
)
(=>
(g2 c4o8)
(f c4o20 c4o8)
)
(=>
(g2 c4o9)
(f c4o20 c4o9)
)
(=>
(g2 c4o10)
(f c4o20 c4o10)
)
(=>
(g2 c4o11)
(f c4o20 c4o11)
)
(=>
(g2 c4o12)
(f c4o20 c4o12)
)
(=>
(g2 c4o13)
(f c4o20 c4o13)
)
(=>
(g2 c4o14)
(f c4o20 c4o14)
)
(=>
(g2 c4o15)
(f c4o20 c4o15)
)
(=>
(g2 c4o16)
(f c4o20 c4o16)
)
(=>
(g2 c4o17)
(f c4o20 c4o17)
)
(=>
(g2 c4o18)
(f c4o20 c4o18)
)
(=>
(g2 c4o19)
(f c4o20 c4o19)
)
(=>
(g2 c4o20)
(f c4o20 c4o20)
)
(=>
(g2 c4o21)
(f c4o20 c4o21)
)
(=>
(g2 c4o22)
(f c4o20 c4o22)
)
(=>
(g2 c4o23)
(f c4o20 c4o23)
)
(=>
(g2 c4o24)
(f c4o20 c4o24)
)
(=>
(g2 c4o25)
(f c4o20 c4o25)
)
(=>
(g2 c4o26)
(f c4o20 c4o26)
)
(=>
(g2 c4o27)
(f c4o20 c4o27)
)
(=>
(g2 c4o28)
(f c4o20 c4o28)
)
(=>
(g2 c4o29)
(f c4o20 c4o29)
)
(=>
(g2 c4o30)
(f c4o20 c4o30)
)
(=>
(g2 c4o31)
(f c4o20 c4o31)
)
(=>
(g2 c4o32)
(f c4o20 c4o32)
)
(=>
(g2 c4o33)
(f c4o20 c4o33)
)
(=>
(g2 c4o34)
(f c4o20 c4o34)
)
(=>
(g2 c4o35)
(f c4o20 c4o35)
)
(=>
(g2 c4o36)
(f c4o20 c4o36)
)
)
)
)
(and
(g1 c4o21)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o21 c4o1)
)
(=>
(g2 c4o2)
(f c4o21 c4o2)
)
(=>
(g2 c4o3)
(f c4o21 c4o3)
)
(=>
(g2 c4o4)
(f c4o21 c4o4)
)
(=>
(g2 c4o5)
(f c4o21 c4o5)
)
(=>
(g2 c4o6)
(f c4o21 c4o6)
)
(=>
(g2 c4o7)
(f c4o21 c4o7)
)
(=>
(g2 c4o8)
(f c4o21 c4o8)
)
(=>
(g2 c4o9)
(f c4o21 c4o9)
)
(=>
(g2 c4o10)
(f c4o21 c4o10)
)
(=>
(g2 c4o11)
(f c4o21 c4o11)
)
(=>
(g2 c4o12)
(f c4o21 c4o12)
)
(=>
(g2 c4o13)
(f c4o21 c4o13)
)
(=>
(g2 c4o14)
(f c4o21 c4o14)
)
(=>
(g2 c4o15)
(f c4o21 c4o15)
)
(=>
(g2 c4o16)
(f c4o21 c4o16)
)
(=>
(g2 c4o17)
(f c4o21 c4o17)
)
(=>
(g2 c4o18)
(f c4o21 c4o18)
)
(=>
(g2 c4o19)
(f c4o21 c4o19)
)
(=>
(g2 c4o20)
(f c4o21 c4o20)
)
(=>
(g2 c4o21)
(f c4o21 c4o21)
)
(=>
(g2 c4o22)
(f c4o21 c4o22)
)
(=>
(g2 c4o23)
(f c4o21 c4o23)
)
(=>
(g2 c4o24)
(f c4o21 c4o24)
)
(=>
(g2 c4o25)
(f c4o21 c4o25)
)
(=>
(g2 c4o26)
(f c4o21 c4o26)
)
(=>
(g2 c4o27)
(f c4o21 c4o27)
)
(=>
(g2 c4o28)
(f c4o21 c4o28)
)
(=>
(g2 c4o29)
(f c4o21 c4o29)
)
(=>
(g2 c4o30)
(f c4o21 c4o30)
)
(=>
(g2 c4o31)
(f c4o21 c4o31)
)
(=>
(g2 c4o32)
(f c4o21 c4o32)
)
(=>
(g2 c4o33)
(f c4o21 c4o33)
)
(=>
(g2 c4o34)
(f c4o21 c4o34)
)
(=>
(g2 c4o35)
(f c4o21 c4o35)
)
(=>
(g2 c4o36)
(f c4o21 c4o36)
)
)
)
)
(and
(g1 c4o22)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o22 c4o1)
)
(=>
(g2 c4o2)
(f c4o22 c4o2)
)
(=>
(g2 c4o3)
(f c4o22 c4o3)
)
(=>
(g2 c4o4)
(f c4o22 c4o4)
)
(=>
(g2 c4o5)
(f c4o22 c4o5)
)
(=>
(g2 c4o6)
(f c4o22 c4o6)
)
(=>
(g2 c4o7)
(f c4o22 c4o7)
)
(=>
(g2 c4o8)
(f c4o22 c4o8)
)
(=>
(g2 c4o9)
(f c4o22 c4o9)
)
(=>
(g2 c4o10)
(f c4o22 c4o10)
)
(=>
(g2 c4o11)
(f c4o22 c4o11)
)
(=>
(g2 c4o12)
(f c4o22 c4o12)
)
(=>
(g2 c4o13)
(f c4o22 c4o13)
)
(=>
(g2 c4o14)
(f c4o22 c4o14)
)
(=>
(g2 c4o15)
(f c4o22 c4o15)
)
(=>
(g2 c4o16)
(f c4o22 c4o16)
)
(=>
(g2 c4o17)
(f c4o22 c4o17)
)
(=>
(g2 c4o18)
(f c4o22 c4o18)
)
(=>
(g2 c4o19)
(f c4o22 c4o19)
)
(=>
(g2 c4o20)
(f c4o22 c4o20)
)
(=>
(g2 c4o21)
(f c4o22 c4o21)
)
(=>
(g2 c4o22)
(f c4o22 c4o22)
)
(=>
(g2 c4o23)
(f c4o22 c4o23)
)
(=>
(g2 c4o24)
(f c4o22 c4o24)
)
(=>
(g2 c4o25)
(f c4o22 c4o25)
)
(=>
(g2 c4o26)
(f c4o22 c4o26)
)
(=>
(g2 c4o27)
(f c4o22 c4o27)
)
(=>
(g2 c4o28)
(f c4o22 c4o28)
)
(=>
(g2 c4o29)
(f c4o22 c4o29)
)
(=>
(g2 c4o30)
(f c4o22 c4o30)
)
(=>
(g2 c4o31)
(f c4o22 c4o31)
)
(=>
(g2 c4o32)
(f c4o22 c4o32)
)
(=>
(g2 c4o33)
(f c4o22 c4o33)
)
(=>
(g2 c4o34)
(f c4o22 c4o34)
)
(=>
(g2 c4o35)
(f c4o22 c4o35)
)
(=>
(g2 c4o36)
(f c4o22 c4o36)
)
)
)
)
(and
(g1 c4o23)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o23 c4o1)
)
(=>
(g2 c4o2)
(f c4o23 c4o2)
)
(=>
(g2 c4o3)
(f c4o23 c4o3)
)
(=>
(g2 c4o4)
(f c4o23 c4o4)
)
(=>
(g2 c4o5)
(f c4o23 c4o5)
)
(=>
(g2 c4o6)
(f c4o23 c4o6)
)
(=>
(g2 c4o7)
(f c4o23 c4o7)
)
(=>
(g2 c4o8)
(f c4o23 c4o8)
)
(=>
(g2 c4o9)
(f c4o23 c4o9)
)
(=>
(g2 c4o10)
(f c4o23 c4o10)
)
(=>
(g2 c4o11)
(f c4o23 c4o11)
)
(=>
(g2 c4o12)
(f c4o23 c4o12)
)
(=>
(g2 c4o13)
(f c4o23 c4o13)
)
(=>
(g2 c4o14)
(f c4o23 c4o14)
)
(=>
(g2 c4o15)
(f c4o23 c4o15)
)
(=>
(g2 c4o16)
(f c4o23 c4o16)
)
(=>
(g2 c4o17)
(f c4o23 c4o17)
)
(=>
(g2 c4o18)
(f c4o23 c4o18)
)
(=>
(g2 c4o19)
(f c4o23 c4o19)
)
(=>
(g2 c4o20)
(f c4o23 c4o20)
)
(=>
(g2 c4o21)
(f c4o23 c4o21)
)
(=>
(g2 c4o22)
(f c4o23 c4o22)
)
(=>
(g2 c4o23)
(f c4o23 c4o23)
)
(=>
(g2 c4o24)
(f c4o23 c4o24)
)
(=>
(g2 c4o25)
(f c4o23 c4o25)
)
(=>
(g2 c4o26)
(f c4o23 c4o26)
)
(=>
(g2 c4o27)
(f c4o23 c4o27)
)
(=>
(g2 c4o28)
(f c4o23 c4o28)
)
(=>
(g2 c4o29)
(f c4o23 c4o29)
)
(=>
(g2 c4o30)
(f c4o23 c4o30)
)
(=>
(g2 c4o31)
(f c4o23 c4o31)
)
(=>
(g2 c4o32)
(f c4o23 c4o32)
)
(=>
(g2 c4o33)
(f c4o23 c4o33)
)
(=>
(g2 c4o34)
(f c4o23 c4o34)
)
(=>
(g2 c4o35)
(f c4o23 c4o35)
)
(=>
(g2 c4o36)
(f c4o23 c4o36)
)
)
)
)
(and
(g1 c4o24)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o24 c4o1)
)
(=>
(g2 c4o2)
(f c4o24 c4o2)
)
(=>
(g2 c4o3)
(f c4o24 c4o3)
)
(=>
(g2 c4o4)
(f c4o24 c4o4)
)
(=>
(g2 c4o5)
(f c4o24 c4o5)
)
(=>
(g2 c4o6)
(f c4o24 c4o6)
)
(=>
(g2 c4o7)
(f c4o24 c4o7)
)
(=>
(g2 c4o8)
(f c4o24 c4o8)
)
(=>
(g2 c4o9)
(f c4o24 c4o9)
)
(=>
(g2 c4o10)
(f c4o24 c4o10)
)
(=>
(g2 c4o11)
(f c4o24 c4o11)
)
(=>
(g2 c4o12)
(f c4o24 c4o12)
)
(=>
(g2 c4o13)
(f c4o24 c4o13)
)
(=>
(g2 c4o14)
(f c4o24 c4o14)
)
(=>
(g2 c4o15)
(f c4o24 c4o15)
)
(=>
(g2 c4o16)
(f c4o24 c4o16)
)
(=>
(g2 c4o17)
(f c4o24 c4o17)
)
(=>
(g2 c4o18)
(f c4o24 c4o18)
)
(=>
(g2 c4o19)
(f c4o24 c4o19)
)
(=>
(g2 c4o20)
(f c4o24 c4o20)
)
(=>
(g2 c4o21)
(f c4o24 c4o21)
)
(=>
(g2 c4o22)
(f c4o24 c4o22)
)
(=>
(g2 c4o23)
(f c4o24 c4o23)
)
(=>
(g2 c4o24)
(f c4o24 c4o24)
)
(=>
(g2 c4o25)
(f c4o24 c4o25)
)
(=>
(g2 c4o26)
(f c4o24 c4o26)
)
(=>
(g2 c4o27)
(f c4o24 c4o27)
)
(=>
(g2 c4o28)
(f c4o24 c4o28)
)
(=>
(g2 c4o29)
(f c4o24 c4o29)
)
(=>
(g2 c4o30)
(f c4o24 c4o30)
)
(=>
(g2 c4o31)
(f c4o24 c4o31)
)
(=>
(g2 c4o32)
(f c4o24 c4o32)
)
(=>
(g2 c4o33)
(f c4o24 c4o33)
)
(=>
(g2 c4o34)
(f c4o24 c4o34)
)
(=>
(g2 c4o35)
(f c4o24 c4o35)
)
(=>
(g2 c4o36)
(f c4o24 c4o36)
)
)
)
)
(and
(g1 c4o25)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o25 c4o1)
)
(=>
(g2 c4o2)
(f c4o25 c4o2)
)
(=>
(g2 c4o3)
(f c4o25 c4o3)
)
(=>
(g2 c4o4)
(f c4o25 c4o4)
)
(=>
(g2 c4o5)
(f c4o25 c4o5)
)
(=>
(g2 c4o6)
(f c4o25 c4o6)
)
(=>
(g2 c4o7)
(f c4o25 c4o7)
)
(=>
(g2 c4o8)
(f c4o25 c4o8)
)
(=>
(g2 c4o9)
(f c4o25 c4o9)
)
(=>
(g2 c4o10)
(f c4o25 c4o10)
)
(=>
(g2 c4o11)
(f c4o25 c4o11)
)
(=>
(g2 c4o12)
(f c4o25 c4o12)
)
(=>
(g2 c4o13)
(f c4o25 c4o13)
)
(=>
(g2 c4o14)
(f c4o25 c4o14)
)
(=>
(g2 c4o15)
(f c4o25 c4o15)
)
(=>
(g2 c4o16)
(f c4o25 c4o16)
)
(=>
(g2 c4o17)
(f c4o25 c4o17)
)
(=>
(g2 c4o18)
(f c4o25 c4o18)
)
(=>
(g2 c4o19)
(f c4o25 c4o19)
)
(=>
(g2 c4o20)
(f c4o25 c4o20)
)
(=>
(g2 c4o21)
(f c4o25 c4o21)
)
(=>
(g2 c4o22)
(f c4o25 c4o22)
)
(=>
(g2 c4o23)
(f c4o25 c4o23)
)
(=>
(g2 c4o24)
(f c4o25 c4o24)
)
(=>
(g2 c4o25)
(f c4o25 c4o25)
)
(=>
(g2 c4o26)
(f c4o25 c4o26)
)
(=>
(g2 c4o27)
(f c4o25 c4o27)
)
(=>
(g2 c4o28)
(f c4o25 c4o28)
)
(=>
(g2 c4o29)
(f c4o25 c4o29)
)
(=>
(g2 c4o30)
(f c4o25 c4o30)
)
(=>
(g2 c4o31)
(f c4o25 c4o31)
)
(=>
(g2 c4o32)
(f c4o25 c4o32)
)
(=>
(g2 c4o33)
(f c4o25 c4o33)
)
(=>
(g2 c4o34)
(f c4o25 c4o34)
)
(=>
(g2 c4o35)
(f c4o25 c4o35)
)
(=>
(g2 c4o36)
(f c4o25 c4o36)
)
)
)
)
(and
(g1 c4o26)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o26 c4o1)
)
(=>
(g2 c4o2)
(f c4o26 c4o2)
)
(=>
(g2 c4o3)
(f c4o26 c4o3)
)
(=>
(g2 c4o4)
(f c4o26 c4o4)
)
(=>
(g2 c4o5)
(f c4o26 c4o5)
)
(=>
(g2 c4o6)
(f c4o26 c4o6)
)
(=>
(g2 c4o7)
(f c4o26 c4o7)
)
(=>
(g2 c4o8)
(f c4o26 c4o8)
)
(=>
(g2 c4o9)
(f c4o26 c4o9)
)
(=>
(g2 c4o10)
(f c4o26 c4o10)
)
(=>
(g2 c4o11)
(f c4o26 c4o11)
)
(=>
(g2 c4o12)
(f c4o26 c4o12)
)
(=>
(g2 c4o13)
(f c4o26 c4o13)
)
(=>
(g2 c4o14)
(f c4o26 c4o14)
)
(=>
(g2 c4o15)
(f c4o26 c4o15)
)
(=>
(g2 c4o16)
(f c4o26 c4o16)
)
(=>
(g2 c4o17)
(f c4o26 c4o17)
)
(=>
(g2 c4o18)
(f c4o26 c4o18)
)
(=>
(g2 c4o19)
(f c4o26 c4o19)
)
(=>
(g2 c4o20)
(f c4o26 c4o20)
)
(=>
(g2 c4o21)
(f c4o26 c4o21)
)
(=>
(g2 c4o22)
(f c4o26 c4o22)
)
(=>
(g2 c4o23)
(f c4o26 c4o23)
)
(=>
(g2 c4o24)
(f c4o26 c4o24)
)
(=>
(g2 c4o25)
(f c4o26 c4o25)
)
(=>
(g2 c4o26)
(f c4o26 c4o26)
)
(=>
(g2 c4o27)
(f c4o26 c4o27)
)
(=>
(g2 c4o28)
(f c4o26 c4o28)
)
(=>
(g2 c4o29)
(f c4o26 c4o29)
)
(=>
(g2 c4o30)
(f c4o26 c4o30)
)
(=>
(g2 c4o31)
(f c4o26 c4o31)
)
(=>
(g2 c4o32)
(f c4o26 c4o32)
)
(=>
(g2 c4o33)
(f c4o26 c4o33)
)
(=>
(g2 c4o34)
(f c4o26 c4o34)
)
(=>
(g2 c4o35)
(f c4o26 c4o35)
)
(=>
(g2 c4o36)
(f c4o26 c4o36)
)
)
)
)
(and
(g1 c4o27)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o27 c4o1)
)
(=>
(g2 c4o2)
(f c4o27 c4o2)
)
(=>
(g2 c4o3)
(f c4o27 c4o3)
)
(=>
(g2 c4o4)
(f c4o27 c4o4)
)
(=>
(g2 c4o5)
(f c4o27 c4o5)
)
(=>
(g2 c4o6)
(f c4o27 c4o6)
)
(=>
(g2 c4o7)
(f c4o27 c4o7)
)
(=>
(g2 c4o8)
(f c4o27 c4o8)
)
(=>
(g2 c4o9)
(f c4o27 c4o9)
)
(=>
(g2 c4o10)
(f c4o27 c4o10)
)
(=>
(g2 c4o11)
(f c4o27 c4o11)
)
(=>
(g2 c4o12)
(f c4o27 c4o12)
)
(=>
(g2 c4o13)
(f c4o27 c4o13)
)
(=>
(g2 c4o14)
(f c4o27 c4o14)
)
(=>
(g2 c4o15)
(f c4o27 c4o15)
)
(=>
(g2 c4o16)
(f c4o27 c4o16)
)
(=>
(g2 c4o17)
(f c4o27 c4o17)
)
(=>
(g2 c4o18)
(f c4o27 c4o18)
)
(=>
(g2 c4o19)
(f c4o27 c4o19)
)
(=>
(g2 c4o20)
(f c4o27 c4o20)
)
(=>
(g2 c4o21)
(f c4o27 c4o21)
)
(=>
(g2 c4o22)
(f c4o27 c4o22)
)
(=>
(g2 c4o23)
(f c4o27 c4o23)
)
(=>
(g2 c4o24)
(f c4o27 c4o24)
)
(=>
(g2 c4o25)
(f c4o27 c4o25)
)
(=>
(g2 c4o26)
(f c4o27 c4o26)
)
(=>
(g2 c4o27)
(f c4o27 c4o27)
)
(=>
(g2 c4o28)
(f c4o27 c4o28)
)
(=>
(g2 c4o29)
(f c4o27 c4o29)
)
(=>
(g2 c4o30)
(f c4o27 c4o30)
)
(=>
(g2 c4o31)
(f c4o27 c4o31)
)
(=>
(g2 c4o32)
(f c4o27 c4o32)
)
(=>
(g2 c4o33)
(f c4o27 c4o33)
)
(=>
(g2 c4o34)
(f c4o27 c4o34)
)
(=>
(g2 c4o35)
(f c4o27 c4o35)
)
(=>
(g2 c4o36)
(f c4o27 c4o36)
)
)
)
)
(and
(g1 c4o28)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o28 c4o1)
)
(=>
(g2 c4o2)
(f c4o28 c4o2)
)
(=>
(g2 c4o3)
(f c4o28 c4o3)
)
(=>
(g2 c4o4)
(f c4o28 c4o4)
)
(=>
(g2 c4o5)
(f c4o28 c4o5)
)
(=>
(g2 c4o6)
(f c4o28 c4o6)
)
(=>
(g2 c4o7)
(f c4o28 c4o7)
)
(=>
(g2 c4o8)
(f c4o28 c4o8)
)
(=>
(g2 c4o9)
(f c4o28 c4o9)
)
(=>
(g2 c4o10)
(f c4o28 c4o10)
)
(=>
(g2 c4o11)
(f c4o28 c4o11)
)
(=>
(g2 c4o12)
(f c4o28 c4o12)
)
(=>
(g2 c4o13)
(f c4o28 c4o13)
)
(=>
(g2 c4o14)
(f c4o28 c4o14)
)
(=>
(g2 c4o15)
(f c4o28 c4o15)
)
(=>
(g2 c4o16)
(f c4o28 c4o16)
)
(=>
(g2 c4o17)
(f c4o28 c4o17)
)
(=>
(g2 c4o18)
(f c4o28 c4o18)
)
(=>
(g2 c4o19)
(f c4o28 c4o19)
)
(=>
(g2 c4o20)
(f c4o28 c4o20)
)
(=>
(g2 c4o21)
(f c4o28 c4o21)
)
(=>
(g2 c4o22)
(f c4o28 c4o22)
)
(=>
(g2 c4o23)
(f c4o28 c4o23)
)
(=>
(g2 c4o24)
(f c4o28 c4o24)
)
(=>
(g2 c4o25)
(f c4o28 c4o25)
)
(=>
(g2 c4o26)
(f c4o28 c4o26)
)
(=>
(g2 c4o27)
(f c4o28 c4o27)
)
(=>
(g2 c4o28)
(f c4o28 c4o28)
)
(=>
(g2 c4o29)
(f c4o28 c4o29)
)
(=>
(g2 c4o30)
(f c4o28 c4o30)
)
(=>
(g2 c4o31)
(f c4o28 c4o31)
)
(=>
(g2 c4o32)
(f c4o28 c4o32)
)
(=>
(g2 c4o33)
(f c4o28 c4o33)
)
(=>
(g2 c4o34)
(f c4o28 c4o34)
)
(=>
(g2 c4o35)
(f c4o28 c4o35)
)
(=>
(g2 c4o36)
(f c4o28 c4o36)
)
)
)
)
(and
(g1 c4o29)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o29 c4o1)
)
(=>
(g2 c4o2)
(f c4o29 c4o2)
)
(=>
(g2 c4o3)
(f c4o29 c4o3)
)
(=>
(g2 c4o4)
(f c4o29 c4o4)
)
(=>
(g2 c4o5)
(f c4o29 c4o5)
)
(=>
(g2 c4o6)
(f c4o29 c4o6)
)
(=>
(g2 c4o7)
(f c4o29 c4o7)
)
(=>
(g2 c4o8)
(f c4o29 c4o8)
)
(=>
(g2 c4o9)
(f c4o29 c4o9)
)
(=>
(g2 c4o10)
(f c4o29 c4o10)
)
(=>
(g2 c4o11)
(f c4o29 c4o11)
)
(=>
(g2 c4o12)
(f c4o29 c4o12)
)
(=>
(g2 c4o13)
(f c4o29 c4o13)
)
(=>
(g2 c4o14)
(f c4o29 c4o14)
)
(=>
(g2 c4o15)
(f c4o29 c4o15)
)
(=>
(g2 c4o16)
(f c4o29 c4o16)
)
(=>
(g2 c4o17)
(f c4o29 c4o17)
)
(=>
(g2 c4o18)
(f c4o29 c4o18)
)
(=>
(g2 c4o19)
(f c4o29 c4o19)
)
(=>
(g2 c4o20)
(f c4o29 c4o20)
)
(=>
(g2 c4o21)
(f c4o29 c4o21)
)
(=>
(g2 c4o22)
(f c4o29 c4o22)
)
(=>
(g2 c4o23)
(f c4o29 c4o23)
)
(=>
(g2 c4o24)
(f c4o29 c4o24)
)
(=>
(g2 c4o25)
(f c4o29 c4o25)
)
(=>
(g2 c4o26)
(f c4o29 c4o26)
)
(=>
(g2 c4o27)
(f c4o29 c4o27)
)
(=>
(g2 c4o28)
(f c4o29 c4o28)
)
(=>
(g2 c4o29)
(f c4o29 c4o29)
)
(=>
(g2 c4o30)
(f c4o29 c4o30)
)
(=>
(g2 c4o31)
(f c4o29 c4o31)
)
(=>
(g2 c4o32)
(f c4o29 c4o32)
)
(=>
(g2 c4o33)
(f c4o29 c4o33)
)
(=>
(g2 c4o34)
(f c4o29 c4o34)
)
(=>
(g2 c4o35)
(f c4o29 c4o35)
)
(=>
(g2 c4o36)
(f c4o29 c4o36)
)
)
)
)
(and
(g1 c4o30)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o30 c4o1)
)
(=>
(g2 c4o2)
(f c4o30 c4o2)
)
(=>
(g2 c4o3)
(f c4o30 c4o3)
)
(=>
(g2 c4o4)
(f c4o30 c4o4)
)
(=>
(g2 c4o5)
(f c4o30 c4o5)
)
(=>
(g2 c4o6)
(f c4o30 c4o6)
)
(=>
(g2 c4o7)
(f c4o30 c4o7)
)
(=>
(g2 c4o8)
(f c4o30 c4o8)
)
(=>
(g2 c4o9)
(f c4o30 c4o9)
)
(=>
(g2 c4o10)
(f c4o30 c4o10)
)
(=>
(g2 c4o11)
(f c4o30 c4o11)
)
(=>
(g2 c4o12)
(f c4o30 c4o12)
)
(=>
(g2 c4o13)
(f c4o30 c4o13)
)
(=>
(g2 c4o14)
(f c4o30 c4o14)
)
(=>
(g2 c4o15)
(f c4o30 c4o15)
)
(=>
(g2 c4o16)
(f c4o30 c4o16)
)
(=>
(g2 c4o17)
(f c4o30 c4o17)
)
(=>
(g2 c4o18)
(f c4o30 c4o18)
)
(=>
(g2 c4o19)
(f c4o30 c4o19)
)
(=>
(g2 c4o20)
(f c4o30 c4o20)
)
(=>
(g2 c4o21)
(f c4o30 c4o21)
)
(=>
(g2 c4o22)
(f c4o30 c4o22)
)
(=>
(g2 c4o23)
(f c4o30 c4o23)
)
(=>
(g2 c4o24)
(f c4o30 c4o24)
)
(=>
(g2 c4o25)
(f c4o30 c4o25)
)
(=>
(g2 c4o26)
(f c4o30 c4o26)
)
(=>
(g2 c4o27)
(f c4o30 c4o27)
)
(=>
(g2 c4o28)
(f c4o30 c4o28)
)
(=>
(g2 c4o29)
(f c4o30 c4o29)
)
(=>
(g2 c4o30)
(f c4o30 c4o30)
)
(=>
(g2 c4o31)
(f c4o30 c4o31)
)
(=>
(g2 c4o32)
(f c4o30 c4o32)
)
(=>
(g2 c4o33)
(f c4o30 c4o33)
)
(=>
(g2 c4o34)
(f c4o30 c4o34)
)
(=>
(g2 c4o35)
(f c4o30 c4o35)
)
(=>
(g2 c4o36)
(f c4o30 c4o36)
)
)
)
)
(and
(g1 c4o31)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o31 c4o1)
)
(=>
(g2 c4o2)
(f c4o31 c4o2)
)
(=>
(g2 c4o3)
(f c4o31 c4o3)
)
(=>
(g2 c4o4)
(f c4o31 c4o4)
)
(=>
(g2 c4o5)
(f c4o31 c4o5)
)
(=>
(g2 c4o6)
(f c4o31 c4o6)
)
(=>
(g2 c4o7)
(f c4o31 c4o7)
)
(=>
(g2 c4o8)
(f c4o31 c4o8)
)
(=>
(g2 c4o9)
(f c4o31 c4o9)
)
(=>
(g2 c4o10)
(f c4o31 c4o10)
)
(=>
(g2 c4o11)
(f c4o31 c4o11)
)
(=>
(g2 c4o12)
(f c4o31 c4o12)
)
(=>
(g2 c4o13)
(f c4o31 c4o13)
)
(=>
(g2 c4o14)
(f c4o31 c4o14)
)
(=>
(g2 c4o15)
(f c4o31 c4o15)
)
(=>
(g2 c4o16)
(f c4o31 c4o16)
)
(=>
(g2 c4o17)
(f c4o31 c4o17)
)
(=>
(g2 c4o18)
(f c4o31 c4o18)
)
(=>
(g2 c4o19)
(f c4o31 c4o19)
)
(=>
(g2 c4o20)
(f c4o31 c4o20)
)
(=>
(g2 c4o21)
(f c4o31 c4o21)
)
(=>
(g2 c4o22)
(f c4o31 c4o22)
)
(=>
(g2 c4o23)
(f c4o31 c4o23)
)
(=>
(g2 c4o24)
(f c4o31 c4o24)
)
(=>
(g2 c4o25)
(f c4o31 c4o25)
)
(=>
(g2 c4o26)
(f c4o31 c4o26)
)
(=>
(g2 c4o27)
(f c4o31 c4o27)
)
(=>
(g2 c4o28)
(f c4o31 c4o28)
)
(=>
(g2 c4o29)
(f c4o31 c4o29)
)
(=>
(g2 c4o30)
(f c4o31 c4o30)
)
(=>
(g2 c4o31)
(f c4o31 c4o31)
)
(=>
(g2 c4o32)
(f c4o31 c4o32)
)
(=>
(g2 c4o33)
(f c4o31 c4o33)
)
(=>
(g2 c4o34)
(f c4o31 c4o34)
)
(=>
(g2 c4o35)
(f c4o31 c4o35)
)
(=>
(g2 c4o36)
(f c4o31 c4o36)
)
)
)
)
(and
(g1 c4o32)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o32 c4o1)
)
(=>
(g2 c4o2)
(f c4o32 c4o2)
)
(=>
(g2 c4o3)
(f c4o32 c4o3)
)
(=>
(g2 c4o4)
(f c4o32 c4o4)
)
(=>
(g2 c4o5)
(f c4o32 c4o5)
)
(=>
(g2 c4o6)
(f c4o32 c4o6)
)
(=>
(g2 c4o7)
(f c4o32 c4o7)
)
(=>
(g2 c4o8)
(f c4o32 c4o8)
)
(=>
(g2 c4o9)
(f c4o32 c4o9)
)
(=>
(g2 c4o10)
(f c4o32 c4o10)
)
(=>
(g2 c4o11)
(f c4o32 c4o11)
)
(=>
(g2 c4o12)
(f c4o32 c4o12)
)
(=>
(g2 c4o13)
(f c4o32 c4o13)
)
(=>
(g2 c4o14)
(f c4o32 c4o14)
)
(=>
(g2 c4o15)
(f c4o32 c4o15)
)
(=>
(g2 c4o16)
(f c4o32 c4o16)
)
(=>
(g2 c4o17)
(f c4o32 c4o17)
)
(=>
(g2 c4o18)
(f c4o32 c4o18)
)
(=>
(g2 c4o19)
(f c4o32 c4o19)
)
(=>
(g2 c4o20)
(f c4o32 c4o20)
)
(=>
(g2 c4o21)
(f c4o32 c4o21)
)
(=>
(g2 c4o22)
(f c4o32 c4o22)
)
(=>
(g2 c4o23)
(f c4o32 c4o23)
)
(=>
(g2 c4o24)
(f c4o32 c4o24)
)
(=>
(g2 c4o25)
(f c4o32 c4o25)
)
(=>
(g2 c4o26)
(f c4o32 c4o26)
)
(=>
(g2 c4o27)
(f c4o32 c4o27)
)
(=>
(g2 c4o28)
(f c4o32 c4o28)
)
(=>
(g2 c4o29)
(f c4o32 c4o29)
)
(=>
(g2 c4o30)
(f c4o32 c4o30)
)
(=>
(g2 c4o31)
(f c4o32 c4o31)
)
(=>
(g2 c4o32)
(f c4o32 c4o32)
)
(=>
(g2 c4o33)
(f c4o32 c4o33)
)
(=>
(g2 c4o34)
(f c4o32 c4o34)
)
(=>
(g2 c4o35)
(f c4o32 c4o35)
)
(=>
(g2 c4o36)
(f c4o32 c4o36)
)
)
)
)
(and
(g1 c4o33)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o33 c4o1)
)
(=>
(g2 c4o2)
(f c4o33 c4o2)
)
(=>
(g2 c4o3)
(f c4o33 c4o3)
)
(=>
(g2 c4o4)
(f c4o33 c4o4)
)
(=>
(g2 c4o5)
(f c4o33 c4o5)
)
(=>
(g2 c4o6)
(f c4o33 c4o6)
)
(=>
(g2 c4o7)
(f c4o33 c4o7)
)
(=>
(g2 c4o8)
(f c4o33 c4o8)
)
(=>
(g2 c4o9)
(f c4o33 c4o9)
)
(=>
(g2 c4o10)
(f c4o33 c4o10)
)
(=>
(g2 c4o11)
(f c4o33 c4o11)
)
(=>
(g2 c4o12)
(f c4o33 c4o12)
)
(=>
(g2 c4o13)
(f c4o33 c4o13)
)
(=>
(g2 c4o14)
(f c4o33 c4o14)
)
(=>
(g2 c4o15)
(f c4o33 c4o15)
)
(=>
(g2 c4o16)
(f c4o33 c4o16)
)
(=>
(g2 c4o17)
(f c4o33 c4o17)
)
(=>
(g2 c4o18)
(f c4o33 c4o18)
)
(=>
(g2 c4o19)
(f c4o33 c4o19)
)
(=>
(g2 c4o20)
(f c4o33 c4o20)
)
(=>
(g2 c4o21)
(f c4o33 c4o21)
)
(=>
(g2 c4o22)
(f c4o33 c4o22)
)
(=>
(g2 c4o23)
(f c4o33 c4o23)
)
(=>
(g2 c4o24)
(f c4o33 c4o24)
)
(=>
(g2 c4o25)
(f c4o33 c4o25)
)
(=>
(g2 c4o26)
(f c4o33 c4o26)
)
(=>
(g2 c4o27)
(f c4o33 c4o27)
)
(=>
(g2 c4o28)
(f c4o33 c4o28)
)
(=>
(g2 c4o29)
(f c4o33 c4o29)
)
(=>
(g2 c4o30)
(f c4o33 c4o30)
)
(=>
(g2 c4o31)
(f c4o33 c4o31)
)
(=>
(g2 c4o32)
(f c4o33 c4o32)
)
(=>
(g2 c4o33)
(f c4o33 c4o33)
)
(=>
(g2 c4o34)
(f c4o33 c4o34)
)
(=>
(g2 c4o35)
(f c4o33 c4o35)
)
(=>
(g2 c4o36)
(f c4o33 c4o36)
)
)
)
)
(and
(g1 c4o34)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o34 c4o1)
)
(=>
(g2 c4o2)
(f c4o34 c4o2)
)
(=>
(g2 c4o3)
(f c4o34 c4o3)
)
(=>
(g2 c4o4)
(f c4o34 c4o4)
)
(=>
(g2 c4o5)
(f c4o34 c4o5)
)
(=>
(g2 c4o6)
(f c4o34 c4o6)
)
(=>
(g2 c4o7)
(f c4o34 c4o7)
)
(=>
(g2 c4o8)
(f c4o34 c4o8)
)
(=>
(g2 c4o9)
(f c4o34 c4o9)
)
(=>
(g2 c4o10)
(f c4o34 c4o10)
)
(=>
(g2 c4o11)
(f c4o34 c4o11)
)
(=>
(g2 c4o12)
(f c4o34 c4o12)
)
(=>
(g2 c4o13)
(f c4o34 c4o13)
)
(=>
(g2 c4o14)
(f c4o34 c4o14)
)
(=>
(g2 c4o15)
(f c4o34 c4o15)
)
(=>
(g2 c4o16)
(f c4o34 c4o16)
)
(=>
(g2 c4o17)
(f c4o34 c4o17)
)
(=>
(g2 c4o18)
(f c4o34 c4o18)
)
(=>
(g2 c4o19)
(f c4o34 c4o19)
)
(=>
(g2 c4o20)
(f c4o34 c4o20)
)
(=>
(g2 c4o21)
(f c4o34 c4o21)
)
(=>
(g2 c4o22)
(f c4o34 c4o22)
)
(=>
(g2 c4o23)
(f c4o34 c4o23)
)
(=>
(g2 c4o24)
(f c4o34 c4o24)
)
(=>
(g2 c4o25)
(f c4o34 c4o25)
)
(=>
(g2 c4o26)
(f c4o34 c4o26)
)
(=>
(g2 c4o27)
(f c4o34 c4o27)
)
(=>
(g2 c4o28)
(f c4o34 c4o28)
)
(=>
(g2 c4o29)
(f c4o34 c4o29)
)
(=>
(g2 c4o30)
(f c4o34 c4o30)
)
(=>
(g2 c4o31)
(f c4o34 c4o31)
)
(=>
(g2 c4o32)
(f c4o34 c4o32)
)
(=>
(g2 c4o33)
(f c4o34 c4o33)
)
(=>
(g2 c4o34)
(f c4o34 c4o34)
)
(=>
(g2 c4o35)
(f c4o34 c4o35)
)
(=>
(g2 c4o36)
(f c4o34 c4o36)
)
)
)
)
(and
(g1 c4o35)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o35 c4o1)
)
(=>
(g2 c4o2)
(f c4o35 c4o2)
)
(=>
(g2 c4o3)
(f c4o35 c4o3)
)
(=>
(g2 c4o4)
(f c4o35 c4o4)
)
(=>
(g2 c4o5)
(f c4o35 c4o5)
)
(=>
(g2 c4o6)
(f c4o35 c4o6)
)
(=>
(g2 c4o7)
(f c4o35 c4o7)
)
(=>
(g2 c4o8)
(f c4o35 c4o8)
)
(=>
(g2 c4o9)
(f c4o35 c4o9)
)
(=>
(g2 c4o10)
(f c4o35 c4o10)
)
(=>
(g2 c4o11)
(f c4o35 c4o11)
)
(=>
(g2 c4o12)
(f c4o35 c4o12)
)
(=>
(g2 c4o13)
(f c4o35 c4o13)
)
(=>
(g2 c4o14)
(f c4o35 c4o14)
)
(=>
(g2 c4o15)
(f c4o35 c4o15)
)
(=>
(g2 c4o16)
(f c4o35 c4o16)
)
(=>
(g2 c4o17)
(f c4o35 c4o17)
)
(=>
(g2 c4o18)
(f c4o35 c4o18)
)
(=>
(g2 c4o19)
(f c4o35 c4o19)
)
(=>
(g2 c4o20)
(f c4o35 c4o20)
)
(=>
(g2 c4o21)
(f c4o35 c4o21)
)
(=>
(g2 c4o22)
(f c4o35 c4o22)
)
(=>
(g2 c4o23)
(f c4o35 c4o23)
)
(=>
(g2 c4o24)
(f c4o35 c4o24)
)
(=>
(g2 c4o25)
(f c4o35 c4o25)
)
(=>
(g2 c4o26)
(f c4o35 c4o26)
)
(=>
(g2 c4o27)
(f c4o35 c4o27)
)
(=>
(g2 c4o28)
(f c4o35 c4o28)
)
(=>
(g2 c4o29)
(f c4o35 c4o29)
)
(=>
(g2 c4o30)
(f c4o35 c4o30)
)
(=>
(g2 c4o31)
(f c4o35 c4o31)
)
(=>
(g2 c4o32)
(f c4o35 c4o32)
)
(=>
(g2 c4o33)
(f c4o35 c4o33)
)
(=>
(g2 c4o34)
(f c4o35 c4o34)
)
(=>
(g2 c4o35)
(f c4o35 c4o35)
)
(=>
(g2 c4o36)
(f c4o35 c4o36)
)
)
)
)
(and
(g1 c4o36)
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
(g2 c4o10)
(g2 c4o11)
(g2 c4o12)
(g2 c4o13)
(g2 c4o14)
(g2 c4o15)
(g2 c4o16)
(g2 c4o17)
(g2 c4o18)
(g2 c4o19)
(g2 c4o20)
(g2 c4o21)
(g2 c4o22)
(g2 c4o23)
(g2 c4o24)
(g2 c4o25)
(g2 c4o26)
(g2 c4o27)
(g2 c4o28)
(g2 c4o29)
(g2 c4o30)
(g2 c4o31)
(g2 c4o32)
(g2 c4o33)
(g2 c4o34)
(g2 c4o35)
(g2 c4o36)
)
(and
(=>
(g2 c4o1)
(f c4o36 c4o1)
)
(=>
(g2 c4o2)
(f c4o36 c4o2)
)
(=>
(g2 c4o3)
(f c4o36 c4o3)
)
(=>
(g2 c4o4)
(f c4o36 c4o4)
)
(=>
(g2 c4o5)
(f c4o36 c4o5)
)
(=>
(g2 c4o6)
(f c4o36 c4o6)
)
(=>
(g2 c4o7)
(f c4o36 c4o7)
)
(=>
(g2 c4o8)
(f c4o36 c4o8)
)
(=>
(g2 c4o9)
(f c4o36 c4o9)
)
(=>
(g2 c4o10)
(f c4o36 c4o10)
)
(=>
(g2 c4o11)
(f c4o36 c4o11)
)
(=>
(g2 c4o12)
(f c4o36 c4o12)
)
(=>
(g2 c4o13)
(f c4o36 c4o13)
)
(=>
(g2 c4o14)
(f c4o36 c4o14)
)
(=>
(g2 c4o15)
(f c4o36 c4o15)
)
(=>
(g2 c4o16)
(f c4o36 c4o16)
)
(=>
(g2 c4o17)
(f c4o36 c4o17)
)
(=>
(g2 c4o18)
(f c4o36 c4o18)
)
(=>
(g2 c4o19)
(f c4o36 c4o19)
)
(=>
(g2 c4o20)
(f c4o36 c4o20)
)
(=>
(g2 c4o21)
(f c4o36 c4o21)
)
(=>
(g2 c4o22)
(f c4o36 c4o22)
)
(=>
(g2 c4o23)
(f c4o36 c4o23)
)
(=>
(g2 c4o24)
(f c4o36 c4o24)
)
(=>
(g2 c4o25)
(f c4o36 c4o25)
)
(=>
(g2 c4o26)
(f c4o36 c4o26)
)
(=>
(g2 c4o27)
(f c4o36 c4o27)
)
(=>
(g2 c4o28)
(f c4o36 c4o28)
)
(=>
(g2 c4o29)
(f c4o36 c4o29)
)
(=>
(g2 c4o30)
(f c4o36 c4o30)
)
(=>
(g2 c4o31)
(f c4o36 c4o31)
)
(=>
(g2 c4o32)
(f c4o36 c4o32)
)
(=>
(g2 c4o33)
(f c4o36 c4o33)
)
(=>
(g2 c4o34)
(f c4o36 c4o34)
)
(=>
(g2 c4o35)
(f c4o36 c4o35)
)
(=>
(g2 c4o36)
(f c4o36 c4o36)
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
(and
(g2 c4o10)
(f c4o1 c4o10)
)
(and
(g2 c4o11)
(f c4o1 c4o11)
)
(and
(g2 c4o12)
(f c4o1 c4o12)
)
(and
(g2 c4o13)
(f c4o1 c4o13)
)
(and
(g2 c4o14)
(f c4o1 c4o14)
)
(and
(g2 c4o15)
(f c4o1 c4o15)
)
(and
(g2 c4o16)
(f c4o1 c4o16)
)
(and
(g2 c4o17)
(f c4o1 c4o17)
)
(and
(g2 c4o18)
(f c4o1 c4o18)
)
(and
(g2 c4o19)
(f c4o1 c4o19)
)
(and
(g2 c4o20)
(f c4o1 c4o20)
)
(and
(g2 c4o21)
(f c4o1 c4o21)
)
(and
(g2 c4o22)
(f c4o1 c4o22)
)
(and
(g2 c4o23)
(f c4o1 c4o23)
)
(and
(g2 c4o24)
(f c4o1 c4o24)
)
(and
(g2 c4o25)
(f c4o1 c4o25)
)
(and
(g2 c4o26)
(f c4o1 c4o26)
)
(and
(g2 c4o27)
(f c4o1 c4o27)
)
(and
(g2 c4o28)
(f c4o1 c4o28)
)
(and
(g2 c4o29)
(f c4o1 c4o29)
)
(and
(g2 c4o30)
(f c4o1 c4o30)
)
(and
(g2 c4o31)
(f c4o1 c4o31)
)
(and
(g2 c4o32)
(f c4o1 c4o32)
)
(and
(g2 c4o33)
(f c4o1 c4o33)
)
(and
(g2 c4o34)
(f c4o1 c4o34)
)
(and
(g2 c4o35)
(f c4o1 c4o35)
)
(and
(g2 c4o36)
(f c4o1 c4o36)
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
(and
(g2 c4o10)
(f c4o2 c4o10)
)
(and
(g2 c4o11)
(f c4o2 c4o11)
)
(and
(g2 c4o12)
(f c4o2 c4o12)
)
(and
(g2 c4o13)
(f c4o2 c4o13)
)
(and
(g2 c4o14)
(f c4o2 c4o14)
)
(and
(g2 c4o15)
(f c4o2 c4o15)
)
(and
(g2 c4o16)
(f c4o2 c4o16)
)
(and
(g2 c4o17)
(f c4o2 c4o17)
)
(and
(g2 c4o18)
(f c4o2 c4o18)
)
(and
(g2 c4o19)
(f c4o2 c4o19)
)
(and
(g2 c4o20)
(f c4o2 c4o20)
)
(and
(g2 c4o21)
(f c4o2 c4o21)
)
(and
(g2 c4o22)
(f c4o2 c4o22)
)
(and
(g2 c4o23)
(f c4o2 c4o23)
)
(and
(g2 c4o24)
(f c4o2 c4o24)
)
(and
(g2 c4o25)
(f c4o2 c4o25)
)
(and
(g2 c4o26)
(f c4o2 c4o26)
)
(and
(g2 c4o27)
(f c4o2 c4o27)
)
(and
(g2 c4o28)
(f c4o2 c4o28)
)
(and
(g2 c4o29)
(f c4o2 c4o29)
)
(and
(g2 c4o30)
(f c4o2 c4o30)
)
(and
(g2 c4o31)
(f c4o2 c4o31)
)
(and
(g2 c4o32)
(f c4o2 c4o32)
)
(and
(g2 c4o33)
(f c4o2 c4o33)
)
(and
(g2 c4o34)
(f c4o2 c4o34)
)
(and
(g2 c4o35)
(f c4o2 c4o35)
)
(and
(g2 c4o36)
(f c4o2 c4o36)
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
(and
(g2 c4o10)
(f c4o3 c4o10)
)
(and
(g2 c4o11)
(f c4o3 c4o11)
)
(and
(g2 c4o12)
(f c4o3 c4o12)
)
(and
(g2 c4o13)
(f c4o3 c4o13)
)
(and
(g2 c4o14)
(f c4o3 c4o14)
)
(and
(g2 c4o15)
(f c4o3 c4o15)
)
(and
(g2 c4o16)
(f c4o3 c4o16)
)
(and
(g2 c4o17)
(f c4o3 c4o17)
)
(and
(g2 c4o18)
(f c4o3 c4o18)
)
(and
(g2 c4o19)
(f c4o3 c4o19)
)
(and
(g2 c4o20)
(f c4o3 c4o20)
)
(and
(g2 c4o21)
(f c4o3 c4o21)
)
(and
(g2 c4o22)
(f c4o3 c4o22)
)
(and
(g2 c4o23)
(f c4o3 c4o23)
)
(and
(g2 c4o24)
(f c4o3 c4o24)
)
(and
(g2 c4o25)
(f c4o3 c4o25)
)
(and
(g2 c4o26)
(f c4o3 c4o26)
)
(and
(g2 c4o27)
(f c4o3 c4o27)
)
(and
(g2 c4o28)
(f c4o3 c4o28)
)
(and
(g2 c4o29)
(f c4o3 c4o29)
)
(and
(g2 c4o30)
(f c4o3 c4o30)
)
(and
(g2 c4o31)
(f c4o3 c4o31)
)
(and
(g2 c4o32)
(f c4o3 c4o32)
)
(and
(g2 c4o33)
(f c4o3 c4o33)
)
(and
(g2 c4o34)
(f c4o3 c4o34)
)
(and
(g2 c4o35)
(f c4o3 c4o35)
)
(and
(g2 c4o36)
(f c4o3 c4o36)
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
(and
(g2 c4o10)
(f c4o4 c4o10)
)
(and
(g2 c4o11)
(f c4o4 c4o11)
)
(and
(g2 c4o12)
(f c4o4 c4o12)
)
(and
(g2 c4o13)
(f c4o4 c4o13)
)
(and
(g2 c4o14)
(f c4o4 c4o14)
)
(and
(g2 c4o15)
(f c4o4 c4o15)
)
(and
(g2 c4o16)
(f c4o4 c4o16)
)
(and
(g2 c4o17)
(f c4o4 c4o17)
)
(and
(g2 c4o18)
(f c4o4 c4o18)
)
(and
(g2 c4o19)
(f c4o4 c4o19)
)
(and
(g2 c4o20)
(f c4o4 c4o20)
)
(and
(g2 c4o21)
(f c4o4 c4o21)
)
(and
(g2 c4o22)
(f c4o4 c4o22)
)
(and
(g2 c4o23)
(f c4o4 c4o23)
)
(and
(g2 c4o24)
(f c4o4 c4o24)
)
(and
(g2 c4o25)
(f c4o4 c4o25)
)
(and
(g2 c4o26)
(f c4o4 c4o26)
)
(and
(g2 c4o27)
(f c4o4 c4o27)
)
(and
(g2 c4o28)
(f c4o4 c4o28)
)
(and
(g2 c4o29)
(f c4o4 c4o29)
)
(and
(g2 c4o30)
(f c4o4 c4o30)
)
(and
(g2 c4o31)
(f c4o4 c4o31)
)
(and
(g2 c4o32)
(f c4o4 c4o32)
)
(and
(g2 c4o33)
(f c4o4 c4o33)
)
(and
(g2 c4o34)
(f c4o4 c4o34)
)
(and
(g2 c4o35)
(f c4o4 c4o35)
)
(and
(g2 c4o36)
(f c4o4 c4o36)
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
(and
(g2 c4o10)
(f c4o5 c4o10)
)
(and
(g2 c4o11)
(f c4o5 c4o11)
)
(and
(g2 c4o12)
(f c4o5 c4o12)
)
(and
(g2 c4o13)
(f c4o5 c4o13)
)
(and
(g2 c4o14)
(f c4o5 c4o14)
)
(and
(g2 c4o15)
(f c4o5 c4o15)
)
(and
(g2 c4o16)
(f c4o5 c4o16)
)
(and
(g2 c4o17)
(f c4o5 c4o17)
)
(and
(g2 c4o18)
(f c4o5 c4o18)
)
(and
(g2 c4o19)
(f c4o5 c4o19)
)
(and
(g2 c4o20)
(f c4o5 c4o20)
)
(and
(g2 c4o21)
(f c4o5 c4o21)
)
(and
(g2 c4o22)
(f c4o5 c4o22)
)
(and
(g2 c4o23)
(f c4o5 c4o23)
)
(and
(g2 c4o24)
(f c4o5 c4o24)
)
(and
(g2 c4o25)
(f c4o5 c4o25)
)
(and
(g2 c4o26)
(f c4o5 c4o26)
)
(and
(g2 c4o27)
(f c4o5 c4o27)
)
(and
(g2 c4o28)
(f c4o5 c4o28)
)
(and
(g2 c4o29)
(f c4o5 c4o29)
)
(and
(g2 c4o30)
(f c4o5 c4o30)
)
(and
(g2 c4o31)
(f c4o5 c4o31)
)
(and
(g2 c4o32)
(f c4o5 c4o32)
)
(and
(g2 c4o33)
(f c4o5 c4o33)
)
(and
(g2 c4o34)
(f c4o5 c4o34)
)
(and
(g2 c4o35)
(f c4o5 c4o35)
)
(and
(g2 c4o36)
(f c4o5 c4o36)
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
(and
(g2 c4o10)
(f c4o6 c4o10)
)
(and
(g2 c4o11)
(f c4o6 c4o11)
)
(and
(g2 c4o12)
(f c4o6 c4o12)
)
(and
(g2 c4o13)
(f c4o6 c4o13)
)
(and
(g2 c4o14)
(f c4o6 c4o14)
)
(and
(g2 c4o15)
(f c4o6 c4o15)
)
(and
(g2 c4o16)
(f c4o6 c4o16)
)
(and
(g2 c4o17)
(f c4o6 c4o17)
)
(and
(g2 c4o18)
(f c4o6 c4o18)
)
(and
(g2 c4o19)
(f c4o6 c4o19)
)
(and
(g2 c4o20)
(f c4o6 c4o20)
)
(and
(g2 c4o21)
(f c4o6 c4o21)
)
(and
(g2 c4o22)
(f c4o6 c4o22)
)
(and
(g2 c4o23)
(f c4o6 c4o23)
)
(and
(g2 c4o24)
(f c4o6 c4o24)
)
(and
(g2 c4o25)
(f c4o6 c4o25)
)
(and
(g2 c4o26)
(f c4o6 c4o26)
)
(and
(g2 c4o27)
(f c4o6 c4o27)
)
(and
(g2 c4o28)
(f c4o6 c4o28)
)
(and
(g2 c4o29)
(f c4o6 c4o29)
)
(and
(g2 c4o30)
(f c4o6 c4o30)
)
(and
(g2 c4o31)
(f c4o6 c4o31)
)
(and
(g2 c4o32)
(f c4o6 c4o32)
)
(and
(g2 c4o33)
(f c4o6 c4o33)
)
(and
(g2 c4o34)
(f c4o6 c4o34)
)
(and
(g2 c4o35)
(f c4o6 c4o35)
)
(and
(g2 c4o36)
(f c4o6 c4o36)
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
(and
(g2 c4o10)
(f c4o7 c4o10)
)
(and
(g2 c4o11)
(f c4o7 c4o11)
)
(and
(g2 c4o12)
(f c4o7 c4o12)
)
(and
(g2 c4o13)
(f c4o7 c4o13)
)
(and
(g2 c4o14)
(f c4o7 c4o14)
)
(and
(g2 c4o15)
(f c4o7 c4o15)
)
(and
(g2 c4o16)
(f c4o7 c4o16)
)
(and
(g2 c4o17)
(f c4o7 c4o17)
)
(and
(g2 c4o18)
(f c4o7 c4o18)
)
(and
(g2 c4o19)
(f c4o7 c4o19)
)
(and
(g2 c4o20)
(f c4o7 c4o20)
)
(and
(g2 c4o21)
(f c4o7 c4o21)
)
(and
(g2 c4o22)
(f c4o7 c4o22)
)
(and
(g2 c4o23)
(f c4o7 c4o23)
)
(and
(g2 c4o24)
(f c4o7 c4o24)
)
(and
(g2 c4o25)
(f c4o7 c4o25)
)
(and
(g2 c4o26)
(f c4o7 c4o26)
)
(and
(g2 c4o27)
(f c4o7 c4o27)
)
(and
(g2 c4o28)
(f c4o7 c4o28)
)
(and
(g2 c4o29)
(f c4o7 c4o29)
)
(and
(g2 c4o30)
(f c4o7 c4o30)
)
(and
(g2 c4o31)
(f c4o7 c4o31)
)
(and
(g2 c4o32)
(f c4o7 c4o32)
)
(and
(g2 c4o33)
(f c4o7 c4o33)
)
(and
(g2 c4o34)
(f c4o7 c4o34)
)
(and
(g2 c4o35)
(f c4o7 c4o35)
)
(and
(g2 c4o36)
(f c4o7 c4o36)
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
(and
(g2 c4o10)
(f c4o8 c4o10)
)
(and
(g2 c4o11)
(f c4o8 c4o11)
)
(and
(g2 c4o12)
(f c4o8 c4o12)
)
(and
(g2 c4o13)
(f c4o8 c4o13)
)
(and
(g2 c4o14)
(f c4o8 c4o14)
)
(and
(g2 c4o15)
(f c4o8 c4o15)
)
(and
(g2 c4o16)
(f c4o8 c4o16)
)
(and
(g2 c4o17)
(f c4o8 c4o17)
)
(and
(g2 c4o18)
(f c4o8 c4o18)
)
(and
(g2 c4o19)
(f c4o8 c4o19)
)
(and
(g2 c4o20)
(f c4o8 c4o20)
)
(and
(g2 c4o21)
(f c4o8 c4o21)
)
(and
(g2 c4o22)
(f c4o8 c4o22)
)
(and
(g2 c4o23)
(f c4o8 c4o23)
)
(and
(g2 c4o24)
(f c4o8 c4o24)
)
(and
(g2 c4o25)
(f c4o8 c4o25)
)
(and
(g2 c4o26)
(f c4o8 c4o26)
)
(and
(g2 c4o27)
(f c4o8 c4o27)
)
(and
(g2 c4o28)
(f c4o8 c4o28)
)
(and
(g2 c4o29)
(f c4o8 c4o29)
)
(and
(g2 c4o30)
(f c4o8 c4o30)
)
(and
(g2 c4o31)
(f c4o8 c4o31)
)
(and
(g2 c4o32)
(f c4o8 c4o32)
)
(and
(g2 c4o33)
(f c4o8 c4o33)
)
(and
(g2 c4o34)
(f c4o8 c4o34)
)
(and
(g2 c4o35)
(f c4o8 c4o35)
)
(and
(g2 c4o36)
(f c4o8 c4o36)
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
(and
(g2 c4o10)
(f c4o9 c4o10)
)
(and
(g2 c4o11)
(f c4o9 c4o11)
)
(and
(g2 c4o12)
(f c4o9 c4o12)
)
(and
(g2 c4o13)
(f c4o9 c4o13)
)
(and
(g2 c4o14)
(f c4o9 c4o14)
)
(and
(g2 c4o15)
(f c4o9 c4o15)
)
(and
(g2 c4o16)
(f c4o9 c4o16)
)
(and
(g2 c4o17)
(f c4o9 c4o17)
)
(and
(g2 c4o18)
(f c4o9 c4o18)
)
(and
(g2 c4o19)
(f c4o9 c4o19)
)
(and
(g2 c4o20)
(f c4o9 c4o20)
)
(and
(g2 c4o21)
(f c4o9 c4o21)
)
(and
(g2 c4o22)
(f c4o9 c4o22)
)
(and
(g2 c4o23)
(f c4o9 c4o23)
)
(and
(g2 c4o24)
(f c4o9 c4o24)
)
(and
(g2 c4o25)
(f c4o9 c4o25)
)
(and
(g2 c4o26)
(f c4o9 c4o26)
)
(and
(g2 c4o27)
(f c4o9 c4o27)
)
(and
(g2 c4o28)
(f c4o9 c4o28)
)
(and
(g2 c4o29)
(f c4o9 c4o29)
)
(and
(g2 c4o30)
(f c4o9 c4o30)
)
(and
(g2 c4o31)
(f c4o9 c4o31)
)
(and
(g2 c4o32)
(f c4o9 c4o32)
)
(and
(g2 c4o33)
(f c4o9 c4o33)
)
(and
(g2 c4o34)
(f c4o9 c4o34)
)
(and
(g2 c4o35)
(f c4o9 c4o35)
)
(and
(g2 c4o36)
(f c4o9 c4o36)
)
)
)
(and
(g1 c4o10)
(or
(and
(g2 c4o1)
(f c4o10 c4o1)
)
(and
(g2 c4o2)
(f c4o10 c4o2)
)
(and
(g2 c4o3)
(f c4o10 c4o3)
)
(and
(g2 c4o4)
(f c4o10 c4o4)
)
(and
(g2 c4o5)
(f c4o10 c4o5)
)
(and
(g2 c4o6)
(f c4o10 c4o6)
)
(and
(g2 c4o7)
(f c4o10 c4o7)
)
(and
(g2 c4o8)
(f c4o10 c4o8)
)
(and
(g2 c4o9)
(f c4o10 c4o9)
)
(and
(g2 c4o10)
(f c4o10 c4o10)
)
(and
(g2 c4o11)
(f c4o10 c4o11)
)
(and
(g2 c4o12)
(f c4o10 c4o12)
)
(and
(g2 c4o13)
(f c4o10 c4o13)
)
(and
(g2 c4o14)
(f c4o10 c4o14)
)
(and
(g2 c4o15)
(f c4o10 c4o15)
)
(and
(g2 c4o16)
(f c4o10 c4o16)
)
(and
(g2 c4o17)
(f c4o10 c4o17)
)
(and
(g2 c4o18)
(f c4o10 c4o18)
)
(and
(g2 c4o19)
(f c4o10 c4o19)
)
(and
(g2 c4o20)
(f c4o10 c4o20)
)
(and
(g2 c4o21)
(f c4o10 c4o21)
)
(and
(g2 c4o22)
(f c4o10 c4o22)
)
(and
(g2 c4o23)
(f c4o10 c4o23)
)
(and
(g2 c4o24)
(f c4o10 c4o24)
)
(and
(g2 c4o25)
(f c4o10 c4o25)
)
(and
(g2 c4o26)
(f c4o10 c4o26)
)
(and
(g2 c4o27)
(f c4o10 c4o27)
)
(and
(g2 c4o28)
(f c4o10 c4o28)
)
(and
(g2 c4o29)
(f c4o10 c4o29)
)
(and
(g2 c4o30)
(f c4o10 c4o30)
)
(and
(g2 c4o31)
(f c4o10 c4o31)
)
(and
(g2 c4o32)
(f c4o10 c4o32)
)
(and
(g2 c4o33)
(f c4o10 c4o33)
)
(and
(g2 c4o34)
(f c4o10 c4o34)
)
(and
(g2 c4o35)
(f c4o10 c4o35)
)
(and
(g2 c4o36)
(f c4o10 c4o36)
)
)
)
(and
(g1 c4o11)
(or
(and
(g2 c4o1)
(f c4o11 c4o1)
)
(and
(g2 c4o2)
(f c4o11 c4o2)
)
(and
(g2 c4o3)
(f c4o11 c4o3)
)
(and
(g2 c4o4)
(f c4o11 c4o4)
)
(and
(g2 c4o5)
(f c4o11 c4o5)
)
(and
(g2 c4o6)
(f c4o11 c4o6)
)
(and
(g2 c4o7)
(f c4o11 c4o7)
)
(and
(g2 c4o8)
(f c4o11 c4o8)
)
(and
(g2 c4o9)
(f c4o11 c4o9)
)
(and
(g2 c4o10)
(f c4o11 c4o10)
)
(and
(g2 c4o11)
(f c4o11 c4o11)
)
(and
(g2 c4o12)
(f c4o11 c4o12)
)
(and
(g2 c4o13)
(f c4o11 c4o13)
)
(and
(g2 c4o14)
(f c4o11 c4o14)
)
(and
(g2 c4o15)
(f c4o11 c4o15)
)
(and
(g2 c4o16)
(f c4o11 c4o16)
)
(and
(g2 c4o17)
(f c4o11 c4o17)
)
(and
(g2 c4o18)
(f c4o11 c4o18)
)
(and
(g2 c4o19)
(f c4o11 c4o19)
)
(and
(g2 c4o20)
(f c4o11 c4o20)
)
(and
(g2 c4o21)
(f c4o11 c4o21)
)
(and
(g2 c4o22)
(f c4o11 c4o22)
)
(and
(g2 c4o23)
(f c4o11 c4o23)
)
(and
(g2 c4o24)
(f c4o11 c4o24)
)
(and
(g2 c4o25)
(f c4o11 c4o25)
)
(and
(g2 c4o26)
(f c4o11 c4o26)
)
(and
(g2 c4o27)
(f c4o11 c4o27)
)
(and
(g2 c4o28)
(f c4o11 c4o28)
)
(and
(g2 c4o29)
(f c4o11 c4o29)
)
(and
(g2 c4o30)
(f c4o11 c4o30)
)
(and
(g2 c4o31)
(f c4o11 c4o31)
)
(and
(g2 c4o32)
(f c4o11 c4o32)
)
(and
(g2 c4o33)
(f c4o11 c4o33)
)
(and
(g2 c4o34)
(f c4o11 c4o34)
)
(and
(g2 c4o35)
(f c4o11 c4o35)
)
(and
(g2 c4o36)
(f c4o11 c4o36)
)
)
)
(and
(g1 c4o12)
(or
(and
(g2 c4o1)
(f c4o12 c4o1)
)
(and
(g2 c4o2)
(f c4o12 c4o2)
)
(and
(g2 c4o3)
(f c4o12 c4o3)
)
(and
(g2 c4o4)
(f c4o12 c4o4)
)
(and
(g2 c4o5)
(f c4o12 c4o5)
)
(and
(g2 c4o6)
(f c4o12 c4o6)
)
(and
(g2 c4o7)
(f c4o12 c4o7)
)
(and
(g2 c4o8)
(f c4o12 c4o8)
)
(and
(g2 c4o9)
(f c4o12 c4o9)
)
(and
(g2 c4o10)
(f c4o12 c4o10)
)
(and
(g2 c4o11)
(f c4o12 c4o11)
)
(and
(g2 c4o12)
(f c4o12 c4o12)
)
(and
(g2 c4o13)
(f c4o12 c4o13)
)
(and
(g2 c4o14)
(f c4o12 c4o14)
)
(and
(g2 c4o15)
(f c4o12 c4o15)
)
(and
(g2 c4o16)
(f c4o12 c4o16)
)
(and
(g2 c4o17)
(f c4o12 c4o17)
)
(and
(g2 c4o18)
(f c4o12 c4o18)
)
(and
(g2 c4o19)
(f c4o12 c4o19)
)
(and
(g2 c4o20)
(f c4o12 c4o20)
)
(and
(g2 c4o21)
(f c4o12 c4o21)
)
(and
(g2 c4o22)
(f c4o12 c4o22)
)
(and
(g2 c4o23)
(f c4o12 c4o23)
)
(and
(g2 c4o24)
(f c4o12 c4o24)
)
(and
(g2 c4o25)
(f c4o12 c4o25)
)
(and
(g2 c4o26)
(f c4o12 c4o26)
)
(and
(g2 c4o27)
(f c4o12 c4o27)
)
(and
(g2 c4o28)
(f c4o12 c4o28)
)
(and
(g2 c4o29)
(f c4o12 c4o29)
)
(and
(g2 c4o30)
(f c4o12 c4o30)
)
(and
(g2 c4o31)
(f c4o12 c4o31)
)
(and
(g2 c4o32)
(f c4o12 c4o32)
)
(and
(g2 c4o33)
(f c4o12 c4o33)
)
(and
(g2 c4o34)
(f c4o12 c4o34)
)
(and
(g2 c4o35)
(f c4o12 c4o35)
)
(and
(g2 c4o36)
(f c4o12 c4o36)
)
)
)
(and
(g1 c4o13)
(or
(and
(g2 c4o1)
(f c4o13 c4o1)
)
(and
(g2 c4o2)
(f c4o13 c4o2)
)
(and
(g2 c4o3)
(f c4o13 c4o3)
)
(and
(g2 c4o4)
(f c4o13 c4o4)
)
(and
(g2 c4o5)
(f c4o13 c4o5)
)
(and
(g2 c4o6)
(f c4o13 c4o6)
)
(and
(g2 c4o7)
(f c4o13 c4o7)
)
(and
(g2 c4o8)
(f c4o13 c4o8)
)
(and
(g2 c4o9)
(f c4o13 c4o9)
)
(and
(g2 c4o10)
(f c4o13 c4o10)
)
(and
(g2 c4o11)
(f c4o13 c4o11)
)
(and
(g2 c4o12)
(f c4o13 c4o12)
)
(and
(g2 c4o13)
(f c4o13 c4o13)
)
(and
(g2 c4o14)
(f c4o13 c4o14)
)
(and
(g2 c4o15)
(f c4o13 c4o15)
)
(and
(g2 c4o16)
(f c4o13 c4o16)
)
(and
(g2 c4o17)
(f c4o13 c4o17)
)
(and
(g2 c4o18)
(f c4o13 c4o18)
)
(and
(g2 c4o19)
(f c4o13 c4o19)
)
(and
(g2 c4o20)
(f c4o13 c4o20)
)
(and
(g2 c4o21)
(f c4o13 c4o21)
)
(and
(g2 c4o22)
(f c4o13 c4o22)
)
(and
(g2 c4o23)
(f c4o13 c4o23)
)
(and
(g2 c4o24)
(f c4o13 c4o24)
)
(and
(g2 c4o25)
(f c4o13 c4o25)
)
(and
(g2 c4o26)
(f c4o13 c4o26)
)
(and
(g2 c4o27)
(f c4o13 c4o27)
)
(and
(g2 c4o28)
(f c4o13 c4o28)
)
(and
(g2 c4o29)
(f c4o13 c4o29)
)
(and
(g2 c4o30)
(f c4o13 c4o30)
)
(and
(g2 c4o31)
(f c4o13 c4o31)
)
(and
(g2 c4o32)
(f c4o13 c4o32)
)
(and
(g2 c4o33)
(f c4o13 c4o33)
)
(and
(g2 c4o34)
(f c4o13 c4o34)
)
(and
(g2 c4o35)
(f c4o13 c4o35)
)
(and
(g2 c4o36)
(f c4o13 c4o36)
)
)
)
(and
(g1 c4o14)
(or
(and
(g2 c4o1)
(f c4o14 c4o1)
)
(and
(g2 c4o2)
(f c4o14 c4o2)
)
(and
(g2 c4o3)
(f c4o14 c4o3)
)
(and
(g2 c4o4)
(f c4o14 c4o4)
)
(and
(g2 c4o5)
(f c4o14 c4o5)
)
(and
(g2 c4o6)
(f c4o14 c4o6)
)
(and
(g2 c4o7)
(f c4o14 c4o7)
)
(and
(g2 c4o8)
(f c4o14 c4o8)
)
(and
(g2 c4o9)
(f c4o14 c4o9)
)
(and
(g2 c4o10)
(f c4o14 c4o10)
)
(and
(g2 c4o11)
(f c4o14 c4o11)
)
(and
(g2 c4o12)
(f c4o14 c4o12)
)
(and
(g2 c4o13)
(f c4o14 c4o13)
)
(and
(g2 c4o14)
(f c4o14 c4o14)
)
(and
(g2 c4o15)
(f c4o14 c4o15)
)
(and
(g2 c4o16)
(f c4o14 c4o16)
)
(and
(g2 c4o17)
(f c4o14 c4o17)
)
(and
(g2 c4o18)
(f c4o14 c4o18)
)
(and
(g2 c4o19)
(f c4o14 c4o19)
)
(and
(g2 c4o20)
(f c4o14 c4o20)
)
(and
(g2 c4o21)
(f c4o14 c4o21)
)
(and
(g2 c4o22)
(f c4o14 c4o22)
)
(and
(g2 c4o23)
(f c4o14 c4o23)
)
(and
(g2 c4o24)
(f c4o14 c4o24)
)
(and
(g2 c4o25)
(f c4o14 c4o25)
)
(and
(g2 c4o26)
(f c4o14 c4o26)
)
(and
(g2 c4o27)
(f c4o14 c4o27)
)
(and
(g2 c4o28)
(f c4o14 c4o28)
)
(and
(g2 c4o29)
(f c4o14 c4o29)
)
(and
(g2 c4o30)
(f c4o14 c4o30)
)
(and
(g2 c4o31)
(f c4o14 c4o31)
)
(and
(g2 c4o32)
(f c4o14 c4o32)
)
(and
(g2 c4o33)
(f c4o14 c4o33)
)
(and
(g2 c4o34)
(f c4o14 c4o34)
)
(and
(g2 c4o35)
(f c4o14 c4o35)
)
(and
(g2 c4o36)
(f c4o14 c4o36)
)
)
)
(and
(g1 c4o15)
(or
(and
(g2 c4o1)
(f c4o15 c4o1)
)
(and
(g2 c4o2)
(f c4o15 c4o2)
)
(and
(g2 c4o3)
(f c4o15 c4o3)
)
(and
(g2 c4o4)
(f c4o15 c4o4)
)
(and
(g2 c4o5)
(f c4o15 c4o5)
)
(and
(g2 c4o6)
(f c4o15 c4o6)
)
(and
(g2 c4o7)
(f c4o15 c4o7)
)
(and
(g2 c4o8)
(f c4o15 c4o8)
)
(and
(g2 c4o9)
(f c4o15 c4o9)
)
(and
(g2 c4o10)
(f c4o15 c4o10)
)
(and
(g2 c4o11)
(f c4o15 c4o11)
)
(and
(g2 c4o12)
(f c4o15 c4o12)
)
(and
(g2 c4o13)
(f c4o15 c4o13)
)
(and
(g2 c4o14)
(f c4o15 c4o14)
)
(and
(g2 c4o15)
(f c4o15 c4o15)
)
(and
(g2 c4o16)
(f c4o15 c4o16)
)
(and
(g2 c4o17)
(f c4o15 c4o17)
)
(and
(g2 c4o18)
(f c4o15 c4o18)
)
(and
(g2 c4o19)
(f c4o15 c4o19)
)
(and
(g2 c4o20)
(f c4o15 c4o20)
)
(and
(g2 c4o21)
(f c4o15 c4o21)
)
(and
(g2 c4o22)
(f c4o15 c4o22)
)
(and
(g2 c4o23)
(f c4o15 c4o23)
)
(and
(g2 c4o24)
(f c4o15 c4o24)
)
(and
(g2 c4o25)
(f c4o15 c4o25)
)
(and
(g2 c4o26)
(f c4o15 c4o26)
)
(and
(g2 c4o27)
(f c4o15 c4o27)
)
(and
(g2 c4o28)
(f c4o15 c4o28)
)
(and
(g2 c4o29)
(f c4o15 c4o29)
)
(and
(g2 c4o30)
(f c4o15 c4o30)
)
(and
(g2 c4o31)
(f c4o15 c4o31)
)
(and
(g2 c4o32)
(f c4o15 c4o32)
)
(and
(g2 c4o33)
(f c4o15 c4o33)
)
(and
(g2 c4o34)
(f c4o15 c4o34)
)
(and
(g2 c4o35)
(f c4o15 c4o35)
)
(and
(g2 c4o36)
(f c4o15 c4o36)
)
)
)
(and
(g1 c4o16)
(or
(and
(g2 c4o1)
(f c4o16 c4o1)
)
(and
(g2 c4o2)
(f c4o16 c4o2)
)
(and
(g2 c4o3)
(f c4o16 c4o3)
)
(and
(g2 c4o4)
(f c4o16 c4o4)
)
(and
(g2 c4o5)
(f c4o16 c4o5)
)
(and
(g2 c4o6)
(f c4o16 c4o6)
)
(and
(g2 c4o7)
(f c4o16 c4o7)
)
(and
(g2 c4o8)
(f c4o16 c4o8)
)
(and
(g2 c4o9)
(f c4o16 c4o9)
)
(and
(g2 c4o10)
(f c4o16 c4o10)
)
(and
(g2 c4o11)
(f c4o16 c4o11)
)
(and
(g2 c4o12)
(f c4o16 c4o12)
)
(and
(g2 c4o13)
(f c4o16 c4o13)
)
(and
(g2 c4o14)
(f c4o16 c4o14)
)
(and
(g2 c4o15)
(f c4o16 c4o15)
)
(and
(g2 c4o16)
(f c4o16 c4o16)
)
(and
(g2 c4o17)
(f c4o16 c4o17)
)
(and
(g2 c4o18)
(f c4o16 c4o18)
)
(and
(g2 c4o19)
(f c4o16 c4o19)
)
(and
(g2 c4o20)
(f c4o16 c4o20)
)
(and
(g2 c4o21)
(f c4o16 c4o21)
)
(and
(g2 c4o22)
(f c4o16 c4o22)
)
(and
(g2 c4o23)
(f c4o16 c4o23)
)
(and
(g2 c4o24)
(f c4o16 c4o24)
)
(and
(g2 c4o25)
(f c4o16 c4o25)
)
(and
(g2 c4o26)
(f c4o16 c4o26)
)
(and
(g2 c4o27)
(f c4o16 c4o27)
)
(and
(g2 c4o28)
(f c4o16 c4o28)
)
(and
(g2 c4o29)
(f c4o16 c4o29)
)
(and
(g2 c4o30)
(f c4o16 c4o30)
)
(and
(g2 c4o31)
(f c4o16 c4o31)
)
(and
(g2 c4o32)
(f c4o16 c4o32)
)
(and
(g2 c4o33)
(f c4o16 c4o33)
)
(and
(g2 c4o34)
(f c4o16 c4o34)
)
(and
(g2 c4o35)
(f c4o16 c4o35)
)
(and
(g2 c4o36)
(f c4o16 c4o36)
)
)
)
(and
(g1 c4o17)
(or
(and
(g2 c4o1)
(f c4o17 c4o1)
)
(and
(g2 c4o2)
(f c4o17 c4o2)
)
(and
(g2 c4o3)
(f c4o17 c4o3)
)
(and
(g2 c4o4)
(f c4o17 c4o4)
)
(and
(g2 c4o5)
(f c4o17 c4o5)
)
(and
(g2 c4o6)
(f c4o17 c4o6)
)
(and
(g2 c4o7)
(f c4o17 c4o7)
)
(and
(g2 c4o8)
(f c4o17 c4o8)
)
(and
(g2 c4o9)
(f c4o17 c4o9)
)
(and
(g2 c4o10)
(f c4o17 c4o10)
)
(and
(g2 c4o11)
(f c4o17 c4o11)
)
(and
(g2 c4o12)
(f c4o17 c4o12)
)
(and
(g2 c4o13)
(f c4o17 c4o13)
)
(and
(g2 c4o14)
(f c4o17 c4o14)
)
(and
(g2 c4o15)
(f c4o17 c4o15)
)
(and
(g2 c4o16)
(f c4o17 c4o16)
)
(and
(g2 c4o17)
(f c4o17 c4o17)
)
(and
(g2 c4o18)
(f c4o17 c4o18)
)
(and
(g2 c4o19)
(f c4o17 c4o19)
)
(and
(g2 c4o20)
(f c4o17 c4o20)
)
(and
(g2 c4o21)
(f c4o17 c4o21)
)
(and
(g2 c4o22)
(f c4o17 c4o22)
)
(and
(g2 c4o23)
(f c4o17 c4o23)
)
(and
(g2 c4o24)
(f c4o17 c4o24)
)
(and
(g2 c4o25)
(f c4o17 c4o25)
)
(and
(g2 c4o26)
(f c4o17 c4o26)
)
(and
(g2 c4o27)
(f c4o17 c4o27)
)
(and
(g2 c4o28)
(f c4o17 c4o28)
)
(and
(g2 c4o29)
(f c4o17 c4o29)
)
(and
(g2 c4o30)
(f c4o17 c4o30)
)
(and
(g2 c4o31)
(f c4o17 c4o31)
)
(and
(g2 c4o32)
(f c4o17 c4o32)
)
(and
(g2 c4o33)
(f c4o17 c4o33)
)
(and
(g2 c4o34)
(f c4o17 c4o34)
)
(and
(g2 c4o35)
(f c4o17 c4o35)
)
(and
(g2 c4o36)
(f c4o17 c4o36)
)
)
)
(and
(g1 c4o18)
(or
(and
(g2 c4o1)
(f c4o18 c4o1)
)
(and
(g2 c4o2)
(f c4o18 c4o2)
)
(and
(g2 c4o3)
(f c4o18 c4o3)
)
(and
(g2 c4o4)
(f c4o18 c4o4)
)
(and
(g2 c4o5)
(f c4o18 c4o5)
)
(and
(g2 c4o6)
(f c4o18 c4o6)
)
(and
(g2 c4o7)
(f c4o18 c4o7)
)
(and
(g2 c4o8)
(f c4o18 c4o8)
)
(and
(g2 c4o9)
(f c4o18 c4o9)
)
(and
(g2 c4o10)
(f c4o18 c4o10)
)
(and
(g2 c4o11)
(f c4o18 c4o11)
)
(and
(g2 c4o12)
(f c4o18 c4o12)
)
(and
(g2 c4o13)
(f c4o18 c4o13)
)
(and
(g2 c4o14)
(f c4o18 c4o14)
)
(and
(g2 c4o15)
(f c4o18 c4o15)
)
(and
(g2 c4o16)
(f c4o18 c4o16)
)
(and
(g2 c4o17)
(f c4o18 c4o17)
)
(and
(g2 c4o18)
(f c4o18 c4o18)
)
(and
(g2 c4o19)
(f c4o18 c4o19)
)
(and
(g2 c4o20)
(f c4o18 c4o20)
)
(and
(g2 c4o21)
(f c4o18 c4o21)
)
(and
(g2 c4o22)
(f c4o18 c4o22)
)
(and
(g2 c4o23)
(f c4o18 c4o23)
)
(and
(g2 c4o24)
(f c4o18 c4o24)
)
(and
(g2 c4o25)
(f c4o18 c4o25)
)
(and
(g2 c4o26)
(f c4o18 c4o26)
)
(and
(g2 c4o27)
(f c4o18 c4o27)
)
(and
(g2 c4o28)
(f c4o18 c4o28)
)
(and
(g2 c4o29)
(f c4o18 c4o29)
)
(and
(g2 c4o30)
(f c4o18 c4o30)
)
(and
(g2 c4o31)
(f c4o18 c4o31)
)
(and
(g2 c4o32)
(f c4o18 c4o32)
)
(and
(g2 c4o33)
(f c4o18 c4o33)
)
(and
(g2 c4o34)
(f c4o18 c4o34)
)
(and
(g2 c4o35)
(f c4o18 c4o35)
)
(and
(g2 c4o36)
(f c4o18 c4o36)
)
)
)
(and
(g1 c4o19)
(or
(and
(g2 c4o1)
(f c4o19 c4o1)
)
(and
(g2 c4o2)
(f c4o19 c4o2)
)
(and
(g2 c4o3)
(f c4o19 c4o3)
)
(and
(g2 c4o4)
(f c4o19 c4o4)
)
(and
(g2 c4o5)
(f c4o19 c4o5)
)
(and
(g2 c4o6)
(f c4o19 c4o6)
)
(and
(g2 c4o7)
(f c4o19 c4o7)
)
(and
(g2 c4o8)
(f c4o19 c4o8)
)
(and
(g2 c4o9)
(f c4o19 c4o9)
)
(and
(g2 c4o10)
(f c4o19 c4o10)
)
(and
(g2 c4o11)
(f c4o19 c4o11)
)
(and
(g2 c4o12)
(f c4o19 c4o12)
)
(and
(g2 c4o13)
(f c4o19 c4o13)
)
(and
(g2 c4o14)
(f c4o19 c4o14)
)
(and
(g2 c4o15)
(f c4o19 c4o15)
)
(and
(g2 c4o16)
(f c4o19 c4o16)
)
(and
(g2 c4o17)
(f c4o19 c4o17)
)
(and
(g2 c4o18)
(f c4o19 c4o18)
)
(and
(g2 c4o19)
(f c4o19 c4o19)
)
(and
(g2 c4o20)
(f c4o19 c4o20)
)
(and
(g2 c4o21)
(f c4o19 c4o21)
)
(and
(g2 c4o22)
(f c4o19 c4o22)
)
(and
(g2 c4o23)
(f c4o19 c4o23)
)
(and
(g2 c4o24)
(f c4o19 c4o24)
)
(and
(g2 c4o25)
(f c4o19 c4o25)
)
(and
(g2 c4o26)
(f c4o19 c4o26)
)
(and
(g2 c4o27)
(f c4o19 c4o27)
)
(and
(g2 c4o28)
(f c4o19 c4o28)
)
(and
(g2 c4o29)
(f c4o19 c4o29)
)
(and
(g2 c4o30)
(f c4o19 c4o30)
)
(and
(g2 c4o31)
(f c4o19 c4o31)
)
(and
(g2 c4o32)
(f c4o19 c4o32)
)
(and
(g2 c4o33)
(f c4o19 c4o33)
)
(and
(g2 c4o34)
(f c4o19 c4o34)
)
(and
(g2 c4o35)
(f c4o19 c4o35)
)
(and
(g2 c4o36)
(f c4o19 c4o36)
)
)
)
(and
(g1 c4o20)
(or
(and
(g2 c4o1)
(f c4o20 c4o1)
)
(and
(g2 c4o2)
(f c4o20 c4o2)
)
(and
(g2 c4o3)
(f c4o20 c4o3)
)
(and
(g2 c4o4)
(f c4o20 c4o4)
)
(and
(g2 c4o5)
(f c4o20 c4o5)
)
(and
(g2 c4o6)
(f c4o20 c4o6)
)
(and
(g2 c4o7)
(f c4o20 c4o7)
)
(and
(g2 c4o8)
(f c4o20 c4o8)
)
(and
(g2 c4o9)
(f c4o20 c4o9)
)
(and
(g2 c4o10)
(f c4o20 c4o10)
)
(and
(g2 c4o11)
(f c4o20 c4o11)
)
(and
(g2 c4o12)
(f c4o20 c4o12)
)
(and
(g2 c4o13)
(f c4o20 c4o13)
)
(and
(g2 c4o14)
(f c4o20 c4o14)
)
(and
(g2 c4o15)
(f c4o20 c4o15)
)
(and
(g2 c4o16)
(f c4o20 c4o16)
)
(and
(g2 c4o17)
(f c4o20 c4o17)
)
(and
(g2 c4o18)
(f c4o20 c4o18)
)
(and
(g2 c4o19)
(f c4o20 c4o19)
)
(and
(g2 c4o20)
(f c4o20 c4o20)
)
(and
(g2 c4o21)
(f c4o20 c4o21)
)
(and
(g2 c4o22)
(f c4o20 c4o22)
)
(and
(g2 c4o23)
(f c4o20 c4o23)
)
(and
(g2 c4o24)
(f c4o20 c4o24)
)
(and
(g2 c4o25)
(f c4o20 c4o25)
)
(and
(g2 c4o26)
(f c4o20 c4o26)
)
(and
(g2 c4o27)
(f c4o20 c4o27)
)
(and
(g2 c4o28)
(f c4o20 c4o28)
)
(and
(g2 c4o29)
(f c4o20 c4o29)
)
(and
(g2 c4o30)
(f c4o20 c4o30)
)
(and
(g2 c4o31)
(f c4o20 c4o31)
)
(and
(g2 c4o32)
(f c4o20 c4o32)
)
(and
(g2 c4o33)
(f c4o20 c4o33)
)
(and
(g2 c4o34)
(f c4o20 c4o34)
)
(and
(g2 c4o35)
(f c4o20 c4o35)
)
(and
(g2 c4o36)
(f c4o20 c4o36)
)
)
)
(and
(g1 c4o21)
(or
(and
(g2 c4o1)
(f c4o21 c4o1)
)
(and
(g2 c4o2)
(f c4o21 c4o2)
)
(and
(g2 c4o3)
(f c4o21 c4o3)
)
(and
(g2 c4o4)
(f c4o21 c4o4)
)
(and
(g2 c4o5)
(f c4o21 c4o5)
)
(and
(g2 c4o6)
(f c4o21 c4o6)
)
(and
(g2 c4o7)
(f c4o21 c4o7)
)
(and
(g2 c4o8)
(f c4o21 c4o8)
)
(and
(g2 c4o9)
(f c4o21 c4o9)
)
(and
(g2 c4o10)
(f c4o21 c4o10)
)
(and
(g2 c4o11)
(f c4o21 c4o11)
)
(and
(g2 c4o12)
(f c4o21 c4o12)
)
(and
(g2 c4o13)
(f c4o21 c4o13)
)
(and
(g2 c4o14)
(f c4o21 c4o14)
)
(and
(g2 c4o15)
(f c4o21 c4o15)
)
(and
(g2 c4o16)
(f c4o21 c4o16)
)
(and
(g2 c4o17)
(f c4o21 c4o17)
)
(and
(g2 c4o18)
(f c4o21 c4o18)
)
(and
(g2 c4o19)
(f c4o21 c4o19)
)
(and
(g2 c4o20)
(f c4o21 c4o20)
)
(and
(g2 c4o21)
(f c4o21 c4o21)
)
(and
(g2 c4o22)
(f c4o21 c4o22)
)
(and
(g2 c4o23)
(f c4o21 c4o23)
)
(and
(g2 c4o24)
(f c4o21 c4o24)
)
(and
(g2 c4o25)
(f c4o21 c4o25)
)
(and
(g2 c4o26)
(f c4o21 c4o26)
)
(and
(g2 c4o27)
(f c4o21 c4o27)
)
(and
(g2 c4o28)
(f c4o21 c4o28)
)
(and
(g2 c4o29)
(f c4o21 c4o29)
)
(and
(g2 c4o30)
(f c4o21 c4o30)
)
(and
(g2 c4o31)
(f c4o21 c4o31)
)
(and
(g2 c4o32)
(f c4o21 c4o32)
)
(and
(g2 c4o33)
(f c4o21 c4o33)
)
(and
(g2 c4o34)
(f c4o21 c4o34)
)
(and
(g2 c4o35)
(f c4o21 c4o35)
)
(and
(g2 c4o36)
(f c4o21 c4o36)
)
)
)
(and
(g1 c4o22)
(or
(and
(g2 c4o1)
(f c4o22 c4o1)
)
(and
(g2 c4o2)
(f c4o22 c4o2)
)
(and
(g2 c4o3)
(f c4o22 c4o3)
)
(and
(g2 c4o4)
(f c4o22 c4o4)
)
(and
(g2 c4o5)
(f c4o22 c4o5)
)
(and
(g2 c4o6)
(f c4o22 c4o6)
)
(and
(g2 c4o7)
(f c4o22 c4o7)
)
(and
(g2 c4o8)
(f c4o22 c4o8)
)
(and
(g2 c4o9)
(f c4o22 c4o9)
)
(and
(g2 c4o10)
(f c4o22 c4o10)
)
(and
(g2 c4o11)
(f c4o22 c4o11)
)
(and
(g2 c4o12)
(f c4o22 c4o12)
)
(and
(g2 c4o13)
(f c4o22 c4o13)
)
(and
(g2 c4o14)
(f c4o22 c4o14)
)
(and
(g2 c4o15)
(f c4o22 c4o15)
)
(and
(g2 c4o16)
(f c4o22 c4o16)
)
(and
(g2 c4o17)
(f c4o22 c4o17)
)
(and
(g2 c4o18)
(f c4o22 c4o18)
)
(and
(g2 c4o19)
(f c4o22 c4o19)
)
(and
(g2 c4o20)
(f c4o22 c4o20)
)
(and
(g2 c4o21)
(f c4o22 c4o21)
)
(and
(g2 c4o22)
(f c4o22 c4o22)
)
(and
(g2 c4o23)
(f c4o22 c4o23)
)
(and
(g2 c4o24)
(f c4o22 c4o24)
)
(and
(g2 c4o25)
(f c4o22 c4o25)
)
(and
(g2 c4o26)
(f c4o22 c4o26)
)
(and
(g2 c4o27)
(f c4o22 c4o27)
)
(and
(g2 c4o28)
(f c4o22 c4o28)
)
(and
(g2 c4o29)
(f c4o22 c4o29)
)
(and
(g2 c4o30)
(f c4o22 c4o30)
)
(and
(g2 c4o31)
(f c4o22 c4o31)
)
(and
(g2 c4o32)
(f c4o22 c4o32)
)
(and
(g2 c4o33)
(f c4o22 c4o33)
)
(and
(g2 c4o34)
(f c4o22 c4o34)
)
(and
(g2 c4o35)
(f c4o22 c4o35)
)
(and
(g2 c4o36)
(f c4o22 c4o36)
)
)
)
(and
(g1 c4o23)
(or
(and
(g2 c4o1)
(f c4o23 c4o1)
)
(and
(g2 c4o2)
(f c4o23 c4o2)
)
(and
(g2 c4o3)
(f c4o23 c4o3)
)
(and
(g2 c4o4)
(f c4o23 c4o4)
)
(and
(g2 c4o5)
(f c4o23 c4o5)
)
(and
(g2 c4o6)
(f c4o23 c4o6)
)
(and
(g2 c4o7)
(f c4o23 c4o7)
)
(and
(g2 c4o8)
(f c4o23 c4o8)
)
(and
(g2 c4o9)
(f c4o23 c4o9)
)
(and
(g2 c4o10)
(f c4o23 c4o10)
)
(and
(g2 c4o11)
(f c4o23 c4o11)
)
(and
(g2 c4o12)
(f c4o23 c4o12)
)
(and
(g2 c4o13)
(f c4o23 c4o13)
)
(and
(g2 c4o14)
(f c4o23 c4o14)
)
(and
(g2 c4o15)
(f c4o23 c4o15)
)
(and
(g2 c4o16)
(f c4o23 c4o16)
)
(and
(g2 c4o17)
(f c4o23 c4o17)
)
(and
(g2 c4o18)
(f c4o23 c4o18)
)
(and
(g2 c4o19)
(f c4o23 c4o19)
)
(and
(g2 c4o20)
(f c4o23 c4o20)
)
(and
(g2 c4o21)
(f c4o23 c4o21)
)
(and
(g2 c4o22)
(f c4o23 c4o22)
)
(and
(g2 c4o23)
(f c4o23 c4o23)
)
(and
(g2 c4o24)
(f c4o23 c4o24)
)
(and
(g2 c4o25)
(f c4o23 c4o25)
)
(and
(g2 c4o26)
(f c4o23 c4o26)
)
(and
(g2 c4o27)
(f c4o23 c4o27)
)
(and
(g2 c4o28)
(f c4o23 c4o28)
)
(and
(g2 c4o29)
(f c4o23 c4o29)
)
(and
(g2 c4o30)
(f c4o23 c4o30)
)
(and
(g2 c4o31)
(f c4o23 c4o31)
)
(and
(g2 c4o32)
(f c4o23 c4o32)
)
(and
(g2 c4o33)
(f c4o23 c4o33)
)
(and
(g2 c4o34)
(f c4o23 c4o34)
)
(and
(g2 c4o35)
(f c4o23 c4o35)
)
(and
(g2 c4o36)
(f c4o23 c4o36)
)
)
)
(and
(g1 c4o24)
(or
(and
(g2 c4o1)
(f c4o24 c4o1)
)
(and
(g2 c4o2)
(f c4o24 c4o2)
)
(and
(g2 c4o3)
(f c4o24 c4o3)
)
(and
(g2 c4o4)
(f c4o24 c4o4)
)
(and
(g2 c4o5)
(f c4o24 c4o5)
)
(and
(g2 c4o6)
(f c4o24 c4o6)
)
(and
(g2 c4o7)
(f c4o24 c4o7)
)
(and
(g2 c4o8)
(f c4o24 c4o8)
)
(and
(g2 c4o9)
(f c4o24 c4o9)
)
(and
(g2 c4o10)
(f c4o24 c4o10)
)
(and
(g2 c4o11)
(f c4o24 c4o11)
)
(and
(g2 c4o12)
(f c4o24 c4o12)
)
(and
(g2 c4o13)
(f c4o24 c4o13)
)
(and
(g2 c4o14)
(f c4o24 c4o14)
)
(and
(g2 c4o15)
(f c4o24 c4o15)
)
(and
(g2 c4o16)
(f c4o24 c4o16)
)
(and
(g2 c4o17)
(f c4o24 c4o17)
)
(and
(g2 c4o18)
(f c4o24 c4o18)
)
(and
(g2 c4o19)
(f c4o24 c4o19)
)
(and
(g2 c4o20)
(f c4o24 c4o20)
)
(and
(g2 c4o21)
(f c4o24 c4o21)
)
(and
(g2 c4o22)
(f c4o24 c4o22)
)
(and
(g2 c4o23)
(f c4o24 c4o23)
)
(and
(g2 c4o24)
(f c4o24 c4o24)
)
(and
(g2 c4o25)
(f c4o24 c4o25)
)
(and
(g2 c4o26)
(f c4o24 c4o26)
)
(and
(g2 c4o27)
(f c4o24 c4o27)
)
(and
(g2 c4o28)
(f c4o24 c4o28)
)
(and
(g2 c4o29)
(f c4o24 c4o29)
)
(and
(g2 c4o30)
(f c4o24 c4o30)
)
(and
(g2 c4o31)
(f c4o24 c4o31)
)
(and
(g2 c4o32)
(f c4o24 c4o32)
)
(and
(g2 c4o33)
(f c4o24 c4o33)
)
(and
(g2 c4o34)
(f c4o24 c4o34)
)
(and
(g2 c4o35)
(f c4o24 c4o35)
)
(and
(g2 c4o36)
(f c4o24 c4o36)
)
)
)
(and
(g1 c4o25)
(or
(and
(g2 c4o1)
(f c4o25 c4o1)
)
(and
(g2 c4o2)
(f c4o25 c4o2)
)
(and
(g2 c4o3)
(f c4o25 c4o3)
)
(and
(g2 c4o4)
(f c4o25 c4o4)
)
(and
(g2 c4o5)
(f c4o25 c4o5)
)
(and
(g2 c4o6)
(f c4o25 c4o6)
)
(and
(g2 c4o7)
(f c4o25 c4o7)
)
(and
(g2 c4o8)
(f c4o25 c4o8)
)
(and
(g2 c4o9)
(f c4o25 c4o9)
)
(and
(g2 c4o10)
(f c4o25 c4o10)
)
(and
(g2 c4o11)
(f c4o25 c4o11)
)
(and
(g2 c4o12)
(f c4o25 c4o12)
)
(and
(g2 c4o13)
(f c4o25 c4o13)
)
(and
(g2 c4o14)
(f c4o25 c4o14)
)
(and
(g2 c4o15)
(f c4o25 c4o15)
)
(and
(g2 c4o16)
(f c4o25 c4o16)
)
(and
(g2 c4o17)
(f c4o25 c4o17)
)
(and
(g2 c4o18)
(f c4o25 c4o18)
)
(and
(g2 c4o19)
(f c4o25 c4o19)
)
(and
(g2 c4o20)
(f c4o25 c4o20)
)
(and
(g2 c4o21)
(f c4o25 c4o21)
)
(and
(g2 c4o22)
(f c4o25 c4o22)
)
(and
(g2 c4o23)
(f c4o25 c4o23)
)
(and
(g2 c4o24)
(f c4o25 c4o24)
)
(and
(g2 c4o25)
(f c4o25 c4o25)
)
(and
(g2 c4o26)
(f c4o25 c4o26)
)
(and
(g2 c4o27)
(f c4o25 c4o27)
)
(and
(g2 c4o28)
(f c4o25 c4o28)
)
(and
(g2 c4o29)
(f c4o25 c4o29)
)
(and
(g2 c4o30)
(f c4o25 c4o30)
)
(and
(g2 c4o31)
(f c4o25 c4o31)
)
(and
(g2 c4o32)
(f c4o25 c4o32)
)
(and
(g2 c4o33)
(f c4o25 c4o33)
)
(and
(g2 c4o34)
(f c4o25 c4o34)
)
(and
(g2 c4o35)
(f c4o25 c4o35)
)
(and
(g2 c4o36)
(f c4o25 c4o36)
)
)
)
(and
(g1 c4o26)
(or
(and
(g2 c4o1)
(f c4o26 c4o1)
)
(and
(g2 c4o2)
(f c4o26 c4o2)
)
(and
(g2 c4o3)
(f c4o26 c4o3)
)
(and
(g2 c4o4)
(f c4o26 c4o4)
)
(and
(g2 c4o5)
(f c4o26 c4o5)
)
(and
(g2 c4o6)
(f c4o26 c4o6)
)
(and
(g2 c4o7)
(f c4o26 c4o7)
)
(and
(g2 c4o8)
(f c4o26 c4o8)
)
(and
(g2 c4o9)
(f c4o26 c4o9)
)
(and
(g2 c4o10)
(f c4o26 c4o10)
)
(and
(g2 c4o11)
(f c4o26 c4o11)
)
(and
(g2 c4o12)
(f c4o26 c4o12)
)
(and
(g2 c4o13)
(f c4o26 c4o13)
)
(and
(g2 c4o14)
(f c4o26 c4o14)
)
(and
(g2 c4o15)
(f c4o26 c4o15)
)
(and
(g2 c4o16)
(f c4o26 c4o16)
)
(and
(g2 c4o17)
(f c4o26 c4o17)
)
(and
(g2 c4o18)
(f c4o26 c4o18)
)
(and
(g2 c4o19)
(f c4o26 c4o19)
)
(and
(g2 c4o20)
(f c4o26 c4o20)
)
(and
(g2 c4o21)
(f c4o26 c4o21)
)
(and
(g2 c4o22)
(f c4o26 c4o22)
)
(and
(g2 c4o23)
(f c4o26 c4o23)
)
(and
(g2 c4o24)
(f c4o26 c4o24)
)
(and
(g2 c4o25)
(f c4o26 c4o25)
)
(and
(g2 c4o26)
(f c4o26 c4o26)
)
(and
(g2 c4o27)
(f c4o26 c4o27)
)
(and
(g2 c4o28)
(f c4o26 c4o28)
)
(and
(g2 c4o29)
(f c4o26 c4o29)
)
(and
(g2 c4o30)
(f c4o26 c4o30)
)
(and
(g2 c4o31)
(f c4o26 c4o31)
)
(and
(g2 c4o32)
(f c4o26 c4o32)
)
(and
(g2 c4o33)
(f c4o26 c4o33)
)
(and
(g2 c4o34)
(f c4o26 c4o34)
)
(and
(g2 c4o35)
(f c4o26 c4o35)
)
(and
(g2 c4o36)
(f c4o26 c4o36)
)
)
)
(and
(g1 c4o27)
(or
(and
(g2 c4o1)
(f c4o27 c4o1)
)
(and
(g2 c4o2)
(f c4o27 c4o2)
)
(and
(g2 c4o3)
(f c4o27 c4o3)
)
(and
(g2 c4o4)
(f c4o27 c4o4)
)
(and
(g2 c4o5)
(f c4o27 c4o5)
)
(and
(g2 c4o6)
(f c4o27 c4o6)
)
(and
(g2 c4o7)
(f c4o27 c4o7)
)
(and
(g2 c4o8)
(f c4o27 c4o8)
)
(and
(g2 c4o9)
(f c4o27 c4o9)
)
(and
(g2 c4o10)
(f c4o27 c4o10)
)
(and
(g2 c4o11)
(f c4o27 c4o11)
)
(and
(g2 c4o12)
(f c4o27 c4o12)
)
(and
(g2 c4o13)
(f c4o27 c4o13)
)
(and
(g2 c4o14)
(f c4o27 c4o14)
)
(and
(g2 c4o15)
(f c4o27 c4o15)
)
(and
(g2 c4o16)
(f c4o27 c4o16)
)
(and
(g2 c4o17)
(f c4o27 c4o17)
)
(and
(g2 c4o18)
(f c4o27 c4o18)
)
(and
(g2 c4o19)
(f c4o27 c4o19)
)
(and
(g2 c4o20)
(f c4o27 c4o20)
)
(and
(g2 c4o21)
(f c4o27 c4o21)
)
(and
(g2 c4o22)
(f c4o27 c4o22)
)
(and
(g2 c4o23)
(f c4o27 c4o23)
)
(and
(g2 c4o24)
(f c4o27 c4o24)
)
(and
(g2 c4o25)
(f c4o27 c4o25)
)
(and
(g2 c4o26)
(f c4o27 c4o26)
)
(and
(g2 c4o27)
(f c4o27 c4o27)
)
(and
(g2 c4o28)
(f c4o27 c4o28)
)
(and
(g2 c4o29)
(f c4o27 c4o29)
)
(and
(g2 c4o30)
(f c4o27 c4o30)
)
(and
(g2 c4o31)
(f c4o27 c4o31)
)
(and
(g2 c4o32)
(f c4o27 c4o32)
)
(and
(g2 c4o33)
(f c4o27 c4o33)
)
(and
(g2 c4o34)
(f c4o27 c4o34)
)
(and
(g2 c4o35)
(f c4o27 c4o35)
)
(and
(g2 c4o36)
(f c4o27 c4o36)
)
)
)
(and
(g1 c4o28)
(or
(and
(g2 c4o1)
(f c4o28 c4o1)
)
(and
(g2 c4o2)
(f c4o28 c4o2)
)
(and
(g2 c4o3)
(f c4o28 c4o3)
)
(and
(g2 c4o4)
(f c4o28 c4o4)
)
(and
(g2 c4o5)
(f c4o28 c4o5)
)
(and
(g2 c4o6)
(f c4o28 c4o6)
)
(and
(g2 c4o7)
(f c4o28 c4o7)
)
(and
(g2 c4o8)
(f c4o28 c4o8)
)
(and
(g2 c4o9)
(f c4o28 c4o9)
)
(and
(g2 c4o10)
(f c4o28 c4o10)
)
(and
(g2 c4o11)
(f c4o28 c4o11)
)
(and
(g2 c4o12)
(f c4o28 c4o12)
)
(and
(g2 c4o13)
(f c4o28 c4o13)
)
(and
(g2 c4o14)
(f c4o28 c4o14)
)
(and
(g2 c4o15)
(f c4o28 c4o15)
)
(and
(g2 c4o16)
(f c4o28 c4o16)
)
(and
(g2 c4o17)
(f c4o28 c4o17)
)
(and
(g2 c4o18)
(f c4o28 c4o18)
)
(and
(g2 c4o19)
(f c4o28 c4o19)
)
(and
(g2 c4o20)
(f c4o28 c4o20)
)
(and
(g2 c4o21)
(f c4o28 c4o21)
)
(and
(g2 c4o22)
(f c4o28 c4o22)
)
(and
(g2 c4o23)
(f c4o28 c4o23)
)
(and
(g2 c4o24)
(f c4o28 c4o24)
)
(and
(g2 c4o25)
(f c4o28 c4o25)
)
(and
(g2 c4o26)
(f c4o28 c4o26)
)
(and
(g2 c4o27)
(f c4o28 c4o27)
)
(and
(g2 c4o28)
(f c4o28 c4o28)
)
(and
(g2 c4o29)
(f c4o28 c4o29)
)
(and
(g2 c4o30)
(f c4o28 c4o30)
)
(and
(g2 c4o31)
(f c4o28 c4o31)
)
(and
(g2 c4o32)
(f c4o28 c4o32)
)
(and
(g2 c4o33)
(f c4o28 c4o33)
)
(and
(g2 c4o34)
(f c4o28 c4o34)
)
(and
(g2 c4o35)
(f c4o28 c4o35)
)
(and
(g2 c4o36)
(f c4o28 c4o36)
)
)
)
(and
(g1 c4o29)
(or
(and
(g2 c4o1)
(f c4o29 c4o1)
)
(and
(g2 c4o2)
(f c4o29 c4o2)
)
(and
(g2 c4o3)
(f c4o29 c4o3)
)
(and
(g2 c4o4)
(f c4o29 c4o4)
)
(and
(g2 c4o5)
(f c4o29 c4o5)
)
(and
(g2 c4o6)
(f c4o29 c4o6)
)
(and
(g2 c4o7)
(f c4o29 c4o7)
)
(and
(g2 c4o8)
(f c4o29 c4o8)
)
(and
(g2 c4o9)
(f c4o29 c4o9)
)
(and
(g2 c4o10)
(f c4o29 c4o10)
)
(and
(g2 c4o11)
(f c4o29 c4o11)
)
(and
(g2 c4o12)
(f c4o29 c4o12)
)
(and
(g2 c4o13)
(f c4o29 c4o13)
)
(and
(g2 c4o14)
(f c4o29 c4o14)
)
(and
(g2 c4o15)
(f c4o29 c4o15)
)
(and
(g2 c4o16)
(f c4o29 c4o16)
)
(and
(g2 c4o17)
(f c4o29 c4o17)
)
(and
(g2 c4o18)
(f c4o29 c4o18)
)
(and
(g2 c4o19)
(f c4o29 c4o19)
)
(and
(g2 c4o20)
(f c4o29 c4o20)
)
(and
(g2 c4o21)
(f c4o29 c4o21)
)
(and
(g2 c4o22)
(f c4o29 c4o22)
)
(and
(g2 c4o23)
(f c4o29 c4o23)
)
(and
(g2 c4o24)
(f c4o29 c4o24)
)
(and
(g2 c4o25)
(f c4o29 c4o25)
)
(and
(g2 c4o26)
(f c4o29 c4o26)
)
(and
(g2 c4o27)
(f c4o29 c4o27)
)
(and
(g2 c4o28)
(f c4o29 c4o28)
)
(and
(g2 c4o29)
(f c4o29 c4o29)
)
(and
(g2 c4o30)
(f c4o29 c4o30)
)
(and
(g2 c4o31)
(f c4o29 c4o31)
)
(and
(g2 c4o32)
(f c4o29 c4o32)
)
(and
(g2 c4o33)
(f c4o29 c4o33)
)
(and
(g2 c4o34)
(f c4o29 c4o34)
)
(and
(g2 c4o35)
(f c4o29 c4o35)
)
(and
(g2 c4o36)
(f c4o29 c4o36)
)
)
)
(and
(g1 c4o30)
(or
(and
(g2 c4o1)
(f c4o30 c4o1)
)
(and
(g2 c4o2)
(f c4o30 c4o2)
)
(and
(g2 c4o3)
(f c4o30 c4o3)
)
(and
(g2 c4o4)
(f c4o30 c4o4)
)
(and
(g2 c4o5)
(f c4o30 c4o5)
)
(and
(g2 c4o6)
(f c4o30 c4o6)
)
(and
(g2 c4o7)
(f c4o30 c4o7)
)
(and
(g2 c4o8)
(f c4o30 c4o8)
)
(and
(g2 c4o9)
(f c4o30 c4o9)
)
(and
(g2 c4o10)
(f c4o30 c4o10)
)
(and
(g2 c4o11)
(f c4o30 c4o11)
)
(and
(g2 c4o12)
(f c4o30 c4o12)
)
(and
(g2 c4o13)
(f c4o30 c4o13)
)
(and
(g2 c4o14)
(f c4o30 c4o14)
)
(and
(g2 c4o15)
(f c4o30 c4o15)
)
(and
(g2 c4o16)
(f c4o30 c4o16)
)
(and
(g2 c4o17)
(f c4o30 c4o17)
)
(and
(g2 c4o18)
(f c4o30 c4o18)
)
(and
(g2 c4o19)
(f c4o30 c4o19)
)
(and
(g2 c4o20)
(f c4o30 c4o20)
)
(and
(g2 c4o21)
(f c4o30 c4o21)
)
(and
(g2 c4o22)
(f c4o30 c4o22)
)
(and
(g2 c4o23)
(f c4o30 c4o23)
)
(and
(g2 c4o24)
(f c4o30 c4o24)
)
(and
(g2 c4o25)
(f c4o30 c4o25)
)
(and
(g2 c4o26)
(f c4o30 c4o26)
)
(and
(g2 c4o27)
(f c4o30 c4o27)
)
(and
(g2 c4o28)
(f c4o30 c4o28)
)
(and
(g2 c4o29)
(f c4o30 c4o29)
)
(and
(g2 c4o30)
(f c4o30 c4o30)
)
(and
(g2 c4o31)
(f c4o30 c4o31)
)
(and
(g2 c4o32)
(f c4o30 c4o32)
)
(and
(g2 c4o33)
(f c4o30 c4o33)
)
(and
(g2 c4o34)
(f c4o30 c4o34)
)
(and
(g2 c4o35)
(f c4o30 c4o35)
)
(and
(g2 c4o36)
(f c4o30 c4o36)
)
)
)
(and
(g1 c4o31)
(or
(and
(g2 c4o1)
(f c4o31 c4o1)
)
(and
(g2 c4o2)
(f c4o31 c4o2)
)
(and
(g2 c4o3)
(f c4o31 c4o3)
)
(and
(g2 c4o4)
(f c4o31 c4o4)
)
(and
(g2 c4o5)
(f c4o31 c4o5)
)
(and
(g2 c4o6)
(f c4o31 c4o6)
)
(and
(g2 c4o7)
(f c4o31 c4o7)
)
(and
(g2 c4o8)
(f c4o31 c4o8)
)
(and
(g2 c4o9)
(f c4o31 c4o9)
)
(and
(g2 c4o10)
(f c4o31 c4o10)
)
(and
(g2 c4o11)
(f c4o31 c4o11)
)
(and
(g2 c4o12)
(f c4o31 c4o12)
)
(and
(g2 c4o13)
(f c4o31 c4o13)
)
(and
(g2 c4o14)
(f c4o31 c4o14)
)
(and
(g2 c4o15)
(f c4o31 c4o15)
)
(and
(g2 c4o16)
(f c4o31 c4o16)
)
(and
(g2 c4o17)
(f c4o31 c4o17)
)
(and
(g2 c4o18)
(f c4o31 c4o18)
)
(and
(g2 c4o19)
(f c4o31 c4o19)
)
(and
(g2 c4o20)
(f c4o31 c4o20)
)
(and
(g2 c4o21)
(f c4o31 c4o21)
)
(and
(g2 c4o22)
(f c4o31 c4o22)
)
(and
(g2 c4o23)
(f c4o31 c4o23)
)
(and
(g2 c4o24)
(f c4o31 c4o24)
)
(and
(g2 c4o25)
(f c4o31 c4o25)
)
(and
(g2 c4o26)
(f c4o31 c4o26)
)
(and
(g2 c4o27)
(f c4o31 c4o27)
)
(and
(g2 c4o28)
(f c4o31 c4o28)
)
(and
(g2 c4o29)
(f c4o31 c4o29)
)
(and
(g2 c4o30)
(f c4o31 c4o30)
)
(and
(g2 c4o31)
(f c4o31 c4o31)
)
(and
(g2 c4o32)
(f c4o31 c4o32)
)
(and
(g2 c4o33)
(f c4o31 c4o33)
)
(and
(g2 c4o34)
(f c4o31 c4o34)
)
(and
(g2 c4o35)
(f c4o31 c4o35)
)
(and
(g2 c4o36)
(f c4o31 c4o36)
)
)
)
(and
(g1 c4o32)
(or
(and
(g2 c4o1)
(f c4o32 c4o1)
)
(and
(g2 c4o2)
(f c4o32 c4o2)
)
(and
(g2 c4o3)
(f c4o32 c4o3)
)
(and
(g2 c4o4)
(f c4o32 c4o4)
)
(and
(g2 c4o5)
(f c4o32 c4o5)
)
(and
(g2 c4o6)
(f c4o32 c4o6)
)
(and
(g2 c4o7)
(f c4o32 c4o7)
)
(and
(g2 c4o8)
(f c4o32 c4o8)
)
(and
(g2 c4o9)
(f c4o32 c4o9)
)
(and
(g2 c4o10)
(f c4o32 c4o10)
)
(and
(g2 c4o11)
(f c4o32 c4o11)
)
(and
(g2 c4o12)
(f c4o32 c4o12)
)
(and
(g2 c4o13)
(f c4o32 c4o13)
)
(and
(g2 c4o14)
(f c4o32 c4o14)
)
(and
(g2 c4o15)
(f c4o32 c4o15)
)
(and
(g2 c4o16)
(f c4o32 c4o16)
)
(and
(g2 c4o17)
(f c4o32 c4o17)
)
(and
(g2 c4o18)
(f c4o32 c4o18)
)
(and
(g2 c4o19)
(f c4o32 c4o19)
)
(and
(g2 c4o20)
(f c4o32 c4o20)
)
(and
(g2 c4o21)
(f c4o32 c4o21)
)
(and
(g2 c4o22)
(f c4o32 c4o22)
)
(and
(g2 c4o23)
(f c4o32 c4o23)
)
(and
(g2 c4o24)
(f c4o32 c4o24)
)
(and
(g2 c4o25)
(f c4o32 c4o25)
)
(and
(g2 c4o26)
(f c4o32 c4o26)
)
(and
(g2 c4o27)
(f c4o32 c4o27)
)
(and
(g2 c4o28)
(f c4o32 c4o28)
)
(and
(g2 c4o29)
(f c4o32 c4o29)
)
(and
(g2 c4o30)
(f c4o32 c4o30)
)
(and
(g2 c4o31)
(f c4o32 c4o31)
)
(and
(g2 c4o32)
(f c4o32 c4o32)
)
(and
(g2 c4o33)
(f c4o32 c4o33)
)
(and
(g2 c4o34)
(f c4o32 c4o34)
)
(and
(g2 c4o35)
(f c4o32 c4o35)
)
(and
(g2 c4o36)
(f c4o32 c4o36)
)
)
)
(and
(g1 c4o33)
(or
(and
(g2 c4o1)
(f c4o33 c4o1)
)
(and
(g2 c4o2)
(f c4o33 c4o2)
)
(and
(g2 c4o3)
(f c4o33 c4o3)
)
(and
(g2 c4o4)
(f c4o33 c4o4)
)
(and
(g2 c4o5)
(f c4o33 c4o5)
)
(and
(g2 c4o6)
(f c4o33 c4o6)
)
(and
(g2 c4o7)
(f c4o33 c4o7)
)
(and
(g2 c4o8)
(f c4o33 c4o8)
)
(and
(g2 c4o9)
(f c4o33 c4o9)
)
(and
(g2 c4o10)
(f c4o33 c4o10)
)
(and
(g2 c4o11)
(f c4o33 c4o11)
)
(and
(g2 c4o12)
(f c4o33 c4o12)
)
(and
(g2 c4o13)
(f c4o33 c4o13)
)
(and
(g2 c4o14)
(f c4o33 c4o14)
)
(and
(g2 c4o15)
(f c4o33 c4o15)
)
(and
(g2 c4o16)
(f c4o33 c4o16)
)
(and
(g2 c4o17)
(f c4o33 c4o17)
)
(and
(g2 c4o18)
(f c4o33 c4o18)
)
(and
(g2 c4o19)
(f c4o33 c4o19)
)
(and
(g2 c4o20)
(f c4o33 c4o20)
)
(and
(g2 c4o21)
(f c4o33 c4o21)
)
(and
(g2 c4o22)
(f c4o33 c4o22)
)
(and
(g2 c4o23)
(f c4o33 c4o23)
)
(and
(g2 c4o24)
(f c4o33 c4o24)
)
(and
(g2 c4o25)
(f c4o33 c4o25)
)
(and
(g2 c4o26)
(f c4o33 c4o26)
)
(and
(g2 c4o27)
(f c4o33 c4o27)
)
(and
(g2 c4o28)
(f c4o33 c4o28)
)
(and
(g2 c4o29)
(f c4o33 c4o29)
)
(and
(g2 c4o30)
(f c4o33 c4o30)
)
(and
(g2 c4o31)
(f c4o33 c4o31)
)
(and
(g2 c4o32)
(f c4o33 c4o32)
)
(and
(g2 c4o33)
(f c4o33 c4o33)
)
(and
(g2 c4o34)
(f c4o33 c4o34)
)
(and
(g2 c4o35)
(f c4o33 c4o35)
)
(and
(g2 c4o36)
(f c4o33 c4o36)
)
)
)
(and
(g1 c4o34)
(or
(and
(g2 c4o1)
(f c4o34 c4o1)
)
(and
(g2 c4o2)
(f c4o34 c4o2)
)
(and
(g2 c4o3)
(f c4o34 c4o3)
)
(and
(g2 c4o4)
(f c4o34 c4o4)
)
(and
(g2 c4o5)
(f c4o34 c4o5)
)
(and
(g2 c4o6)
(f c4o34 c4o6)
)
(and
(g2 c4o7)
(f c4o34 c4o7)
)
(and
(g2 c4o8)
(f c4o34 c4o8)
)
(and
(g2 c4o9)
(f c4o34 c4o9)
)
(and
(g2 c4o10)
(f c4o34 c4o10)
)
(and
(g2 c4o11)
(f c4o34 c4o11)
)
(and
(g2 c4o12)
(f c4o34 c4o12)
)
(and
(g2 c4o13)
(f c4o34 c4o13)
)
(and
(g2 c4o14)
(f c4o34 c4o14)
)
(and
(g2 c4o15)
(f c4o34 c4o15)
)
(and
(g2 c4o16)
(f c4o34 c4o16)
)
(and
(g2 c4o17)
(f c4o34 c4o17)
)
(and
(g2 c4o18)
(f c4o34 c4o18)
)
(and
(g2 c4o19)
(f c4o34 c4o19)
)
(and
(g2 c4o20)
(f c4o34 c4o20)
)
(and
(g2 c4o21)
(f c4o34 c4o21)
)
(and
(g2 c4o22)
(f c4o34 c4o22)
)
(and
(g2 c4o23)
(f c4o34 c4o23)
)
(and
(g2 c4o24)
(f c4o34 c4o24)
)
(and
(g2 c4o25)
(f c4o34 c4o25)
)
(and
(g2 c4o26)
(f c4o34 c4o26)
)
(and
(g2 c4o27)
(f c4o34 c4o27)
)
(and
(g2 c4o28)
(f c4o34 c4o28)
)
(and
(g2 c4o29)
(f c4o34 c4o29)
)
(and
(g2 c4o30)
(f c4o34 c4o30)
)
(and
(g2 c4o31)
(f c4o34 c4o31)
)
(and
(g2 c4o32)
(f c4o34 c4o32)
)
(and
(g2 c4o33)
(f c4o34 c4o33)
)
(and
(g2 c4o34)
(f c4o34 c4o34)
)
(and
(g2 c4o35)
(f c4o34 c4o35)
)
(and
(g2 c4o36)
(f c4o34 c4o36)
)
)
)
(and
(g1 c4o35)
(or
(and
(g2 c4o1)
(f c4o35 c4o1)
)
(and
(g2 c4o2)
(f c4o35 c4o2)
)
(and
(g2 c4o3)
(f c4o35 c4o3)
)
(and
(g2 c4o4)
(f c4o35 c4o4)
)
(and
(g2 c4o5)
(f c4o35 c4o5)
)
(and
(g2 c4o6)
(f c4o35 c4o6)
)
(and
(g2 c4o7)
(f c4o35 c4o7)
)
(and
(g2 c4o8)
(f c4o35 c4o8)
)
(and
(g2 c4o9)
(f c4o35 c4o9)
)
(and
(g2 c4o10)
(f c4o35 c4o10)
)
(and
(g2 c4o11)
(f c4o35 c4o11)
)
(and
(g2 c4o12)
(f c4o35 c4o12)
)
(and
(g2 c4o13)
(f c4o35 c4o13)
)
(and
(g2 c4o14)
(f c4o35 c4o14)
)
(and
(g2 c4o15)
(f c4o35 c4o15)
)
(and
(g2 c4o16)
(f c4o35 c4o16)
)
(and
(g2 c4o17)
(f c4o35 c4o17)
)
(and
(g2 c4o18)
(f c4o35 c4o18)
)
(and
(g2 c4o19)
(f c4o35 c4o19)
)
(and
(g2 c4o20)
(f c4o35 c4o20)
)
(and
(g2 c4o21)
(f c4o35 c4o21)
)
(and
(g2 c4o22)
(f c4o35 c4o22)
)
(and
(g2 c4o23)
(f c4o35 c4o23)
)
(and
(g2 c4o24)
(f c4o35 c4o24)
)
(and
(g2 c4o25)
(f c4o35 c4o25)
)
(and
(g2 c4o26)
(f c4o35 c4o26)
)
(and
(g2 c4o27)
(f c4o35 c4o27)
)
(and
(g2 c4o28)
(f c4o35 c4o28)
)
(and
(g2 c4o29)
(f c4o35 c4o29)
)
(and
(g2 c4o30)
(f c4o35 c4o30)
)
(and
(g2 c4o31)
(f c4o35 c4o31)
)
(and
(g2 c4o32)
(f c4o35 c4o32)
)
(and
(g2 c4o33)
(f c4o35 c4o33)
)
(and
(g2 c4o34)
(f c4o35 c4o34)
)
(and
(g2 c4o35)
(f c4o35 c4o35)
)
(and
(g2 c4o36)
(f c4o35 c4o36)
)
)
)
(and
(g1 c4o36)
(or
(and
(g2 c4o1)
(f c4o36 c4o1)
)
(and
(g2 c4o2)
(f c4o36 c4o2)
)
(and
(g2 c4o3)
(f c4o36 c4o3)
)
(and
(g2 c4o4)
(f c4o36 c4o4)
)
(and
(g2 c4o5)
(f c4o36 c4o5)
)
(and
(g2 c4o6)
(f c4o36 c4o6)
)
(and
(g2 c4o7)
(f c4o36 c4o7)
)
(and
(g2 c4o8)
(f c4o36 c4o8)
)
(and
(g2 c4o9)
(f c4o36 c4o9)
)
(and
(g2 c4o10)
(f c4o36 c4o10)
)
(and
(g2 c4o11)
(f c4o36 c4o11)
)
(and
(g2 c4o12)
(f c4o36 c4o12)
)
(and
(g2 c4o13)
(f c4o36 c4o13)
)
(and
(g2 c4o14)
(f c4o36 c4o14)
)
(and
(g2 c4o15)
(f c4o36 c4o15)
)
(and
(g2 c4o16)
(f c4o36 c4o16)
)
(and
(g2 c4o17)
(f c4o36 c4o17)
)
(and
(g2 c4o18)
(f c4o36 c4o18)
)
(and
(g2 c4o19)
(f c4o36 c4o19)
)
(and
(g2 c4o20)
(f c4o36 c4o20)
)
(and
(g2 c4o21)
(f c4o36 c4o21)
)
(and
(g2 c4o22)
(f c4o36 c4o22)
)
(and
(g2 c4o23)
(f c4o36 c4o23)
)
(and
(g2 c4o24)
(f c4o36 c4o24)
)
(and
(g2 c4o25)
(f c4o36 c4o25)
)
(and
(g2 c4o26)
(f c4o36 c4o26)
)
(and
(g2 c4o27)
(f c4o36 c4o27)
)
(and
(g2 c4o28)
(f c4o36 c4o28)
)
(and
(g2 c4o29)
(f c4o36 c4o29)
)
(and
(g2 c4o30)
(f c4o36 c4o30)
)
(and
(g2 c4o31)
(f c4o36 c4o31)
)
(and
(g2 c4o32)
(f c4o36 c4o32)
)
(and
(g2 c4o33)
(f c4o36 c4o33)
)
(and
(g2 c4o34)
(f c4o36 c4o34)
)
(and
(g2 c4o35)
(f c4o36 c4o35)
)
(and
(g2 c4o36)
(f c4o36 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o1 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o1 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o1 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o1 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o1 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o1 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o1 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o1 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o1 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o1 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o1 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o1 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o1 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o1 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o1 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o1 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o1 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o1 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o1 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o1 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o1 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o1 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o1 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o1 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o1 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o1 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o1 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o2 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o2 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o2 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o2 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o2 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o2 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o2 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o2 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o2 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o2 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o2 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o2 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o2 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o2 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o2 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o2 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o2 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o2 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o2 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o2 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o2 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o2 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o2 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o2 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o2 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o2 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o2 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o3 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o3 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o3 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o3 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o3 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o3 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o3 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o3 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o3 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o3 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o3 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o3 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o3 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o3 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o3 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o3 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o3 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o3 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o3 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o3 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o3 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o3 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o3 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o3 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o3 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o3 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o3 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o4 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o4 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o4 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o4 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o4 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o4 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o4 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o4 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o4 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o4 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o4 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o4 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o4 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o4 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o4 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o4 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o4 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o4 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o4 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o4 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o4 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o4 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o4 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o4 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o4 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o4 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o4 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o5 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o5 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o5 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o5 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o5 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o5 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o5 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o5 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o5 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o5 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o5 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o5 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o5 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o5 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o5 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o5 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o5 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o5 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o5 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o5 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o5 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o5 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o5 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o5 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o5 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o5 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o5 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o6 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o6 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o6 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o6 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o6 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o6 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o6 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o6 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o6 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o6 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o6 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o6 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o6 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o6 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o6 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o6 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o6 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o6 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o6 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o6 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o6 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o6 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o6 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o6 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o6 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o6 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o6 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o7 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o7 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o7 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o7 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o7 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o7 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o7 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o7 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o7 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o7 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o7 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o7 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o7 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o7 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o7 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o7 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o7 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o7 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o7 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o7 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o7 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o7 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o7 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o7 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o7 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o7 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o7 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o8 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o8 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o8 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o8 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o8 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o8 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o8 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o8 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o8 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o8 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o8 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o8 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o8 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o8 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o8 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o8 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o8 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o8 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o8 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o8 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o8 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o8 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o8 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o8 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o8 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o8 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o8 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o9 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o9 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o9 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o9 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o9 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o9 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o9 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o9 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o9 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o9 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o9 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o9 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o9 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o9 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o9 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o9 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o9 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o9 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o9 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o9 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o9 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o9 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o9 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o9 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o9 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o9 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o9 c4o36)
)
)
)
)
(and
(g1 c4o10)
(or
(and
(g2 c4o1)
(not
(f c4o10 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o10 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o10 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o10 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o10 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o10 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o10 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o10 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o10 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o10 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o10 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o10 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o10 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o10 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o10 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o10 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o10 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o10 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o10 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o10 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o10 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o10 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o10 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o10 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o10 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o10 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o10 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o10 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o10 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o10 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o10 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o10 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o10 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o10 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o10 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o10 c4o36)
)
)
)
)
(and
(g1 c4o11)
(or
(and
(g2 c4o1)
(not
(f c4o11 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o11 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o11 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o11 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o11 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o11 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o11 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o11 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o11 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o11 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o11 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o11 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o11 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o11 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o11 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o11 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o11 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o11 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o11 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o11 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o11 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o11 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o11 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o11 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o11 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o11 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o11 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o11 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o11 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o11 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o11 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o11 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o11 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o11 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o11 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o11 c4o36)
)
)
)
)
(and
(g1 c4o12)
(or
(and
(g2 c4o1)
(not
(f c4o12 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o12 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o12 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o12 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o12 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o12 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o12 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o12 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o12 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o12 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o12 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o12 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o12 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o12 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o12 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o12 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o12 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o12 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o12 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o12 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o12 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o12 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o12 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o12 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o12 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o12 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o12 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o12 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o12 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o12 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o12 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o12 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o12 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o12 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o12 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o12 c4o36)
)
)
)
)
(and
(g1 c4o13)
(or
(and
(g2 c4o1)
(not
(f c4o13 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o13 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o13 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o13 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o13 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o13 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o13 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o13 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o13 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o13 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o13 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o13 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o13 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o13 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o13 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o13 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o13 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o13 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o13 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o13 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o13 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o13 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o13 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o13 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o13 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o13 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o13 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o13 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o13 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o13 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o13 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o13 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o13 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o13 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o13 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o13 c4o36)
)
)
)
)
(and
(g1 c4o14)
(or
(and
(g2 c4o1)
(not
(f c4o14 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o14 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o14 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o14 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o14 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o14 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o14 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o14 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o14 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o14 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o14 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o14 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o14 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o14 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o14 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o14 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o14 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o14 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o14 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o14 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o14 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o14 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o14 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o14 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o14 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o14 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o14 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o14 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o14 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o14 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o14 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o14 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o14 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o14 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o14 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o14 c4o36)
)
)
)
)
(and
(g1 c4o15)
(or
(and
(g2 c4o1)
(not
(f c4o15 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o15 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o15 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o15 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o15 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o15 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o15 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o15 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o15 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o15 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o15 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o15 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o15 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o15 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o15 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o15 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o15 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o15 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o15 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o15 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o15 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o15 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o15 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o15 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o15 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o15 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o15 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o15 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o15 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o15 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o15 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o15 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o15 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o15 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o15 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o15 c4o36)
)
)
)
)
(and
(g1 c4o16)
(or
(and
(g2 c4o1)
(not
(f c4o16 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o16 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o16 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o16 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o16 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o16 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o16 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o16 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o16 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o16 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o16 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o16 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o16 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o16 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o16 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o16 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o16 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o16 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o16 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o16 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o16 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o16 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o16 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o16 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o16 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o16 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o16 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o16 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o16 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o16 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o16 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o16 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o16 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o16 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o16 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o16 c4o36)
)
)
)
)
(and
(g1 c4o17)
(or
(and
(g2 c4o1)
(not
(f c4o17 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o17 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o17 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o17 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o17 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o17 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o17 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o17 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o17 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o17 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o17 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o17 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o17 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o17 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o17 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o17 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o17 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o17 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o17 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o17 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o17 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o17 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o17 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o17 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o17 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o17 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o17 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o17 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o17 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o17 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o17 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o17 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o17 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o17 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o17 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o17 c4o36)
)
)
)
)
(and
(g1 c4o18)
(or
(and
(g2 c4o1)
(not
(f c4o18 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o18 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o18 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o18 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o18 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o18 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o18 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o18 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o18 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o18 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o18 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o18 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o18 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o18 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o18 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o18 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o18 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o18 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o18 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o18 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o18 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o18 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o18 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o18 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o18 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o18 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o18 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o18 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o18 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o18 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o18 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o18 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o18 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o18 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o18 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o18 c4o36)
)
)
)
)
(and
(g1 c4o19)
(or
(and
(g2 c4o1)
(not
(f c4o19 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o19 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o19 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o19 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o19 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o19 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o19 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o19 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o19 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o19 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o19 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o19 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o19 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o19 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o19 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o19 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o19 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o19 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o19 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o19 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o19 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o19 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o19 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o19 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o19 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o19 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o19 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o19 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o19 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o19 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o19 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o19 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o19 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o19 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o19 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o19 c4o36)
)
)
)
)
(and
(g1 c4o20)
(or
(and
(g2 c4o1)
(not
(f c4o20 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o20 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o20 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o20 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o20 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o20 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o20 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o20 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o20 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o20 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o20 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o20 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o20 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o20 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o20 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o20 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o20 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o20 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o20 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o20 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o20 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o20 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o20 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o20 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o20 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o20 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o20 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o20 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o20 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o20 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o20 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o20 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o20 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o20 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o20 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o20 c4o36)
)
)
)
)
(and
(g1 c4o21)
(or
(and
(g2 c4o1)
(not
(f c4o21 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o21 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o21 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o21 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o21 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o21 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o21 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o21 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o21 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o21 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o21 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o21 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o21 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o21 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o21 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o21 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o21 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o21 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o21 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o21 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o21 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o21 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o21 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o21 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o21 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o21 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o21 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o21 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o21 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o21 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o21 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o21 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o21 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o21 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o21 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o21 c4o36)
)
)
)
)
(and
(g1 c4o22)
(or
(and
(g2 c4o1)
(not
(f c4o22 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o22 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o22 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o22 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o22 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o22 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o22 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o22 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o22 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o22 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o22 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o22 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o22 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o22 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o22 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o22 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o22 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o22 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o22 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o22 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o22 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o22 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o22 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o22 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o22 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o22 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o22 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o22 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o22 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o22 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o22 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o22 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o22 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o22 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o22 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o22 c4o36)
)
)
)
)
(and
(g1 c4o23)
(or
(and
(g2 c4o1)
(not
(f c4o23 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o23 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o23 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o23 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o23 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o23 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o23 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o23 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o23 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o23 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o23 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o23 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o23 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o23 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o23 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o23 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o23 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o23 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o23 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o23 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o23 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o23 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o23 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o23 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o23 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o23 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o23 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o23 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o23 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o23 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o23 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o23 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o23 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o23 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o23 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o23 c4o36)
)
)
)
)
(and
(g1 c4o24)
(or
(and
(g2 c4o1)
(not
(f c4o24 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o24 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o24 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o24 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o24 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o24 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o24 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o24 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o24 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o24 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o24 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o24 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o24 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o24 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o24 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o24 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o24 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o24 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o24 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o24 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o24 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o24 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o24 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o24 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o24 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o24 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o24 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o24 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o24 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o24 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o24 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o24 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o24 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o24 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o24 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o24 c4o36)
)
)
)
)
(and
(g1 c4o25)
(or
(and
(g2 c4o1)
(not
(f c4o25 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o25 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o25 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o25 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o25 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o25 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o25 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o25 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o25 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o25 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o25 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o25 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o25 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o25 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o25 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o25 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o25 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o25 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o25 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o25 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o25 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o25 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o25 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o25 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o25 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o25 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o25 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o25 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o25 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o25 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o25 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o25 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o25 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o25 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o25 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o25 c4o36)
)
)
)
)
(and
(g1 c4o26)
(or
(and
(g2 c4o1)
(not
(f c4o26 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o26 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o26 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o26 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o26 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o26 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o26 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o26 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o26 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o26 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o26 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o26 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o26 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o26 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o26 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o26 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o26 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o26 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o26 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o26 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o26 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o26 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o26 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o26 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o26 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o26 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o26 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o26 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o26 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o26 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o26 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o26 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o26 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o26 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o26 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o26 c4o36)
)
)
)
)
(and
(g1 c4o27)
(or
(and
(g2 c4o1)
(not
(f c4o27 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o27 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o27 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o27 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o27 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o27 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o27 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o27 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o27 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o27 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o27 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o27 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o27 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o27 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o27 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o27 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o27 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o27 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o27 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o27 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o27 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o27 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o27 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o27 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o27 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o27 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o27 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o27 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o27 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o27 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o27 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o27 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o27 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o27 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o27 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o27 c4o36)
)
)
)
)
(and
(g1 c4o28)
(or
(and
(g2 c4o1)
(not
(f c4o28 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o28 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o28 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o28 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o28 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o28 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o28 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o28 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o28 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o28 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o28 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o28 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o28 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o28 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o28 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o28 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o28 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o28 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o28 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o28 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o28 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o28 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o28 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o28 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o28 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o28 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o28 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o28 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o28 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o28 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o28 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o28 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o28 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o28 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o28 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o28 c4o36)
)
)
)
)
(and
(g1 c4o29)
(or
(and
(g2 c4o1)
(not
(f c4o29 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o29 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o29 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o29 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o29 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o29 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o29 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o29 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o29 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o29 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o29 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o29 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o29 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o29 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o29 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o29 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o29 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o29 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o29 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o29 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o29 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o29 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o29 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o29 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o29 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o29 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o29 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o29 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o29 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o29 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o29 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o29 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o29 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o29 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o29 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o29 c4o36)
)
)
)
)
(and
(g1 c4o30)
(or
(and
(g2 c4o1)
(not
(f c4o30 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o30 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o30 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o30 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o30 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o30 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o30 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o30 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o30 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o30 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o30 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o30 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o30 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o30 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o30 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o30 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o30 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o30 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o30 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o30 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o30 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o30 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o30 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o30 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o30 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o30 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o30 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o30 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o30 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o30 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o30 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o30 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o30 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o30 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o30 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o30 c4o36)
)
)
)
)
(and
(g1 c4o31)
(or
(and
(g2 c4o1)
(not
(f c4o31 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o31 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o31 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o31 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o31 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o31 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o31 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o31 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o31 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o31 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o31 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o31 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o31 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o31 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o31 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o31 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o31 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o31 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o31 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o31 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o31 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o31 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o31 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o31 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o31 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o31 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o31 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o31 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o31 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o31 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o31 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o31 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o31 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o31 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o31 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o31 c4o36)
)
)
)
)
(and
(g1 c4o32)
(or
(and
(g2 c4o1)
(not
(f c4o32 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o32 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o32 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o32 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o32 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o32 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o32 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o32 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o32 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o32 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o32 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o32 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o32 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o32 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o32 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o32 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o32 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o32 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o32 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o32 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o32 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o32 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o32 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o32 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o32 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o32 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o32 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o32 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o32 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o32 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o32 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o32 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o32 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o32 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o32 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o32 c4o36)
)
)
)
)
(and
(g1 c4o33)
(or
(and
(g2 c4o1)
(not
(f c4o33 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o33 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o33 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o33 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o33 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o33 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o33 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o33 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o33 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o33 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o33 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o33 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o33 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o33 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o33 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o33 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o33 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o33 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o33 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o33 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o33 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o33 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o33 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o33 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o33 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o33 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o33 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o33 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o33 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o33 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o33 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o33 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o33 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o33 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o33 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o33 c4o36)
)
)
)
)
(and
(g1 c4o34)
(or
(and
(g2 c4o1)
(not
(f c4o34 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o34 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o34 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o34 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o34 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o34 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o34 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o34 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o34 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o34 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o34 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o34 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o34 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o34 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o34 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o34 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o34 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o34 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o34 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o34 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o34 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o34 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o34 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o34 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o34 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o34 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o34 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o34 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o34 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o34 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o34 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o34 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o34 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o34 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o34 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o34 c4o36)
)
)
)
)
(and
(g1 c4o35)
(or
(and
(g2 c4o1)
(not
(f c4o35 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o35 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o35 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o35 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o35 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o35 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o35 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o35 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o35 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o35 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o35 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o35 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o35 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o35 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o35 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o35 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o35 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o35 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o35 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o35 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o35 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o35 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o35 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o35 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o35 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o35 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o35 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o35 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o35 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o35 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o35 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o35 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o35 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o35 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o35 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o35 c4o36)
)
)
)
)
(and
(g1 c4o36)
(or
(and
(g2 c4o1)
(not
(f c4o36 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o36 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o36 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o36 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o36 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o36 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o36 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o36 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o36 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o36 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o36 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o36 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o36 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o36 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o36 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o36 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o36 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o36 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o36 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o36 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o36 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o36 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o36 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o36 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o36 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o36 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o36 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o36 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o36 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o36 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o36 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o36 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o36 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o36 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o36 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o36 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o1 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o1 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o1 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o1 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o1 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o1 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o1 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o1 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o1 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o1 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o1 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o1 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o1 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o1 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o1 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o1 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o1 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o1 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o1 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o1 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o1 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o1 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o1 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o1 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o1 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o1 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o1 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o2 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o2 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o2 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o2 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o2 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o2 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o2 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o2 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o2 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o2 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o2 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o2 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o2 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o2 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o2 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o2 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o2 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o2 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o2 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o2 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o2 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o2 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o2 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o2 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o2 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o2 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o2 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o3 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o3 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o3 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o3 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o3 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o3 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o3 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o3 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o3 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o3 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o3 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o3 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o3 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o3 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o3 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o3 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o3 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o3 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o3 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o3 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o3 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o3 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o3 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o3 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o3 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o3 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o3 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o4 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o4 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o4 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o4 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o4 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o4 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o4 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o4 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o4 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o4 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o4 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o4 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o4 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o4 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o4 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o4 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o4 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o4 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o4 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o4 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o4 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o4 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o4 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o4 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o4 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o4 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o4 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o5 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o5 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o5 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o5 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o5 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o5 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o5 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o5 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o5 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o5 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o5 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o5 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o5 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o5 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o5 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o5 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o5 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o5 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o5 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o5 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o5 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o5 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o5 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o5 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o5 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o5 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o5 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o6 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o6 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o6 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o6 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o6 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o6 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o6 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o6 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o6 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o6 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o6 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o6 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o6 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o6 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o6 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o6 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o6 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o6 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o6 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o6 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o6 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o6 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o6 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o6 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o6 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o6 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o6 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o7 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o7 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o7 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o7 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o7 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o7 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o7 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o7 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o7 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o7 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o7 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o7 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o7 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o7 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o7 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o7 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o7 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o7 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o7 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o7 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o7 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o7 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o7 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o7 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o7 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o7 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o7 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o8 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o8 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o8 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o8 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o8 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o8 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o8 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o8 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o8 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o8 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o8 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o8 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o8 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o8 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o8 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o8 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o8 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o8 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o8 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o8 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o8 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o8 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o8 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o8 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o8 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o8 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o8 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o9 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o9 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o9 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o9 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o9 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o9 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o9 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o9 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o9 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o9 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o9 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o9 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o9 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o9 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o9 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o9 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o9 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o9 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o9 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o9 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o9 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o9 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o9 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o9 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o9 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o9 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o9 c4o36)
)
)
)
)
(and
(g1 c4o10)
(and
(=>
(g2 c4o1)
(not
(f c4o10 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o10 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o10 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o10 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o10 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o10 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o10 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o10 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o10 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o10 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o10 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o10 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o10 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o10 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o10 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o10 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o10 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o10 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o10 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o10 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o10 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o10 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o10 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o10 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o10 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o10 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o10 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o10 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o10 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o10 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o10 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o10 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o10 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o10 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o10 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o10 c4o36)
)
)
)
)
(and
(g1 c4o11)
(and
(=>
(g2 c4o1)
(not
(f c4o11 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o11 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o11 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o11 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o11 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o11 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o11 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o11 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o11 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o11 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o11 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o11 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o11 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o11 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o11 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o11 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o11 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o11 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o11 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o11 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o11 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o11 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o11 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o11 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o11 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o11 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o11 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o11 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o11 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o11 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o11 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o11 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o11 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o11 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o11 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o11 c4o36)
)
)
)
)
(and
(g1 c4o12)
(and
(=>
(g2 c4o1)
(not
(f c4o12 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o12 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o12 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o12 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o12 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o12 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o12 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o12 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o12 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o12 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o12 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o12 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o12 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o12 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o12 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o12 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o12 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o12 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o12 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o12 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o12 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o12 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o12 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o12 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o12 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o12 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o12 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o12 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o12 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o12 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o12 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o12 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o12 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o12 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o12 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o12 c4o36)
)
)
)
)
(and
(g1 c4o13)
(and
(=>
(g2 c4o1)
(not
(f c4o13 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o13 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o13 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o13 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o13 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o13 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o13 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o13 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o13 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o13 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o13 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o13 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o13 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o13 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o13 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o13 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o13 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o13 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o13 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o13 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o13 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o13 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o13 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o13 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o13 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o13 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o13 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o13 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o13 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o13 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o13 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o13 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o13 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o13 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o13 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o13 c4o36)
)
)
)
)
(and
(g1 c4o14)
(and
(=>
(g2 c4o1)
(not
(f c4o14 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o14 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o14 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o14 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o14 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o14 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o14 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o14 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o14 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o14 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o14 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o14 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o14 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o14 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o14 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o14 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o14 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o14 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o14 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o14 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o14 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o14 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o14 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o14 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o14 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o14 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o14 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o14 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o14 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o14 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o14 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o14 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o14 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o14 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o14 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o14 c4o36)
)
)
)
)
(and
(g1 c4o15)
(and
(=>
(g2 c4o1)
(not
(f c4o15 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o15 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o15 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o15 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o15 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o15 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o15 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o15 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o15 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o15 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o15 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o15 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o15 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o15 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o15 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o15 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o15 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o15 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o15 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o15 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o15 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o15 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o15 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o15 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o15 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o15 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o15 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o15 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o15 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o15 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o15 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o15 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o15 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o15 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o15 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o15 c4o36)
)
)
)
)
(and
(g1 c4o16)
(and
(=>
(g2 c4o1)
(not
(f c4o16 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o16 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o16 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o16 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o16 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o16 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o16 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o16 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o16 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o16 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o16 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o16 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o16 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o16 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o16 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o16 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o16 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o16 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o16 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o16 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o16 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o16 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o16 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o16 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o16 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o16 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o16 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o16 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o16 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o16 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o16 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o16 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o16 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o16 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o16 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o16 c4o36)
)
)
)
)
(and
(g1 c4o17)
(and
(=>
(g2 c4o1)
(not
(f c4o17 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o17 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o17 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o17 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o17 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o17 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o17 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o17 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o17 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o17 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o17 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o17 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o17 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o17 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o17 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o17 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o17 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o17 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o17 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o17 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o17 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o17 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o17 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o17 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o17 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o17 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o17 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o17 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o17 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o17 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o17 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o17 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o17 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o17 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o17 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o17 c4o36)
)
)
)
)
(and
(g1 c4o18)
(and
(=>
(g2 c4o1)
(not
(f c4o18 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o18 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o18 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o18 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o18 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o18 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o18 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o18 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o18 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o18 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o18 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o18 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o18 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o18 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o18 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o18 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o18 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o18 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o18 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o18 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o18 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o18 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o18 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o18 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o18 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o18 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o18 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o18 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o18 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o18 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o18 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o18 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o18 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o18 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o18 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o18 c4o36)
)
)
)
)
(and
(g1 c4o19)
(and
(=>
(g2 c4o1)
(not
(f c4o19 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o19 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o19 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o19 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o19 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o19 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o19 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o19 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o19 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o19 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o19 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o19 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o19 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o19 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o19 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o19 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o19 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o19 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o19 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o19 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o19 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o19 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o19 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o19 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o19 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o19 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o19 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o19 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o19 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o19 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o19 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o19 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o19 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o19 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o19 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o19 c4o36)
)
)
)
)
(and
(g1 c4o20)
(and
(=>
(g2 c4o1)
(not
(f c4o20 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o20 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o20 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o20 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o20 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o20 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o20 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o20 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o20 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o20 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o20 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o20 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o20 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o20 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o20 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o20 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o20 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o20 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o20 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o20 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o20 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o20 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o20 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o20 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o20 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o20 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o20 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o20 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o20 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o20 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o20 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o20 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o20 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o20 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o20 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o20 c4o36)
)
)
)
)
(and
(g1 c4o21)
(and
(=>
(g2 c4o1)
(not
(f c4o21 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o21 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o21 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o21 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o21 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o21 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o21 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o21 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o21 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o21 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o21 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o21 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o21 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o21 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o21 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o21 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o21 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o21 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o21 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o21 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o21 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o21 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o21 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o21 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o21 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o21 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o21 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o21 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o21 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o21 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o21 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o21 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o21 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o21 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o21 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o21 c4o36)
)
)
)
)
(and
(g1 c4o22)
(and
(=>
(g2 c4o1)
(not
(f c4o22 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o22 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o22 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o22 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o22 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o22 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o22 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o22 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o22 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o22 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o22 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o22 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o22 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o22 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o22 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o22 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o22 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o22 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o22 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o22 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o22 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o22 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o22 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o22 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o22 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o22 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o22 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o22 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o22 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o22 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o22 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o22 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o22 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o22 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o22 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o22 c4o36)
)
)
)
)
(and
(g1 c4o23)
(and
(=>
(g2 c4o1)
(not
(f c4o23 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o23 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o23 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o23 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o23 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o23 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o23 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o23 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o23 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o23 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o23 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o23 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o23 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o23 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o23 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o23 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o23 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o23 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o23 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o23 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o23 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o23 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o23 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o23 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o23 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o23 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o23 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o23 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o23 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o23 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o23 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o23 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o23 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o23 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o23 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o23 c4o36)
)
)
)
)
(and
(g1 c4o24)
(and
(=>
(g2 c4o1)
(not
(f c4o24 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o24 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o24 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o24 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o24 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o24 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o24 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o24 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o24 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o24 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o24 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o24 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o24 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o24 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o24 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o24 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o24 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o24 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o24 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o24 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o24 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o24 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o24 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o24 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o24 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o24 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o24 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o24 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o24 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o24 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o24 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o24 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o24 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o24 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o24 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o24 c4o36)
)
)
)
)
(and
(g1 c4o25)
(and
(=>
(g2 c4o1)
(not
(f c4o25 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o25 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o25 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o25 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o25 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o25 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o25 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o25 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o25 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o25 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o25 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o25 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o25 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o25 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o25 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o25 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o25 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o25 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o25 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o25 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o25 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o25 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o25 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o25 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o25 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o25 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o25 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o25 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o25 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o25 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o25 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o25 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o25 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o25 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o25 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o25 c4o36)
)
)
)
)
(and
(g1 c4o26)
(and
(=>
(g2 c4o1)
(not
(f c4o26 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o26 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o26 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o26 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o26 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o26 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o26 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o26 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o26 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o26 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o26 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o26 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o26 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o26 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o26 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o26 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o26 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o26 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o26 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o26 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o26 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o26 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o26 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o26 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o26 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o26 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o26 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o26 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o26 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o26 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o26 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o26 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o26 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o26 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o26 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o26 c4o36)
)
)
)
)
(and
(g1 c4o27)
(and
(=>
(g2 c4o1)
(not
(f c4o27 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o27 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o27 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o27 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o27 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o27 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o27 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o27 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o27 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o27 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o27 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o27 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o27 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o27 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o27 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o27 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o27 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o27 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o27 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o27 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o27 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o27 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o27 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o27 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o27 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o27 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o27 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o27 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o27 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o27 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o27 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o27 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o27 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o27 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o27 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o27 c4o36)
)
)
)
)
(and
(g1 c4o28)
(and
(=>
(g2 c4o1)
(not
(f c4o28 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o28 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o28 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o28 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o28 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o28 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o28 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o28 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o28 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o28 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o28 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o28 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o28 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o28 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o28 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o28 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o28 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o28 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o28 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o28 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o28 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o28 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o28 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o28 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o28 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o28 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o28 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o28 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o28 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o28 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o28 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o28 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o28 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o28 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o28 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o28 c4o36)
)
)
)
)
(and
(g1 c4o29)
(and
(=>
(g2 c4o1)
(not
(f c4o29 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o29 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o29 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o29 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o29 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o29 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o29 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o29 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o29 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o29 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o29 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o29 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o29 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o29 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o29 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o29 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o29 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o29 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o29 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o29 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o29 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o29 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o29 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o29 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o29 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o29 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o29 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o29 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o29 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o29 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o29 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o29 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o29 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o29 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o29 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o29 c4o36)
)
)
)
)
(and
(g1 c4o30)
(and
(=>
(g2 c4o1)
(not
(f c4o30 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o30 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o30 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o30 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o30 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o30 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o30 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o30 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o30 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o30 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o30 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o30 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o30 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o30 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o30 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o30 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o30 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o30 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o30 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o30 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o30 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o30 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o30 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o30 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o30 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o30 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o30 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o30 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o30 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o30 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o30 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o30 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o30 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o30 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o30 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o30 c4o36)
)
)
)
)
(and
(g1 c4o31)
(and
(=>
(g2 c4o1)
(not
(f c4o31 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o31 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o31 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o31 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o31 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o31 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o31 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o31 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o31 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o31 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o31 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o31 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o31 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o31 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o31 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o31 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o31 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o31 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o31 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o31 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o31 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o31 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o31 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o31 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o31 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o31 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o31 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o31 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o31 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o31 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o31 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o31 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o31 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o31 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o31 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o31 c4o36)
)
)
)
)
(and
(g1 c4o32)
(and
(=>
(g2 c4o1)
(not
(f c4o32 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o32 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o32 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o32 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o32 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o32 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o32 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o32 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o32 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o32 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o32 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o32 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o32 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o32 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o32 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o32 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o32 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o32 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o32 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o32 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o32 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o32 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o32 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o32 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o32 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o32 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o32 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o32 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o32 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o32 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o32 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o32 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o32 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o32 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o32 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o32 c4o36)
)
)
)
)
(and
(g1 c4o33)
(and
(=>
(g2 c4o1)
(not
(f c4o33 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o33 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o33 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o33 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o33 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o33 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o33 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o33 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o33 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o33 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o33 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o33 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o33 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o33 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o33 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o33 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o33 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o33 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o33 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o33 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o33 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o33 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o33 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o33 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o33 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o33 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o33 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o33 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o33 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o33 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o33 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o33 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o33 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o33 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o33 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o33 c4o36)
)
)
)
)
(and
(g1 c4o34)
(and
(=>
(g2 c4o1)
(not
(f c4o34 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o34 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o34 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o34 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o34 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o34 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o34 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o34 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o34 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o34 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o34 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o34 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o34 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o34 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o34 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o34 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o34 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o34 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o34 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o34 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o34 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o34 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o34 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o34 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o34 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o34 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o34 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o34 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o34 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o34 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o34 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o34 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o34 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o34 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o34 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o34 c4o36)
)
)
)
)
(and
(g1 c4o35)
(and
(=>
(g2 c4o1)
(not
(f c4o35 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o35 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o35 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o35 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o35 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o35 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o35 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o35 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o35 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o35 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o35 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o35 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o35 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o35 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o35 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o35 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o35 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o35 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o35 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o35 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o35 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o35 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o35 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o35 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o35 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o35 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o35 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o35 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o35 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o35 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o35 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o35 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o35 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o35 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o35 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o35 c4o36)
)
)
)
)
(and
(g1 c4o36)
(and
(=>
(g2 c4o1)
(not
(f c4o36 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o36 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o36 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o36 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o36 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o36 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o36 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o36 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o36 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o36 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o36 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o36 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o36 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o36 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o36 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o36 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o36 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o36 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o36 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o36 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o36 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o36 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o36 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o36 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o36 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o36 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o36 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o36 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o36 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o36 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o36 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o36 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o36 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o36 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o36 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o36 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o1 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o1 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o1 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o1 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o1 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o1 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o1 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o1 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o1 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o1 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o1 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o1 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o1 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o1 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o1 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o1 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o1 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o1 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o1 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o1 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o1 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o1 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o1 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o1 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o1 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o1 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o1 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o2 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o2 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o2 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o2 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o2 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o2 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o2 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o2 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o2 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o2 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o2 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o2 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o2 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o2 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o2 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o2 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o2 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o2 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o2 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o2 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o2 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o2 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o2 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o2 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o2 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o2 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o2 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o3 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o3 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o3 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o3 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o3 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o3 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o3 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o3 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o3 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o3 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o3 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o3 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o3 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o3 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o3 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o3 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o3 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o3 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o3 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o3 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o3 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o3 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o3 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o3 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o3 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o3 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o3 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o4 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o4 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o4 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o4 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o4 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o4 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o4 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o4 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o4 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o4 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o4 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o4 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o4 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o4 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o4 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o4 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o4 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o4 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o4 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o4 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o4 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o4 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o4 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o4 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o4 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o4 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o4 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o5 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o5 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o5 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o5 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o5 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o5 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o5 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o5 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o5 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o5 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o5 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o5 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o5 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o5 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o5 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o5 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o5 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o5 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o5 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o5 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o5 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o5 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o5 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o5 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o5 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o5 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o5 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o6 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o6 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o6 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o6 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o6 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o6 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o6 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o6 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o6 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o6 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o6 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o6 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o6 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o6 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o6 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o6 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o6 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o6 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o6 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o6 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o6 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o6 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o6 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o6 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o6 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o6 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o6 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o7 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o7 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o7 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o7 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o7 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o7 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o7 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o7 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o7 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o7 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o7 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o7 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o7 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o7 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o7 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o7 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o7 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o7 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o7 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o7 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o7 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o7 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o7 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o7 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o7 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o7 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o7 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o8 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o8 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o8 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o8 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o8 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o8 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o8 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o8 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o8 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o8 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o8 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o8 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o8 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o8 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o8 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o8 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o8 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o8 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o8 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o8 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o8 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o8 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o8 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o8 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o8 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o8 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o8 c4o36)
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
(and
(g2 c4o10)
(not
(f c4o9 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o9 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o9 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o9 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o9 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o9 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o9 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o9 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o9 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o9 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o9 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o9 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o9 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o9 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o9 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o9 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o9 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o9 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o9 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o9 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o9 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o9 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o9 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o9 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o9 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o9 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o9 c4o36)
)
)
)
)
(=>
(g1 c4o10)
(or
(and
(g2 c4o1)
(not
(f c4o10 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o10 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o10 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o10 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o10 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o10 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o10 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o10 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o10 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o10 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o10 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o10 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o10 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o10 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o10 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o10 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o10 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o10 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o10 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o10 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o10 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o10 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o10 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o10 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o10 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o10 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o10 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o10 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o10 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o10 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o10 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o10 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o10 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o10 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o10 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o10 c4o36)
)
)
)
)
(=>
(g1 c4o11)
(or
(and
(g2 c4o1)
(not
(f c4o11 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o11 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o11 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o11 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o11 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o11 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o11 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o11 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o11 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o11 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o11 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o11 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o11 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o11 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o11 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o11 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o11 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o11 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o11 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o11 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o11 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o11 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o11 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o11 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o11 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o11 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o11 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o11 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o11 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o11 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o11 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o11 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o11 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o11 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o11 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o11 c4o36)
)
)
)
)
(=>
(g1 c4o12)
(or
(and
(g2 c4o1)
(not
(f c4o12 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o12 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o12 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o12 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o12 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o12 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o12 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o12 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o12 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o12 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o12 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o12 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o12 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o12 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o12 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o12 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o12 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o12 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o12 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o12 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o12 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o12 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o12 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o12 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o12 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o12 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o12 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o12 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o12 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o12 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o12 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o12 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o12 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o12 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o12 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o12 c4o36)
)
)
)
)
(=>
(g1 c4o13)
(or
(and
(g2 c4o1)
(not
(f c4o13 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o13 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o13 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o13 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o13 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o13 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o13 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o13 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o13 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o13 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o13 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o13 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o13 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o13 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o13 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o13 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o13 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o13 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o13 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o13 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o13 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o13 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o13 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o13 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o13 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o13 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o13 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o13 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o13 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o13 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o13 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o13 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o13 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o13 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o13 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o13 c4o36)
)
)
)
)
(=>
(g1 c4o14)
(or
(and
(g2 c4o1)
(not
(f c4o14 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o14 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o14 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o14 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o14 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o14 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o14 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o14 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o14 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o14 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o14 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o14 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o14 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o14 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o14 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o14 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o14 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o14 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o14 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o14 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o14 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o14 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o14 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o14 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o14 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o14 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o14 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o14 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o14 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o14 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o14 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o14 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o14 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o14 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o14 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o14 c4o36)
)
)
)
)
(=>
(g1 c4o15)
(or
(and
(g2 c4o1)
(not
(f c4o15 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o15 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o15 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o15 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o15 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o15 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o15 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o15 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o15 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o15 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o15 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o15 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o15 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o15 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o15 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o15 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o15 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o15 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o15 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o15 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o15 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o15 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o15 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o15 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o15 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o15 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o15 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o15 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o15 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o15 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o15 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o15 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o15 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o15 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o15 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o15 c4o36)
)
)
)
)
(=>
(g1 c4o16)
(or
(and
(g2 c4o1)
(not
(f c4o16 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o16 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o16 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o16 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o16 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o16 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o16 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o16 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o16 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o16 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o16 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o16 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o16 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o16 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o16 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o16 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o16 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o16 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o16 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o16 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o16 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o16 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o16 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o16 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o16 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o16 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o16 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o16 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o16 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o16 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o16 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o16 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o16 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o16 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o16 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o16 c4o36)
)
)
)
)
(=>
(g1 c4o17)
(or
(and
(g2 c4o1)
(not
(f c4o17 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o17 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o17 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o17 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o17 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o17 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o17 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o17 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o17 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o17 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o17 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o17 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o17 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o17 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o17 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o17 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o17 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o17 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o17 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o17 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o17 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o17 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o17 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o17 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o17 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o17 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o17 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o17 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o17 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o17 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o17 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o17 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o17 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o17 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o17 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o17 c4o36)
)
)
)
)
(=>
(g1 c4o18)
(or
(and
(g2 c4o1)
(not
(f c4o18 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o18 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o18 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o18 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o18 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o18 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o18 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o18 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o18 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o18 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o18 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o18 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o18 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o18 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o18 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o18 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o18 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o18 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o18 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o18 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o18 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o18 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o18 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o18 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o18 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o18 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o18 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o18 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o18 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o18 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o18 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o18 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o18 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o18 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o18 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o18 c4o36)
)
)
)
)
(=>
(g1 c4o19)
(or
(and
(g2 c4o1)
(not
(f c4o19 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o19 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o19 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o19 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o19 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o19 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o19 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o19 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o19 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o19 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o19 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o19 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o19 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o19 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o19 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o19 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o19 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o19 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o19 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o19 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o19 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o19 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o19 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o19 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o19 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o19 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o19 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o19 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o19 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o19 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o19 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o19 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o19 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o19 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o19 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o19 c4o36)
)
)
)
)
(=>
(g1 c4o20)
(or
(and
(g2 c4o1)
(not
(f c4o20 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o20 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o20 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o20 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o20 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o20 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o20 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o20 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o20 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o20 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o20 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o20 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o20 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o20 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o20 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o20 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o20 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o20 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o20 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o20 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o20 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o20 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o20 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o20 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o20 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o20 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o20 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o20 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o20 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o20 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o20 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o20 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o20 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o20 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o20 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o20 c4o36)
)
)
)
)
(=>
(g1 c4o21)
(or
(and
(g2 c4o1)
(not
(f c4o21 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o21 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o21 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o21 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o21 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o21 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o21 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o21 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o21 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o21 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o21 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o21 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o21 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o21 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o21 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o21 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o21 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o21 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o21 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o21 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o21 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o21 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o21 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o21 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o21 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o21 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o21 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o21 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o21 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o21 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o21 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o21 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o21 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o21 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o21 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o21 c4o36)
)
)
)
)
(=>
(g1 c4o22)
(or
(and
(g2 c4o1)
(not
(f c4o22 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o22 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o22 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o22 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o22 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o22 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o22 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o22 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o22 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o22 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o22 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o22 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o22 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o22 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o22 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o22 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o22 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o22 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o22 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o22 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o22 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o22 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o22 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o22 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o22 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o22 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o22 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o22 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o22 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o22 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o22 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o22 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o22 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o22 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o22 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o22 c4o36)
)
)
)
)
(=>
(g1 c4o23)
(or
(and
(g2 c4o1)
(not
(f c4o23 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o23 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o23 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o23 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o23 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o23 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o23 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o23 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o23 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o23 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o23 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o23 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o23 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o23 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o23 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o23 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o23 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o23 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o23 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o23 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o23 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o23 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o23 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o23 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o23 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o23 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o23 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o23 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o23 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o23 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o23 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o23 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o23 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o23 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o23 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o23 c4o36)
)
)
)
)
(=>
(g1 c4o24)
(or
(and
(g2 c4o1)
(not
(f c4o24 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o24 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o24 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o24 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o24 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o24 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o24 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o24 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o24 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o24 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o24 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o24 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o24 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o24 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o24 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o24 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o24 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o24 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o24 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o24 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o24 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o24 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o24 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o24 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o24 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o24 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o24 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o24 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o24 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o24 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o24 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o24 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o24 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o24 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o24 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o24 c4o36)
)
)
)
)
(=>
(g1 c4o25)
(or
(and
(g2 c4o1)
(not
(f c4o25 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o25 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o25 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o25 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o25 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o25 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o25 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o25 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o25 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o25 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o25 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o25 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o25 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o25 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o25 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o25 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o25 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o25 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o25 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o25 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o25 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o25 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o25 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o25 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o25 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o25 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o25 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o25 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o25 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o25 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o25 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o25 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o25 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o25 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o25 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o25 c4o36)
)
)
)
)
(=>
(g1 c4o26)
(or
(and
(g2 c4o1)
(not
(f c4o26 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o26 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o26 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o26 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o26 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o26 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o26 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o26 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o26 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o26 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o26 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o26 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o26 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o26 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o26 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o26 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o26 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o26 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o26 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o26 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o26 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o26 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o26 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o26 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o26 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o26 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o26 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o26 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o26 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o26 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o26 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o26 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o26 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o26 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o26 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o26 c4o36)
)
)
)
)
(=>
(g1 c4o27)
(or
(and
(g2 c4o1)
(not
(f c4o27 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o27 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o27 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o27 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o27 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o27 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o27 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o27 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o27 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o27 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o27 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o27 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o27 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o27 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o27 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o27 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o27 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o27 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o27 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o27 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o27 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o27 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o27 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o27 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o27 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o27 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o27 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o27 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o27 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o27 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o27 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o27 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o27 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o27 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o27 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o27 c4o36)
)
)
)
)
(=>
(g1 c4o28)
(or
(and
(g2 c4o1)
(not
(f c4o28 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o28 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o28 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o28 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o28 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o28 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o28 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o28 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o28 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o28 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o28 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o28 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o28 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o28 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o28 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o28 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o28 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o28 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o28 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o28 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o28 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o28 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o28 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o28 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o28 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o28 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o28 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o28 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o28 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o28 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o28 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o28 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o28 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o28 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o28 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o28 c4o36)
)
)
)
)
(=>
(g1 c4o29)
(or
(and
(g2 c4o1)
(not
(f c4o29 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o29 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o29 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o29 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o29 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o29 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o29 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o29 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o29 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o29 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o29 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o29 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o29 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o29 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o29 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o29 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o29 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o29 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o29 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o29 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o29 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o29 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o29 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o29 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o29 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o29 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o29 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o29 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o29 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o29 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o29 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o29 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o29 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o29 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o29 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o29 c4o36)
)
)
)
)
(=>
(g1 c4o30)
(or
(and
(g2 c4o1)
(not
(f c4o30 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o30 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o30 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o30 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o30 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o30 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o30 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o30 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o30 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o30 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o30 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o30 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o30 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o30 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o30 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o30 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o30 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o30 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o30 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o30 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o30 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o30 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o30 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o30 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o30 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o30 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o30 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o30 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o30 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o30 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o30 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o30 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o30 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o30 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o30 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o30 c4o36)
)
)
)
)
(=>
(g1 c4o31)
(or
(and
(g2 c4o1)
(not
(f c4o31 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o31 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o31 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o31 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o31 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o31 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o31 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o31 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o31 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o31 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o31 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o31 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o31 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o31 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o31 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o31 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o31 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o31 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o31 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o31 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o31 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o31 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o31 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o31 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o31 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o31 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o31 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o31 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o31 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o31 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o31 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o31 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o31 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o31 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o31 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o31 c4o36)
)
)
)
)
(=>
(g1 c4o32)
(or
(and
(g2 c4o1)
(not
(f c4o32 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o32 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o32 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o32 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o32 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o32 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o32 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o32 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o32 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o32 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o32 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o32 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o32 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o32 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o32 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o32 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o32 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o32 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o32 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o32 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o32 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o32 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o32 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o32 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o32 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o32 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o32 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o32 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o32 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o32 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o32 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o32 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o32 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o32 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o32 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o32 c4o36)
)
)
)
)
(=>
(g1 c4o33)
(or
(and
(g2 c4o1)
(not
(f c4o33 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o33 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o33 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o33 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o33 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o33 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o33 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o33 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o33 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o33 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o33 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o33 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o33 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o33 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o33 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o33 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o33 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o33 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o33 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o33 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o33 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o33 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o33 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o33 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o33 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o33 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o33 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o33 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o33 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o33 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o33 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o33 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o33 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o33 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o33 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o33 c4o36)
)
)
)
)
(=>
(g1 c4o34)
(or
(and
(g2 c4o1)
(not
(f c4o34 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o34 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o34 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o34 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o34 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o34 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o34 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o34 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o34 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o34 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o34 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o34 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o34 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o34 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o34 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o34 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o34 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o34 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o34 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o34 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o34 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o34 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o34 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o34 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o34 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o34 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o34 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o34 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o34 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o34 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o34 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o34 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o34 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o34 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o34 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o34 c4o36)
)
)
)
)
(=>
(g1 c4o35)
(or
(and
(g2 c4o1)
(not
(f c4o35 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o35 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o35 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o35 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o35 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o35 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o35 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o35 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o35 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o35 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o35 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o35 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o35 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o35 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o35 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o35 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o35 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o35 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o35 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o35 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o35 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o35 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o35 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o35 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o35 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o35 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o35 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o35 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o35 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o35 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o35 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o35 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o35 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o35 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o35 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o35 c4o36)
)
)
)
)
(=>
(g1 c4o36)
(or
(and
(g2 c4o1)
(not
(f c4o36 c4o1)
)
)
(and
(g2 c4o2)
(not
(f c4o36 c4o2)
)
)
(and
(g2 c4o3)
(not
(f c4o36 c4o3)
)
)
(and
(g2 c4o4)
(not
(f c4o36 c4o4)
)
)
(and
(g2 c4o5)
(not
(f c4o36 c4o5)
)
)
(and
(g2 c4o6)
(not
(f c4o36 c4o6)
)
)
(and
(g2 c4o7)
(not
(f c4o36 c4o7)
)
)
(and
(g2 c4o8)
(not
(f c4o36 c4o8)
)
)
(and
(g2 c4o9)
(not
(f c4o36 c4o9)
)
)
(and
(g2 c4o10)
(not
(f c4o36 c4o10)
)
)
(and
(g2 c4o11)
(not
(f c4o36 c4o11)
)
)
(and
(g2 c4o12)
(not
(f c4o36 c4o12)
)
)
(and
(g2 c4o13)
(not
(f c4o36 c4o13)
)
)
(and
(g2 c4o14)
(not
(f c4o36 c4o14)
)
)
(and
(g2 c4o15)
(not
(f c4o36 c4o15)
)
)
(and
(g2 c4o16)
(not
(f c4o36 c4o16)
)
)
(and
(g2 c4o17)
(not
(f c4o36 c4o17)
)
)
(and
(g2 c4o18)
(not
(f c4o36 c4o18)
)
)
(and
(g2 c4o19)
(not
(f c4o36 c4o19)
)
)
(and
(g2 c4o20)
(not
(f c4o36 c4o20)
)
)
(and
(g2 c4o21)
(not
(f c4o36 c4o21)
)
)
(and
(g2 c4o22)
(not
(f c4o36 c4o22)
)
)
(and
(g2 c4o23)
(not
(f c4o36 c4o23)
)
)
(and
(g2 c4o24)
(not
(f c4o36 c4o24)
)
)
(and
(g2 c4o25)
(not
(f c4o36 c4o25)
)
)
(and
(g2 c4o26)
(not
(f c4o36 c4o26)
)
)
(and
(g2 c4o27)
(not
(f c4o36 c4o27)
)
)
(and
(g2 c4o28)
(not
(f c4o36 c4o28)
)
)
(and
(g2 c4o29)
(not
(f c4o36 c4o29)
)
)
(and
(g2 c4o30)
(not
(f c4o36 c4o30)
)
)
(and
(g2 c4o31)
(not
(f c4o36 c4o31)
)
)
(and
(g2 c4o32)
(not
(f c4o36 c4o32)
)
)
(and
(g2 c4o33)
(not
(f c4o36 c4o33)
)
)
(and
(g2 c4o34)
(not
(f c4o36 c4o34)
)
)
(and
(g2 c4o35)
(not
(f c4o36 c4o35)
)
)
(and
(g2 c4o36)
(not
(f c4o36 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o1 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o1 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o1 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o1 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o1 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o1 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o1 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o1 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o1 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o1 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o1 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o1 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o1 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o1 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o1 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o1 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o1 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o1 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o1 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o1 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o1 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o1 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o1 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o1 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o1 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o1 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o1 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o2 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o2 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o2 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o2 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o2 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o2 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o2 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o2 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o2 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o2 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o2 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o2 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o2 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o2 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o2 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o2 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o2 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o2 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o2 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o2 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o2 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o2 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o2 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o2 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o2 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o2 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o2 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o3 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o3 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o3 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o3 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o3 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o3 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o3 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o3 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o3 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o3 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o3 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o3 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o3 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o3 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o3 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o3 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o3 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o3 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o3 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o3 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o3 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o3 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o3 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o3 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o3 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o3 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o3 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o4 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o4 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o4 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o4 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o4 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o4 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o4 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o4 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o4 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o4 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o4 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o4 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o4 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o4 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o4 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o4 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o4 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o4 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o4 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o4 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o4 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o4 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o4 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o4 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o4 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o4 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o4 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o5 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o5 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o5 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o5 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o5 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o5 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o5 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o5 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o5 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o5 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o5 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o5 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o5 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o5 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o5 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o5 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o5 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o5 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o5 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o5 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o5 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o5 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o5 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o5 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o5 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o5 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o5 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o6 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o6 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o6 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o6 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o6 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o6 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o6 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o6 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o6 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o6 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o6 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o6 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o6 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o6 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o6 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o6 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o6 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o6 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o6 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o6 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o6 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o6 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o6 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o6 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o6 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o6 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o6 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o7 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o7 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o7 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o7 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o7 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o7 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o7 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o7 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o7 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o7 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o7 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o7 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o7 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o7 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o7 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o7 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o7 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o7 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o7 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o7 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o7 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o7 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o7 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o7 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o7 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o7 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o7 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o8 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o8 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o8 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o8 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o8 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o8 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o8 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o8 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o8 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o8 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o8 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o8 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o8 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o8 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o8 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o8 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o8 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o8 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o8 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o8 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o8 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o8 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o8 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o8 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o8 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o8 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o8 c4o36)
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
(=>
(g2 c4o10)
(not
(f c4o9 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o9 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o9 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o9 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o9 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o9 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o9 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o9 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o9 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o9 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o9 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o9 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o9 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o9 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o9 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o9 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o9 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o9 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o9 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o9 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o9 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o9 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o9 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o9 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o9 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o9 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o9 c4o36)
)
)
)
)
(=>
(g1 c4o10)
(and
(=>
(g2 c4o1)
(not
(f c4o10 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o10 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o10 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o10 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o10 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o10 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o10 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o10 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o10 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o10 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o10 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o10 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o10 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o10 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o10 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o10 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o10 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o10 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o10 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o10 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o10 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o10 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o10 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o10 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o10 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o10 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o10 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o10 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o10 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o10 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o10 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o10 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o10 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o10 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o10 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o10 c4o36)
)
)
)
)
(=>
(g1 c4o11)
(and
(=>
(g2 c4o1)
(not
(f c4o11 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o11 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o11 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o11 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o11 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o11 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o11 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o11 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o11 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o11 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o11 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o11 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o11 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o11 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o11 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o11 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o11 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o11 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o11 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o11 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o11 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o11 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o11 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o11 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o11 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o11 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o11 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o11 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o11 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o11 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o11 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o11 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o11 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o11 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o11 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o11 c4o36)
)
)
)
)
(=>
(g1 c4o12)
(and
(=>
(g2 c4o1)
(not
(f c4o12 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o12 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o12 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o12 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o12 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o12 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o12 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o12 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o12 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o12 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o12 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o12 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o12 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o12 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o12 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o12 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o12 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o12 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o12 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o12 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o12 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o12 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o12 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o12 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o12 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o12 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o12 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o12 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o12 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o12 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o12 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o12 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o12 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o12 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o12 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o12 c4o36)
)
)
)
)
(=>
(g1 c4o13)
(and
(=>
(g2 c4o1)
(not
(f c4o13 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o13 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o13 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o13 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o13 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o13 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o13 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o13 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o13 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o13 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o13 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o13 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o13 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o13 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o13 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o13 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o13 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o13 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o13 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o13 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o13 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o13 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o13 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o13 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o13 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o13 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o13 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o13 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o13 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o13 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o13 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o13 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o13 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o13 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o13 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o13 c4o36)
)
)
)
)
(=>
(g1 c4o14)
(and
(=>
(g2 c4o1)
(not
(f c4o14 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o14 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o14 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o14 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o14 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o14 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o14 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o14 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o14 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o14 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o14 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o14 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o14 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o14 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o14 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o14 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o14 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o14 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o14 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o14 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o14 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o14 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o14 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o14 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o14 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o14 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o14 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o14 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o14 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o14 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o14 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o14 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o14 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o14 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o14 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o14 c4o36)
)
)
)
)
(=>
(g1 c4o15)
(and
(=>
(g2 c4o1)
(not
(f c4o15 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o15 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o15 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o15 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o15 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o15 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o15 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o15 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o15 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o15 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o15 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o15 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o15 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o15 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o15 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o15 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o15 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o15 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o15 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o15 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o15 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o15 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o15 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o15 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o15 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o15 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o15 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o15 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o15 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o15 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o15 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o15 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o15 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o15 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o15 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o15 c4o36)
)
)
)
)
(=>
(g1 c4o16)
(and
(=>
(g2 c4o1)
(not
(f c4o16 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o16 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o16 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o16 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o16 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o16 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o16 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o16 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o16 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o16 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o16 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o16 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o16 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o16 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o16 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o16 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o16 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o16 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o16 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o16 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o16 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o16 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o16 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o16 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o16 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o16 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o16 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o16 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o16 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o16 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o16 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o16 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o16 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o16 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o16 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o16 c4o36)
)
)
)
)
(=>
(g1 c4o17)
(and
(=>
(g2 c4o1)
(not
(f c4o17 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o17 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o17 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o17 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o17 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o17 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o17 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o17 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o17 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o17 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o17 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o17 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o17 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o17 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o17 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o17 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o17 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o17 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o17 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o17 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o17 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o17 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o17 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o17 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o17 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o17 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o17 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o17 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o17 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o17 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o17 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o17 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o17 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o17 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o17 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o17 c4o36)
)
)
)
)
(=>
(g1 c4o18)
(and
(=>
(g2 c4o1)
(not
(f c4o18 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o18 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o18 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o18 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o18 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o18 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o18 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o18 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o18 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o18 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o18 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o18 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o18 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o18 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o18 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o18 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o18 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o18 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o18 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o18 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o18 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o18 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o18 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o18 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o18 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o18 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o18 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o18 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o18 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o18 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o18 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o18 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o18 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o18 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o18 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o18 c4o36)
)
)
)
)
(=>
(g1 c4o19)
(and
(=>
(g2 c4o1)
(not
(f c4o19 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o19 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o19 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o19 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o19 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o19 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o19 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o19 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o19 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o19 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o19 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o19 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o19 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o19 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o19 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o19 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o19 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o19 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o19 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o19 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o19 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o19 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o19 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o19 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o19 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o19 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o19 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o19 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o19 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o19 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o19 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o19 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o19 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o19 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o19 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o19 c4o36)
)
)
)
)
(=>
(g1 c4o20)
(and
(=>
(g2 c4o1)
(not
(f c4o20 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o20 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o20 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o20 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o20 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o20 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o20 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o20 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o20 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o20 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o20 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o20 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o20 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o20 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o20 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o20 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o20 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o20 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o20 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o20 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o20 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o20 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o20 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o20 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o20 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o20 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o20 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o20 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o20 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o20 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o20 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o20 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o20 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o20 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o20 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o20 c4o36)
)
)
)
)
(=>
(g1 c4o21)
(and
(=>
(g2 c4o1)
(not
(f c4o21 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o21 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o21 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o21 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o21 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o21 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o21 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o21 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o21 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o21 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o21 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o21 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o21 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o21 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o21 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o21 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o21 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o21 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o21 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o21 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o21 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o21 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o21 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o21 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o21 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o21 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o21 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o21 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o21 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o21 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o21 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o21 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o21 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o21 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o21 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o21 c4o36)
)
)
)
)
(=>
(g1 c4o22)
(and
(=>
(g2 c4o1)
(not
(f c4o22 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o22 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o22 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o22 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o22 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o22 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o22 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o22 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o22 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o22 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o22 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o22 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o22 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o22 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o22 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o22 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o22 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o22 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o22 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o22 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o22 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o22 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o22 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o22 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o22 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o22 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o22 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o22 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o22 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o22 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o22 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o22 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o22 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o22 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o22 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o22 c4o36)
)
)
)
)
(=>
(g1 c4o23)
(and
(=>
(g2 c4o1)
(not
(f c4o23 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o23 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o23 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o23 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o23 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o23 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o23 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o23 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o23 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o23 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o23 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o23 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o23 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o23 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o23 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o23 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o23 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o23 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o23 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o23 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o23 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o23 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o23 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o23 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o23 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o23 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o23 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o23 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o23 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o23 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o23 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o23 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o23 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o23 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o23 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o23 c4o36)
)
)
)
)
(=>
(g1 c4o24)
(and
(=>
(g2 c4o1)
(not
(f c4o24 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o24 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o24 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o24 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o24 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o24 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o24 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o24 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o24 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o24 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o24 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o24 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o24 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o24 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o24 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o24 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o24 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o24 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o24 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o24 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o24 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o24 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o24 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o24 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o24 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o24 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o24 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o24 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o24 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o24 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o24 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o24 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o24 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o24 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o24 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o24 c4o36)
)
)
)
)
(=>
(g1 c4o25)
(and
(=>
(g2 c4o1)
(not
(f c4o25 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o25 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o25 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o25 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o25 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o25 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o25 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o25 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o25 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o25 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o25 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o25 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o25 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o25 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o25 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o25 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o25 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o25 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o25 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o25 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o25 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o25 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o25 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o25 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o25 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o25 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o25 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o25 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o25 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o25 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o25 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o25 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o25 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o25 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o25 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o25 c4o36)
)
)
)
)
(=>
(g1 c4o26)
(and
(=>
(g2 c4o1)
(not
(f c4o26 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o26 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o26 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o26 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o26 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o26 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o26 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o26 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o26 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o26 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o26 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o26 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o26 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o26 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o26 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o26 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o26 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o26 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o26 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o26 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o26 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o26 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o26 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o26 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o26 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o26 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o26 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o26 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o26 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o26 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o26 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o26 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o26 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o26 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o26 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o26 c4o36)
)
)
)
)
(=>
(g1 c4o27)
(and
(=>
(g2 c4o1)
(not
(f c4o27 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o27 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o27 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o27 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o27 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o27 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o27 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o27 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o27 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o27 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o27 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o27 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o27 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o27 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o27 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o27 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o27 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o27 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o27 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o27 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o27 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o27 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o27 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o27 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o27 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o27 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o27 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o27 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o27 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o27 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o27 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o27 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o27 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o27 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o27 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o27 c4o36)
)
)
)
)
(=>
(g1 c4o28)
(and
(=>
(g2 c4o1)
(not
(f c4o28 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o28 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o28 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o28 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o28 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o28 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o28 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o28 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o28 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o28 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o28 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o28 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o28 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o28 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o28 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o28 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o28 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o28 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o28 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o28 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o28 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o28 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o28 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o28 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o28 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o28 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o28 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o28 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o28 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o28 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o28 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o28 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o28 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o28 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o28 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o28 c4o36)
)
)
)
)
(=>
(g1 c4o29)
(and
(=>
(g2 c4o1)
(not
(f c4o29 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o29 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o29 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o29 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o29 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o29 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o29 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o29 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o29 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o29 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o29 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o29 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o29 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o29 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o29 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o29 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o29 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o29 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o29 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o29 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o29 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o29 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o29 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o29 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o29 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o29 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o29 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o29 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o29 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o29 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o29 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o29 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o29 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o29 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o29 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o29 c4o36)
)
)
)
)
(=>
(g1 c4o30)
(and
(=>
(g2 c4o1)
(not
(f c4o30 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o30 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o30 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o30 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o30 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o30 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o30 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o30 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o30 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o30 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o30 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o30 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o30 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o30 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o30 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o30 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o30 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o30 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o30 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o30 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o30 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o30 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o30 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o30 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o30 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o30 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o30 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o30 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o30 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o30 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o30 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o30 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o30 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o30 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o30 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o30 c4o36)
)
)
)
)
(=>
(g1 c4o31)
(and
(=>
(g2 c4o1)
(not
(f c4o31 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o31 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o31 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o31 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o31 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o31 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o31 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o31 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o31 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o31 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o31 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o31 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o31 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o31 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o31 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o31 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o31 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o31 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o31 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o31 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o31 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o31 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o31 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o31 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o31 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o31 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o31 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o31 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o31 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o31 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o31 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o31 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o31 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o31 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o31 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o31 c4o36)
)
)
)
)
(=>
(g1 c4o32)
(and
(=>
(g2 c4o1)
(not
(f c4o32 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o32 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o32 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o32 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o32 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o32 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o32 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o32 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o32 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o32 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o32 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o32 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o32 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o32 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o32 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o32 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o32 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o32 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o32 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o32 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o32 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o32 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o32 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o32 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o32 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o32 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o32 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o32 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o32 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o32 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o32 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o32 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o32 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o32 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o32 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o32 c4o36)
)
)
)
)
(=>
(g1 c4o33)
(and
(=>
(g2 c4o1)
(not
(f c4o33 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o33 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o33 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o33 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o33 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o33 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o33 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o33 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o33 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o33 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o33 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o33 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o33 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o33 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o33 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o33 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o33 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o33 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o33 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o33 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o33 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o33 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o33 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o33 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o33 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o33 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o33 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o33 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o33 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o33 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o33 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o33 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o33 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o33 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o33 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o33 c4o36)
)
)
)
)
(=>
(g1 c4o34)
(and
(=>
(g2 c4o1)
(not
(f c4o34 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o34 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o34 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o34 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o34 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o34 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o34 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o34 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o34 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o34 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o34 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o34 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o34 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o34 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o34 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o34 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o34 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o34 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o34 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o34 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o34 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o34 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o34 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o34 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o34 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o34 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o34 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o34 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o34 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o34 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o34 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o34 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o34 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o34 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o34 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o34 c4o36)
)
)
)
)
(=>
(g1 c4o35)
(and
(=>
(g2 c4o1)
(not
(f c4o35 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o35 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o35 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o35 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o35 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o35 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o35 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o35 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o35 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o35 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o35 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o35 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o35 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o35 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o35 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o35 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o35 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o35 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o35 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o35 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o35 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o35 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o35 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o35 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o35 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o35 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o35 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o35 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o35 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o35 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o35 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o35 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o35 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o35 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o35 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o35 c4o36)
)
)
)
)
(=>
(g1 c4o36)
(and
(=>
(g2 c4o1)
(not
(f c4o36 c4o1)
)
)
(=>
(g2 c4o2)
(not
(f c4o36 c4o2)
)
)
(=>
(g2 c4o3)
(not
(f c4o36 c4o3)
)
)
(=>
(g2 c4o4)
(not
(f c4o36 c4o4)
)
)
(=>
(g2 c4o5)
(not
(f c4o36 c4o5)
)
)
(=>
(g2 c4o6)
(not
(f c4o36 c4o6)
)
)
(=>
(g2 c4o7)
(not
(f c4o36 c4o7)
)
)
(=>
(g2 c4o8)
(not
(f c4o36 c4o8)
)
)
(=>
(g2 c4o9)
(not
(f c4o36 c4o9)
)
)
(=>
(g2 c4o10)
(not
(f c4o36 c4o10)
)
)
(=>
(g2 c4o11)
(not
(f c4o36 c4o11)
)
)
(=>
(g2 c4o12)
(not
(f c4o36 c4o12)
)
)
(=>
(g2 c4o13)
(not
(f c4o36 c4o13)
)
)
(=>
(g2 c4o14)
(not
(f c4o36 c4o14)
)
)
(=>
(g2 c4o15)
(not
(f c4o36 c4o15)
)
)
(=>
(g2 c4o16)
(not
(f c4o36 c4o16)
)
)
(=>
(g2 c4o17)
(not
(f c4o36 c4o17)
)
)
(=>
(g2 c4o18)
(not
(f c4o36 c4o18)
)
)
(=>
(g2 c4o19)
(not
(f c4o36 c4o19)
)
)
(=>
(g2 c4o20)
(not
(f c4o36 c4o20)
)
)
(=>
(g2 c4o21)
(not
(f c4o36 c4o21)
)
)
(=>
(g2 c4o22)
(not
(f c4o36 c4o22)
)
)
(=>
(g2 c4o23)
(not
(f c4o36 c4o23)
)
)
(=>
(g2 c4o24)
(not
(f c4o36 c4o24)
)
)
(=>
(g2 c4o25)
(not
(f c4o36 c4o25)
)
)
(=>
(g2 c4o26)
(not
(f c4o36 c4o26)
)
)
(=>
(g2 c4o27)
(not
(f c4o36 c4o27)
)
)
(=>
(g2 c4o28)
(not
(f c4o36 c4o28)
)
)
(=>
(g2 c4o29)
(not
(f c4o36 c4o29)
)
)
(=>
(g2 c4o30)
(not
(f c4o36 c4o30)
)
)
(=>
(g2 c4o31)
(not
(f c4o36 c4o31)
)
)
(=>
(g2 c4o32)
(not
(f c4o36 c4o32)
)
)
(=>
(g2 c4o33)
(not
(f c4o36 c4o33)
)
)
(=>
(g2 c4o34)
(not
(f c4o36 c4o34)
)
)
(=>
(g2 c4o35)
(not
(f c4o36 c4o35)
)
)
(=>
(g2 c4o36)
(not
(f c4o36 c4o36)
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