/ Project Euler Problem 9
/ Special Pythagorean Triplet

/ A Pythagorean triplet is a set of three natural numbers, a < b < c, for which a^2 + b^2 = c^2.
/ For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
/ There exists exactly one Pythagorean triplet for which a + b + c = 1000.
/ Find the product abc.

st:.z.p;                                                                          / record start time
f:{[]
  / From a + b + c = 1000 and a^2 + b^2 = c^2, derive: b = 1000*(500-a)/(1000-a)
  a:1+til 499;
  b:1000*(500-a)%1000-a;                                                          / compute b for each a
  valid:where(b=floor b)&a<b;                                                     / b must be integer and a < b
  a:a valid 0; b:"j"$b valid 0; c:1000-a+b;
  a*b*c
 };

r:f[];

-1"The answer to Euler 9 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
