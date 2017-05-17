#lang eopl


; Exercise 1.20 [⋆] (count-occurrences s slist)
; returns the number of occur- rences of s in slist.
; > (count-occurrences ’x ’((f x) y (((x z) x))))
; 3
; > (count-occurrences ’x ’((f x) y (((x z) () x))))
; 3
; > (count-occurrences ’w ’((f x) y (((x z) x))))
; 0
(define reduce
  (lambda (func list)
    (if (null? (cdr list))
     (car list)
     (func (car list) (reduce func (cdr list))))
  )
)

(define count-occurrences
  (lambda (s slist)
    (if (null? slist)
    '0
    (reduce + (map (lambda (item)
           (if (symbol? item)
              (if (eqv? item s) '1 '0)
              (count-occurrences s item)
            )
         )
    slist))
    )
  )
)
  
(display (count-occurrences 'x '((f x) y (((x z) x)))))
(display (count-occurrences 'x '((f x) y (((x z) () x)))))
(display (count-occurrences 'w '((f x) y (((x z) x)))))