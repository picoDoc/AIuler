/ Project Euler Problem 5
/ Smallest Multiple

/ 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
/ What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

gcd:{first{x[1]>0}{(x 1;x[0]mod x 1)}/x,y};                                       / gcd via iteration
lcm:{(x*y)div gcd[x;y]};                                                          / least common multiple

st:.z.p;                                                                          / record start time
f:{[]
  lcm over 1+til 20                                                               / lcm of 1 to 20
 };

r:f[];

-1"The answer to Euler 5 is: ",string r;
-1"Solving the problem took: ",string .z.p-st;

exit 0
