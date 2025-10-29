//2024UCS0087_Q4_No. of set Bits
.global _start
_start:
	ldr r0,=num
	ldr r0,[r0]
	mov r1,#32
	mov r2,#0

loop_check:
	cmp r2,r1
	beq end_program
	
	and r3,r0,#1
	add r4,r4,r3
	lsr r0, r0, #1     

    sub r1, r1, #1
    
    b loop_check

end_program:
	ldr r0, =result
    str r4, [r0]
	b end_program
	
.data
	num: .word 10
	result: .word 0
	
	