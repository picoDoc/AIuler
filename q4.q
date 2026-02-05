/ Project Euler Problem 4
/ Largest Palindrome Product

/ A palindromic number reads the same both ways.
/ The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
/ Find the largest palindrome made from the product of two 3-digit numbers.

ispal:{x~reverse x};                                                              / palindrome check

st:.z.p;                                                                          / record start time
f:{[]
  prods:raze(100+til 900)*\:100+til 900;                                          / all 3-digit products
  max prods where ispal each string prods                                         / max palindrome
 };

r:f[];

-1"The answer to Euler 4 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
