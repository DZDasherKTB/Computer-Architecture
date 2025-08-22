; 2024ucs0087_A1_Q8
mov ah, 0ABh     ; AH = ABh
mov bh, 5Ch      ; BH = 5Ch
and ah, bh       ; AH = AH AND BH ? 08h
hlt              ; stop execution
