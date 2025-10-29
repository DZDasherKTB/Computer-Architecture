//2024UCS0087_Q5_uppercase

.global _start

_start:
	ldr r0,=char
	ldrb r1,[r0]
	
	cmp r1,#'a'
	blt end_program
	
	cmp r1,#'z'
	bgt end_program
	sub r1,r1,#32
	strb r1, [r0]

end_program:
	b end_program	

.data
	char: .byte 'g'