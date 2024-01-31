section .text
    global my_Getnbr

my_Getnbr:
    xor rax, rax
    xor rdx, rdx
    xor rcx, rcx

    loop:
        movzx rdx, byte [rdi + rcx]

        cmp rdx, 0
        je  done

        cmp rdx, '0'
        jl  done
        cmp rdx, '9'
        jg  done

        sub rdx, '0'
        imul rax, rax, 10
        add rax, rdx

        inc rcx
        jmp loop

done:
    ret
