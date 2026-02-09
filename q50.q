/ Project Euler Problem 50
/ Consecutive Prime Sum

/ The prime 41 can be written as the sum of six consecutive primes:
/   41 = 2 + 3 + 5 + 7 + 11 + 13
/ This is the longest sum of consecutive primes that adds to a prime below 100.

/ The longest sum of consecutive primes below 1000 that adds to a prime
/ contains 21 terms, and is equal to 953.

/ Which prime, below one million, can be written as the sum of the most
/ consecutive primes?

mark:{[arr;p]
  sz:count arr;
  idx:(p*p)+p*til 1+0|"j"$(sz-1-p*p)div p;
  @[arr;idx where idx<sz;:;0b]
 };
sieve:{[lim]
  arr:@[lim#1b;0 1;:;0b];
  ps:2+til 1+"j"$sqrt lim;
  where mark/[arr;ps]
 };
lim:1000000;
chk:{[l] s:cs[l+til n-l+1]-cs til n-l+1; s where (s<lim)&isp s};

st:.z.p;
f:{[]
  ps:sieve lim;
  isp::@[lim#0b;ps;:;1b];
  cs::0,sums ps;
  n::count ps;
  last {(0<x 0)&0=x 1} {l:x 0; s:chk l; ((-1+l;0);(l;first s)) 0<count s}/ (-1+first where cs>=lim;0)
 };

r:f[];

-1"The answer to Euler 50 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
