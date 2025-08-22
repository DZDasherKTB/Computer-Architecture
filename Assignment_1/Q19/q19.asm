; 2024ucs0087_A1_Q19
mov ax, 2000h        
mov ds, ax

mov si, 8000h        
mov cx, 5            ; number of locations
mov al, 1            ; initial value

update_loop:
mov [si], al         
inc al                
inc si                
dec cx
jnz update_loop

hlt
