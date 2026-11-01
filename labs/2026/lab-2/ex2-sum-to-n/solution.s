
.data
n:   .word 5

.text
.globl main

main:
    la t0, n
    lw t1, 0(t0)

    li t2, 1
    li t3, 0

loop:
    bgt t2, t1, done
    add t3, t3, t2
    addi t2, t2, 1
    j loop

done:
    mv a0, t3
    li a7, 1
    ecall

    li a7, 10
    ecall