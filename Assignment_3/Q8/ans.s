//2024UCS0087_Q8_Reverse_string
.global _start

_start:
    ldr r0, =str 
    ldr r1, =len
    ldr r1, [r1]        
    sub r1, r1, #1      
    add r1, r0, r1 
    
swap_loop:
    cmp r0, r1
    bge end_program    
    ldrb r2, [r0]       
    ldrb r3, [r1]       

    strb r3, [r0]       
    strb r2, [r1]       

    add r0, r0, #1      
    sub r1, r1, #1      

    b swap_loop         

end_program:
    b end_program   

.data
    str: .asciz "Dashpreet"
    .align 2
    len: .word 9
    result: .word 0