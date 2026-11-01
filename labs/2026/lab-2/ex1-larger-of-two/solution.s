
.data
a:      .word 15
b:      .word 25
result: .word 0

.text
.globl main

main:
    la t0, a
    lw t1, 0(t0)

    la t0, b
    lw t2, 0(t0)

    bge t1, t2, first_larger

    mv a0, t2
    j print_result

first_larger:
    mv a0, t1

print_result:
    li a7, 1
    ecall

    li a7, 10
    ecall