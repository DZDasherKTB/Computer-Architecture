//2024UCS0087_Q2_Array_Reversal
.global _start
_start:
	ldr r0, =array
	ldr r1, =len
	ldr r1, [r1]
	mov r2, #0
	
push_loop:
	cmp r2,r1
	beq pop_start
	
	ldr r3,[r0,r2,LSL #2]
	push {r3}
	
	add r2,r2,#1
	
	b push_loop
	
pop_start:
	mov r2,#0
	b pop_loop
	
pop_loop:
	cmp r2,r1
	beq end_program
	pop {r3}
	
	str r3,[r0,r2,LSL #2]
	
	add r2,r2,#1
	
	b pop_loop
end_program:
	b end_program
	
.data
	array: .word 1,2,3,4,5
	len: .word 5
	
	
	