#lang eopl

; Exercise 1.23 [⋆ ⋆] (list-index pred lst) 
; returns the 0-based position of the first element of lst that satisfies the predicate pred. 
; If no element of lst satisfies the predicate, then list-index returns #f.

(define list-index-count
  (lambda (pred lst idx)
    (if (null? lst)
       #f
       (if (pred (car lst))
          idx
          (list-index-count pred (cdr lst) (+ idx 1))
       )
    )
  )
)


(define list-index
  (lambda (pred lst)
    (list-index-count pred lst 0)
  )
)


(display (list-index number? `(a 2 (1 3) b 7)))
(display (list-index symbol? `(a (b c) 17 foo)))
(display (list-index symbol? `(1 2 (a b) 3)))