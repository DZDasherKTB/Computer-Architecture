.data
    array:     .word 10, 5, 45, 12, 30, 99, 21
    len:       .word 7      
    
    .align 2
    max_result: .word 0    

.text
.global _start

_start:
    ldr r0, =array      
    ldr r1, =len
    ldr r1, [r1]      

    ldr r2, [r0]       

    mov r3, #1          

find_max_loop:
    cmp r3, r1
    beq end_loop      
    ldr r4, [r0, r3, LSL #2] 
    cmp r4, r2          
    ble skip_update    
    mov r2, r4          
skip_update:
    add r3, r3, #1      
    b find_max_loop

end_loop:
    ldr r0, =max_result
    str r2, [r0]        

end_program:
    b end_program      