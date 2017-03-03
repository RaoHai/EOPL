#lang eopl

(define subst
  (lambda (new old slist)
    (map (lambda (item)
       (if (symbol? item)
           (if (eqv? item old) new item)
           (subst new old item)
        )
    ) slist)
  )
)


(display (subst 'b 'a '(a (b (c a (d) e)))))