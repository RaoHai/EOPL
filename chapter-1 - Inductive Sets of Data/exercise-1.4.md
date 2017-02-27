Exercise 1.4: 

> Write a derivation from List-of-Int to (-7 . (3 . (14 . ()))).

$$
\begin{align*}
List-of-Int
&\rightarrow (Int.(List-of-Int))\\
&\rightarrow (-7.(Int.(List-of-Int)))\\
&\rightarrow (-7.(3.(Int.(List-of-Int))))\\
&\rightarrow (-7.(3.(14.(List-of-Int))))\\
&\rightarrow (-7.(3.(14.())))
\end{align*}
$$