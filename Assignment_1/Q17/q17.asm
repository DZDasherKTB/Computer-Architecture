; 2024ucs0087_A1_Q17
mov ax, 2000h        
mov ds, ax          

mov [4000h], 12h     ; preload first value
mov [4001h], 34h     ; preload second value

mov al, [4000h]      ; load first value into AL
mov bl, [4001h]      ; load second value into BL
mov [4000h], bl      ; store second value into first location
mov [4001h], al      ; store first value into second location

hlt
