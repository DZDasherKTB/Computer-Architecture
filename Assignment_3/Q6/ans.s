//2024UCS0087_Q6_wovel_check

.global _start

_start:
	ldr r0,=char
	ldr r1,=vowels
	ldrb r2,[r0]
	mov r3,#0
	
vowel_check:
	cmp r3,#5
	beq end_program
	ldrb r4,[r1,r3]
	
	cmp r4,r2
	beq true
	
	add r3,r3,#1
	b vowel_check

true:
	mov r5,#1
	ldr r6,=result
	str r5,[r6]
	b end_program
end_program:
	b end_program	

.data
	char: .byte 'a'
	vowels: .byte 'a','e','i','o','u'
	.align 2
	result: .word 0
