# AIeuler - Project Euler in q/kdb+

## About Project Euler

Project Euler (projecteuler.net) is a collection of challenging mathematical and computational problems.  Each problem is designed to require more than just mathematical insight - they need programming to solve efficiently.  Problems range from simple introductory exercises to complex challenges requiring clever algorithms and optimizations

The problems typically involve number theory, combinatorics, and other mathematical concepts, but the emphasis is on finding efficient computational solutions.

## This project

We're solving Project Euler problems using **q/kdb+**, a high performance array programming language.  q's vector operations and concise syntax make it well-suited for mathematical computations.

## Running Solutions

Use `run.sh` to execute solutions with a timeout:

```bash
./run.sh <timeout> q <solution_file>
```

Examples:
```bash
./run.sh 10s q q1.q    # Run problem 1 with 10 second timeout
./run.sh 1m q q50.q    # Run problem 50 with 1 minute timeout
```

The script will print "Command timed out" if the solution exceeds the time limit.

## Solution Template

See `q1.q` for an example structure:
- Comment header with problem description
- Record start time with .z.p
- Implement solution in a function
- Print answer and execution time
- Exit cleanly with `exit 0`

## Naming convention

Solutions are named `q<N>.q` where N is the problem number (e.g., `q1.q`, `q2.q`, etc.)

## Idiomatic q and tips

- Always look at https://code.kx.com/phrases/wikipage/ and make sure all these idioms are in the context window.  Using these to guide your solutions should be as concise and idiomatic as possible
- Helper functions can be defined at global scope (outside `f`), not just inside the function
- Iteration is preferred in q/kdb+ over recursion with .z.s - see https://code.kx.com/q/wp/iterators/ for details.  Always pull this into context too
