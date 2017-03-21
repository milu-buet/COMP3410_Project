; Arithmetic Instruction
global _start
section .text
    _start: 
        ; Register Based Addition
        mov eax, 0
        add al, 0x22
        add al, 0x11

        mov ax, 0x1122
        add ax, 0x3344

        mov eax, 0xffffffff
        add eax, 0x10

        ; Memory Based Addition
        mov eax, 0
        add byte[var1], 0x22
        add byte[var1], 0x11
        
        add word[var2], 0x1122
        add word[var2], 0x3344

        mov dword[var3], 0xffffffff
        add dword[var3], 0x10

        ; Clear/ Set/ Complement Carry Flag

        clc
        stc
        cmc
       
        ; Add With Carry

        mov eax, 0
        stc
        adc al, 0x11

        mov ax, 0x1122
        stc
        add ax, 0x3344

        mov eax, 0xffffffff
        stc
        add eax, 0x10
        
        ;Subtract
        mov eax, 10
        mov eax, 5
        stc
        sbb eax, 4

        ; Increment and Decrement

        dec eax
        inc eax
        dec eax
    
        ; Exit Program
        mov eax, 1
        mov ebx, 0x10
        int 0x80


section .data
        var1 db 0x00 
        var2 dw 0x0000
        var3 dd 0x00000000
