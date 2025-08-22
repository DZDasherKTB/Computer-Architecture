; 2024ucs0087_A1_Q7
mov al, 11010110b   ; A
mov bl, 10101101b   ; B
stc                 ; set CF = 1 (carry in)
adc al, bl          ; A + B + CF
hlt