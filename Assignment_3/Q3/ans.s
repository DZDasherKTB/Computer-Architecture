// 2024UCS0087_Q3_Array_Increment
.data
array: .word 1, 2, 3, 4, 5
len:   .word 5

.text
.global _start

_start:
    ldr r0, =array
    ldr r1, =len
    ldr r1, [r1]
    mov r2, #0

loop:
    cmp r2, r1
    beq end_program
    ldr r3, [r0, r2, LSL #2]
    add r3, r3, #1
    str r3, [r0, r2, LSL #2]
    add r2, r2, #1
    b loop

end_program:
    b end_program
