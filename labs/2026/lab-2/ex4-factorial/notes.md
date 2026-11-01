# Exercise 4: Factorial of N

## Purpose

The program calculates the factorial of N using a procedure called by main.

## Register Usage

* `a0`: Argument N and return value.
* `ra`: Return address.
* `sp`: Stack pointer.
* `s0`: Current value of N.
* `t0`: Running factorial result.

## Challenges

Using `jal` to call the procedure, `jalr` to return, and the stack to save and restore registers.
