.data
    src:  .word 10, 20, 30, 40, 50   
    len:  .word 5                    
    .align 2
    dest: .space 20                  

.text
.global _start

_start:
    ldr r0, =src        
    ldr r1, =dest       
    
    ldr r2, =len
    ldr r2, [r2]     

copy_loop:
    cmp r2, #0
    beq end_program

    ldr r3, [r0], #4

    str r3, [r1], #4
    sub r2, r2, #1
    b copy_loop

end_program:
    b end_program