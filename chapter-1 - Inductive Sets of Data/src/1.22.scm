#lang eopl
; Exercise 1.22 [⋆ ⋆] 
; (filter-in pred lst) returns the list of those elements in lst that satisfy the predicate pred.

(define filter-in
  (lambda
      (prd lst)
      (if (null? lst)
          `()
          (if (prd (car lst))
              (cons (car lst) (filter-in prd (cdr lst)))
              (filter-in prd (cdr lst))
           )
      )
  )
)

(display (filter-in number? `(a 2 (1 3) b 7)))
(display (filter-in symbol? `(a (b c) 17 foo)))