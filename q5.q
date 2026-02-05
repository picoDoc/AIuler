/ Project Euler Problem 5
/ Smallest Multiple

/ 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
/ What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

st:.z.p;                                                                       / record start time
f:{[]

 };

r:f[];

-1"The answer to Euler 5 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
