CS3520 Lab 2 — RISC-V Assembly



1\. Discussion Questions



Question 1: Why is the C++ loop condition i < n different from the assembly branch condition i >= n?



In C++, the loop continues while i < n. In assembly, the branch instruction checks when the loop must stop. Therefore, bge branches to the exit when i >= n. This is the opposite condition because the branch is used to leave the loop.



Question 2: What are pseudo-instructions, and why does the assembler provide them?



Pseudo-instructions are convenient instructions that are translated into one or more real RISC-V instructions.



Examples include:



\* mv: copies a register value using addi.

\* ble: can be translated into bge with the operands reversed.

\* li: loads a constant, sometimes using multiple instructions.

\* la: loads an address, commonly using auipc and addi.



They make assembly programs easier to read and write.



Question 3: Why does find\_max save register s1 but not ra?



Register s1 is a callee-saved register. If a procedure modifies it, it must restore its original value before returning.



The procedure does not save ra because it is a leaf procedure: it does not call another procedure, so its return address is not overwritten.



2\. Exercises Completed



Exercise	Description	Expected output

1	Find the larger of two integers	25

2	Calculate the sum from 1 to N	15

3	Count even elements in an array	3

4	Calculate factorial using a procedure	120

5	Calculate GCD using Euclid’s algorithm	6



Each exercise contains:



\* model.cpp — C++ reference implementation.

\* solution.s — RISC-V assembly implementation.

\* notes.md — purpose, register mapping and challenges.



The programs were tested in Ripes and produced the expected outputs.



3\. Instruction Encoding Analysis



The B-type branch and J-type jump instruction encoding analysis is provided in encoding-analysis.md.



It includes the 32-bit machine-code representations, instruction fields and explanations of the split immediate values.



4\. Repository Structure



labs/

└── 2026/

&#x20;   └── lab-2/

&#x20;       ├── README.md

&#x20;       ├── encoding-analysis.md

&#x20;       ├── ex1-larger-of-two/

&#x20;       ├── ex2-sum-to-n/

&#x20;       ├── ex3-count-even/

&#x20;       ├── ex4-factorial/

&#x20;       └── ex5-gcd/



5\. Conclusion



This lab provided practice in translating C++ programs into RISC-V assembly, using conditional branches and loops, accessing arrays, implementing procedures, managing registers and analysing instruction encodings.

