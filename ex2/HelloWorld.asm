BITS 64

section .data
    stdout equ 1
    hello db 'Hello, World!', 0
    len_hello equ $ - hello

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, 13
    syscall

    mov rax, 60
    mov rdi, 0
    syscall