; 2024ucs0087_A1_Q14
mov ax, 2000h       ; load segment
mov ds, ax
mov bx, 1000h       ; offset
mov ax, 9ABCh       ; test value
mov [bx+10h], ax    ; write value into memory
mov ax, [bx+10h]    ; read it back
hlt