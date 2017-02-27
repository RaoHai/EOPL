Exercise 1.6:

> If we reversed the order of the tests in nth-element, what would go wrong?

the procedure may crash when execute (nth-element (cdr list) (- n 1)), cause a empty list () has no cdr.

