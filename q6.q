/ Project Euler Problem 6
/ Sum Square Difference

/ The sum of the squares of the first ten natural numbers is 1^2 + 2^2 + ... + 10^2 = 385.
/ The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)^2 = 55^2 = 3025.
/ Hence the difference between the sum of the squares and the square of the sum is 3025 - 385 = 2640.
/ Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

st:.z.p;                                                                       / record start time
f:{[]

 };

r:f[];

-1"The answer to Euler 6 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
