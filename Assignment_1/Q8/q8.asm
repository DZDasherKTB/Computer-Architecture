; 2024ucs0087_A1_Q8
mov ax, 1234h
mov bx, 5678h
mul bx       ; DX:AX = AX * BX -> DX=0626h, AX=0060h ; CF=1, OF=1
hlt