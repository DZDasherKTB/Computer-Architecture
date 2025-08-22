; 2024ucs0087_A1_Q15
mov ax, 4000h       ; load SS segment
mov ss, ax
mov bp, 3000h       ; offset
mov ax, 9ABCh       ; test value
mov [bp+20h], ax    ; write value into memory at SS:BP+20h
mov ax, [bp+20h]    ; read back
hlt
