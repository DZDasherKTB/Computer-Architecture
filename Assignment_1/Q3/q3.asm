; 2024UCS0087_A1_Q3
mov ah, 55h    ; AH = 0x55 (0101 0101)
mov bh, 0AAh   ; BH = 0xAA (1010 1010)
xor ah, bh     ; AH = AH XOR BH = 0xFF
hlt