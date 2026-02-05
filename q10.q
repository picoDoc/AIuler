/ Project Euler Problem 10
/ Summation of Primes

/ The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
/ Find the sum of all the primes below two million.

st:.z.p;                                                                       / record start time
f:{[]

 };

r:f[];

-1"The answer to Euler 10 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
