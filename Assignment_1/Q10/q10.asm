; 2024ucs0087_A1_Q10
mov ax, 0F0F0h   ; AX = F0F0h
mov bx, 00F0Fh   ; BX = 0F0Fh
xor ax, bx       ; AX = AX XOR BX → FFFFh
hlt
