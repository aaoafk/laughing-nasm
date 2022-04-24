;; Hello World Program
;; Compile with: nasm -f elf helloworld.asm
;; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 helloworld.o -o helloworld

    section .data
    msg db 'Hello World!', 0Ah

    section .text
    global _start

_start:
    mov edx, 13
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0
    mov eax, 1
    int 80h
