;HelloWorld.asm
;Author: Kul Subedi

global _start

section .text
    _start:
        jmp short call_shellcode:
        shellcode:
            ; print HelloWorld! in screen
            mov eax, 0x4
            mov ebx, 0x1
            mov ecx, message
            ;mov edx, 12
            mov edx, mlen
            int 0x80

            ; exit program gracefully
            mov eax, 0x1
            mov ebx, 0x5
            int 0x80
        
        call_shellcode:
            call shellcode
            message: db "Welcome to Assembly!"
            mlen equ $-message


