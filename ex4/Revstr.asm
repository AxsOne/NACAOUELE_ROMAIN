BITS 64

section .text
    global my_Revstr

my_Revstr:
    xor rax, rax
find_length:
    cmp byte [rdi + rax], 0
    je  end_find_length
    inc rax
    jmp find_length
end_find_length:
    mov rcx, rax   
    dec rcx 
    shr rcx, 1 

    mov rsi, rdi 
    add rsi, rax
    dec rsi 
reverse_loop:
    cmp rdi, rsi
    jae end_reverse
    mov al, [rdi]
    mov bl, [rsi]
    mov [rdi], bl
    mov [rsi], al

    inc rdi
    dec rsi

    jmp reverse_loop

end_reverse:
    ret
