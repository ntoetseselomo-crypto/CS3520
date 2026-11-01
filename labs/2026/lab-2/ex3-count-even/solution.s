

.data
arr: .word 2, 5, 8, 7, 10
n:   .word 5

.text
.globl main

main:
    la t0, arr
    la t6, n
    lw t1, 0(t6)
    li t2, 0
    li t3, 0

loop:
    bge t2, t1, done

    slli t4, t2, 2
    add t5, t0, t4
    lw t4, 0(t5)

    andi t4, t4, 1
    bne t4, zero, next

    addi t3, t3, 1

next:
    addi t2, t2, 1
    j loop

done:
    mv a0, t3
    li a7, 1
    ecall

    li a7, 10
    ecall