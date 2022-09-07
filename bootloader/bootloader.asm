[org 0x7c00]

mov bx, string
call println

string:
    db "Hello World!", 0

jmp $

%include "lib/print.asm"

times 510 - ($ - $$) db 0
db 0x55, 0xaa