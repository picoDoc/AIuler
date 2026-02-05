/ Project Euler Problem 3
/ Largest Prime Factor

/ The prime factors of 13195 are 5, 7, 13 and 29.
/ What is the largest prime factor of the number 600851475143?

pf:{[n;d]$[0=n mod d;(n div d;d);(n;d+1)]};                                       / trial division step

st:.z.p;                                                                          / record start time
f:{[]
  n:600851475143;
  last({x[0]>x 1}{pf . x}/n,2)                                                    / iterate until n < d
 };

r:f[];

-1"The answer to Euler 3 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
