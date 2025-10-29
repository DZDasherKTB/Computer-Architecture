.data

    my_string: .asciz "Dashpreet"   
    .align 2
    length:    .word 0        

.text
.global _start

_start:
    ldr r0, =my_string  
    mov r1, #0          

count_loop:

    ldrb r2, [r0, r1]

    cmp r2, #0
    beq end_loop        
    add r1, r1, #1
    b count_loop

end_loop:

    ldr r0, =length     
    str r1, [r0]       

end_program:
    b end_program      