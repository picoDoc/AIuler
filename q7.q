/ Project Euler Problem 7
/ 10001st Prime

/ By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
/ What is the 10001st prime number?

mark:{[arr;p]sz:count arr;idx:(p*p)+p*til 1+0|"j"$(sz-1-p*p)div p;@[arr;idx where idx<sz;:;0b]};
sieve:{[lim]arr:@[lim#1b;0 1;:;0b];ps:2+til 1+"j"$sqrt lim;where mark/[arr;ps]};  / Sieve of Eratosthenes

st:.z.p;                                                                          / record start time
f:{[]
  (sieve 110000)10000                                                             / 10001st prime (0-indexed)
 };

r:f[];

-1"The answer to Euler 7 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
