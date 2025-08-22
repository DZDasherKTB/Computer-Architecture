; 2024ucs0087_A1_Q16
mov al, [3000h]      ; load value from memory location 3000h into AL
inc al               ; increment AL by 1
mov [3000h], al      ; store incremented value back into memory

hlt
