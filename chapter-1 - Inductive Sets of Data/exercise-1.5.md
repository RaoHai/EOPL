Exercise 1.5:

> Prove that if $$e \in LcExp$$, then there are the same number of left and
right parentheses in e.

Follow `Proof by Structural Induction`

The Proposition IH(l,r) is that an expression that any expression with l left parentheses and r right parentheses, l = r.

1. IH(l, r) holds trivially if e is an Identifier, IH(0, 0).

2. An expression have k numbers of left parentheses and m numbers of parentheses holds, that is , IH(k, m) holds, 
that IH(k+1, m+1) also hold.

if LcExp := (lambda (expression) LcExp),
then k = 1 + 1 + IH(k-1) = IH(m-1) + 1 + 1 = m 
IH(k-1) = IH(m-1), k = m, IH(k,m) holds,

if LcExp := (LcExp1, LcExp2), has k+1 numbers of left parentheses, m+1 numbers of parentheses.
LcExp1, LcExp2 must have (k, m) parentheses both, witch is IH(k, m) holds.

Q.E.D. 