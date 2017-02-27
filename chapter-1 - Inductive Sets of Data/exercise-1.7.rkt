#lang eopl
; Exercise 1.7
; The error message from nth-element is uninformative. 
; Rewrite nth-element so that it produces a more informative error message, 
; such as “(a b c) does not have 8 elements.”
(define nth-element
  (lambda (lst n)
    (nth-element-r lst n (report-list-too-sort lst n))
  )
)

(define nth-element-r
  (lambda (lst n error)
    (if (null? lst)
      (error)
      (if (zero? n)
        (car lst)
        (nth-element-r (cdr lst) (- n 1))
      )
    )
   )
 )


(define report-list-too-sort
  (lambda (lst n)
    (eopl:error `nth-element "List ~s does not have ~s elements." lst (+ n 1))
  )
)
