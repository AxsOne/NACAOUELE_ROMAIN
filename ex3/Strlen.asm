BITS 64

section .text
    global my_Strlen

my_Strlen :
    xor rcx, rcx
    
    loop:
        cmp byte[rdi + rcx], 0
        je end_line
        inc rcx
        jmp loop


    end_line:
        mov rax, rcx
        ret