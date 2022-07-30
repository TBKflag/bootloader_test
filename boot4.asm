[org 0x7c00]
[bits 16]

mov ax,0xb800
mov es,ax
mov bx,0
mov cx,0x7D0

lab:
    mov dl,'h'
    mov dh,0x10
    mov [es:bx],dx
    add bx,2
    loop lab
    jmp $

times 510-($-$$) db 0
dw 0xaa55