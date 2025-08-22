; 2024ucs0087_A1_Q6
mov al, 10111101b   ; A
mov bl, 01100101b   ; B
stc                 ; Borrow = 1
sbb al, bl          ; AL = A - B - CF
; Result = 01010111b (57h), CF=0, OF=1
