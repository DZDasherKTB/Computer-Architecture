; 2024ucs0087_A1_Q11
mov ax, 3000h       
mov ds, ax          ; DS = 3000h
mov si, 2000h       ; SI = 2000h

mov ax, 1234h       ; let's put some data in AX
mov [si], ax        ; write AX into memory at DS:SI
mov ax, [si]        ; read back the value to AX to verify

hlt
