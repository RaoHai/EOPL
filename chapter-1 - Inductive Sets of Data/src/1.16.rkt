#lang eopl

; Exercise 1.16
; (invert lst), where lst is a list of 2-lists (lists of length two), returns a list with each 2-list reversed.

(define invert
  (lambda (lst)
    (map (lambda
      (item)
      (list (cadr item) (car item))     
    ) lst)
  )
)

(display (invert `((a 1) (a 2) (1 b) (2 b))))