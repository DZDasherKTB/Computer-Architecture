; 2024ucs0087_A1_Q12
mov ax, 1000h       ; load segment
mov ds, ax          ; DS = 1000h
mov ax, 5678h       ; some test data
mov [3000h], ax     ; write AX into memory at DS:3000h
mov ax, [3000h]     ; read back into AX to verify
hlt