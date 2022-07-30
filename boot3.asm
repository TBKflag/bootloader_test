;use vga print word

[org 0x7c00]

[bits 16]

mov si,msg
mov bx,0xb800
mov es,bx
mov di,0

lab:
    mov ah,0x2c ; background color
    mov al,[si]
    mov [es:di],ax ; 0xb800 gpu start, di is gpu deviation, put ax in this memory
    add di,2 ; di + 2
    inc si ; si + 1

    cmp al,0 
    jne lab
    jmp $

msg:
    db "hello msg from sin",0
    times 510-($-$$) db 0
    dw 0xaa55