Exercise 1.1: 
> What sets are defined by the following pairs of rules? Explain why.


1. $$ (0, 1) \in S,      \frac{(n, k) \in S}{(n + 1, k + 7) \in S} $$
  
  $$ \{ (n, 7n + 1) | n \in S \}$$

2. $$ (0, 1) \in S,  \frac{(n, k) \in S}{(n + 1, 2k) \in S}$$
 
  $$ \{ (n, 2^n) | n \in S \}$$

3. $$ (0, 0, 1) \in S,   \frac{(n,i,j) \in S}{(n+1,j,i+j) \in S}$$

  $$ \{ (n, Fibonacci(n), Fibonacci(n + 1)) \in S $$
  
4. $$ (0, 1, 0) \in S, \frac{(n,i,j)}{(n+1,i+2,i+j) \in S}$$

  $$ \{(n, 2n+1, n^2) \in S$$

  proof:

$$ 
  \begin{align*}
  n_0 &= 0\\
  n_k &= n_(k-1) + 1\\
  &= n_(k-2) + 1 + 1\\
  &= n_(k-k) + k\\
  &= k 
  \end{align*}
$$

$$ 
  \begin{align*}
  i_0 &= 1\\
  i_k &= i_(k-1) + 2\\
  &=i_(k-2) + 2 + 2\\
  &=i_(k-k) + 2k\\
  &=2k+1
  \end{align*}
$$

$$ 
  \begin{align*}
  j_0 &= 0\\
  j_k &= i_(k-1) + j_(k-1)\\
  &=2(k-1) + 1 + i_(k-2) + j(k-2)\\
  &=2(k-1) + 1 + 2(k-2) + 1 + i_(k-3) + j(k-3)\\
  &=2(k-1) + 1 + 2(k-2) + 1 + ... + 2(k-k) + 1 + j(k-k)\\
  &=(\sum_{x}^{k}2(k-x)+1)+ j_0\\
  &=2(k^2-\frac{(1+k)k}{2}) + k \\
  &=k^2
  \end{align*}
$$