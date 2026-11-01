# Lab 2: Instruction Encoding Analysis

## 1. B-type Instruction

**Instruction:** `bge x7, x6, 36`

**Machine code:** `0263d263`

**Binary:**
`00000010011000111101001001100011`

**Format:** B-type

| Field | Bits | Value |
|---|---|---|
| imm[12] | 31 | 0 |
| imm[10:5] | 30–25 | 000001 |
| rs2 | 24–20 | 00110 |
| rs1 | 19–15 | 00111 |
| funct3 | 14–12 | 101 |
| imm[4:1] | 11–8 | 0010 |
| imm[11] | 7 | 0 |
| opcode | 6–0 | 1100011 |

The instruction compares x7 and x6 and branches when x7 is greater than or equal to x6. The branch offset is 36 bytes.

## 2. J-type Instruction

**Instruction:** `jal x0, -32`

**Machine code:** `fe1ff06f`

**Binary:**
`11111110000111111111000001101111`

**Format:** J-type

| Field | Bits | Value |
|---|---|---|
| imm[20] | 31 | 1 |
| imm[10:1] | 30–21 | 1111110000 |
| imm[11] | 20 | 1 |
| imm[19:12] | 19–12 | 11111111 |
| rd | 11–7 | 00000 |
| opcode | 6–0 | 1101111 |

The instruction jumps backwards 32 bytes to the loop label. Register x0 discards the return address.

The immediate bits are stored in different positions to accommodate branch and jump offsets while maintaining a fixed 32-bit instruction length and keeping other instruction fields in consistent positions.