; 2024ucs0087_A1_Q13
mov ax, 1000h       ; load DS segment
mov ds, ax
mov bx, 1234h       ; offset
mov ax, 9ABCh       ; some new value
mov [bx], ax        ; write AX into memory at DS:BX
mov ax, [bx]        ; read it back to verify
hlt