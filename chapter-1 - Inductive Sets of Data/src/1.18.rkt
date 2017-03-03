#lang eopl

; Exercise 1.18 [⋆] 
;(swapper s1 s2 slist) retur ns a list the same as slist,
; but with all occurrences of s1 replaced by s2 and all occurrences of s2 replaced by s1.
;  > (swapper ’a ’d ’(a b c d))
;  (d b c a)
;  > (swapper ’a ’d ’(a d () c d))
;  (d a () c a)
;  > (swapper ’x ’y ’((x) y (z (x))))
; ((y) x (z (y)))


(define swapper
  (lambda (s1 s2 slist)
   (if (null? slist)
     `()
     (map (lambda
       (item)
       (if (list? item)
         (swapper s1 s2 item)
         (wrapper s1 s2 item)
       )
      )
     slist)
   )
  )
)

(define wrapper
  (lambda (s1 s2 item)
    (if (eqv? s1 item)
      s2
      (if (eqv? s2 item)
          s1
          item
       )
      )
    )
  )

(display (swapper `a `d `(a b c d)))
(display (swapper `a `d `(a d () c d)))
(display (swapper `x `y `((x) y (z (x)))))