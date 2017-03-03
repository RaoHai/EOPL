#lang eopl

(define subset
  (lambda (new old slist)
    (if (null? slist)
    `()
    (cons
       (if (symbol? (car slist))
         (if (eqv? (car slist) old) new (car slist))
         (subset new old (car slist)))
       (subset new old (cdr slist))
   )
  )
 )
)

(display (
  subset `a `b `((b c) (b () d))
))