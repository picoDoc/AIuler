/ Project Euler Problem 10
/ Summation of Primes

/ The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
/ Find the sum of all the primes below two million.

mark:{[arr;p]                                                                     / mark multiples of p
  sz:count arr;
  idx:(p*p)+p*til 1+0|"j"$(sz-1-p*p)div p;                                        / indices of multiples
  @[arr;idx where idx<sz;:;0b]                                                    / mark as not prime
 };
sieve:{[lim]                                                                      / Sieve of Eratosthenes
  arr:@[lim#1b;0 1;:;0b];                                                         / init sieve, 0,1 not prime
  ps:2+til 1+"j"$sqrt lim;                                                        / candidate divisors
  where mark/[arr;ps]                                                             / return primes
 };

st:.z.p;                                                                          / record start time
f:{[]
  sum sieve 2000000
 };

r:f[];

-1"The answer to Euler 10 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
