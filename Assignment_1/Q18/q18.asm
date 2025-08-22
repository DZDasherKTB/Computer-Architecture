; 2024ucs0087_A1_Q18
mov ax, 2000h        
mov ds, ax           

; Preload 5 numbers at memory locations 7000H:7004H
mov [7000h], 05h
mov [7001h], 0Ah
mov [7002h], 03h
mov [7003h], 07h
mov [7004h], 0Fh

mov si, 7000h        
xor ax, ax           ; clear AX to store sum
mov cx, 5            ; counter

loopsum:
add al, [si]         ; add memory[SI] to AL
adc ah, 0            ; add carry to AH if sum exceeds 255
inc si               
dec cx               ; decrease counter
jnz loopsum          ; repeat if CX != 0

; AX now contains sum
hlt
