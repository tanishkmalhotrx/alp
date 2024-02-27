org 100h
mov si,1100h
mov cl,04
mov ch,04
mov al,[si]
inc si

up: cmp al,[si]
jc big
mov bl,[si]
mov [si],al
dec si
mov [si],bl
inc si
inc si
dec ch
jnz up
jmp outer

big: mov al,[si]
inc si
dec ch
jnz up

outer: mov si,1100h
mov al,[si]
inc si
mov ch,04
dec cl
jnz up
hlt