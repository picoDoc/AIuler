/ Project Euler Problem 1
/ Multiples of 3 or 5

/ If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.  The sum of these multiples is 23.
/ Find the sum of all the multiples of 3 or 5 below 1000.

st:.z.p;                                                                       / record start time
f:{[]
  r:sum where max 0=til[1000]mod/:3 5;                                         / modulus 3 and 5 over the list, take max 0= to see where it is a multiple of 3 or 5, and sum where
 };

r:f[];

-1"The answer to Euler 1 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
