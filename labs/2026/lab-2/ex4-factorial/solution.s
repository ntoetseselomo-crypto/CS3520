
.data
n: .word 5

.text
.globl main

main:
    la t0, n
    lw a0, 0(t0)

    jal ra, factorial

    li a7, 1
    ecall

    li a7, 10
    ecall

factorial:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)

    mv s0, a0
    li t0, 1

loop:
    ble s0, zero, done
    mul t0, t0, s0
    addi s0, s0, -1
    j loop

done:
    mv a0, t0

    lw s0, 8(sp)
    lw ra, 12(sp)
    addi sp, sp, 16

    jalr zero, 0(ra)