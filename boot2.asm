[org 0x7c00]

[bits 16]

mov ax,0xb800
mov es,ax
mov ah,0x0c
mov al,'X'
mov [es:0],ax
mov al,'i'
mov [es:2],ax

jmp $

times 510-($-$$) db 0
dw 0xaa55