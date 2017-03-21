; Stack Operation

global _start

section .text
    _start:
        mov eax, 0x41424344
        mov ebx, 0x0
        mov ecx, 0x0

        ; Push and Pop of r/m16 and r/m32

        ; Register Push and Pop

        push ax
        pop bx

        push eax
        pop ecx

        ; Memory Push and Pop

        push word[sample]
        pop ecx

        push dword[sample]
        pop edx


        ; Exit the program gracefully

        mov eax, 0x1
        mov ebx, 0x0
        int 0x80

section .data
    sample: db 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22




