//2024UCS0087_Q1_Factorial
.data
	n:      .word 5      
	result: .word 0
	
.global _start
_start:
	ldr r0,=n
	ldr r1,[r0]
	mov r2,#1
loop_start:
	cmp r1,#1
	
	ble end_factorial

	mul r2,r2,r1
	sub r1,r1,#1
	b loop_start
end_factorial:
	ldr r0,=result
	str r2,[r0]
end_program:
	b end_program