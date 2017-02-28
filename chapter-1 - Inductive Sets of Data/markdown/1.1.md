Exercise 1.1: 

> Write inductive definitions of the following sets. Write each definition
in all three styles (top-down, bottom-up, and rules of inference). Using your
rules, show the derivation of some sample elements of each set.

1. $$ \{ 3n + 2 | n \in N \}$$
 
   $$ \{ 3n + 2 | n \in N \} = \{2, 5, 8, 11, ....\} $$ 

  * dop-down:
    A nature number is in S if and only if
     1. $$ n = 2 $$, or 
     2. $$ n - 3 \in S $$
  * bottom-up:
    The set S is the smallest set contained in N and 
    satisfying the following conditions:
     1. $$2 \in S$$, and
     2. if $$n \in S$$, then $$n + 3 \in S$$

  * rules of inference:
    * $$ \frac{}{2 \in S} , \frac{n \in S}{ n + 3 \in S} $$

2. $$ \{2n + 3m + 1 | n, m \in N\} $$ 

    $$ \{ 2n + 3m + 1 | n \in N \} = \{1, 3, 4, 5, 7, 8, ...\} $$ 

  * top-down:
     A nature number is in S if and only if
      1. n = 1, or
      2. $$ n - 2 \in S $$, or
      3. $$ n - 3 \in S $$.

   * bottom-up:
     The set S is the smallest set contained in N and 
     satisfying the following conditions:
      1. $$ 1 \in S $$, and
      2. if $$ n \in S $$, then $$n + 2 \in S$$.
      3. if $$ n \in S $$, then $$mn + 3 \in S$$.

   * rules of inference:
      1. $$\frac{}{1 \in S}, \frac{ n \in S}{ n + 2 \in S}, \frac{ n \in S}{ n + 3 \in sample}$$

3. $$ {(n, 2n+1) | n \in N} $$
  
    $$ \{(n, 2n+1) | n \in N\} = \{(0, 0), (1, 3), (3, 5), ...\}$$

  * top-down:
    A pair of nature number (n, m) is in S if and only if
    * (n, m) = (0, 1), or
    * $$(n-1, m-2) \in S$$.

  * bottom-top:
    The set S is the smallest set contained in N and  
    satisfying the following conditions
    1. $$ (0, 1) \in S $$, and
    2. if $$ (n, m) \in S$$, then $$ (n+1, m+2) \in S$$.

  * rules of inference:
    1. $$\frac{}{(0, 1) \in S}, \frac{(n, m) \in S}{(n+1,m+2)\in S}$$


 4. $$\{(n, n^2) | n \in N\}$$  Do not mention squaring in your rules. as a hint, 
 remember the quation $$(n + 1)^2= n^2 + 2n + 1$$

    $$\{(n, n^2) | n \in N\} = {(0, 0), (1, 1), (2, 4), ...}$$ 

  * top-down:
    A pair of nature number (n, m) is in S if and only if
    * (n, m) = (0, 0), or
    * $$(n-1, m-2n+1) \in S$$
    
  * bottom-up
    The set S is the smallest set contained in N and
    satisfying the following conditions:
    1. $$ (0, 0) \in S $$, and
    2. if $$ (n, m) \in S $$, then $$ (n+1, m + 2n + 1) \in S $$

  * rules of inference
    1. $$\frac{}{(n,m) \in S}, \frac{(n,m) \in S}{(n+1, m+2n+1) \in S}$$