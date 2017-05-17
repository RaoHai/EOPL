#lang eopl

; Exercise 1.21 [⋆ ⋆] (product sos1 sos2), 
; where sos1 and sos2 are each a list of symbols without repetitions, 
; returns a list of 2-lists that represents the Cartesian product of sos1 and sos2. 
; The 2-lists may appear in any order.

(define product
  (lambda (lst1 lst2)
    (map
     (lambda (item1)
     (map (lambda (item2) (list item1 item2)) lst2)
    ) lst1)
  )
)

(display (product `(a b c) `(x y)))