; print str start in [bx]
println:
    mov al, [bx]
    cmp al, 0
    je .println_ret
    call printChar
    inc bx
    jmp println
    .println_ret:
    ret

; print char in al
printChar:
    mov ah, 0x0e
    int 0x10
    ret