section .data
        rslt1 db "igual $",0
        len1 equ $ - rslt1

        rslt2 db "diferente $",0
        len2 equ $ - rslt2

        rslt3 db "maior $",0
        len3 equ $ - rslt3

        rslt4 db "maior ou igual $",0
        len4 equ $ - rslt4

        rslt5 db "menor $",0
        len5 equ $ - rslt5

        rslt6 db "menor ou igual $",0
        len6 equ $ - rslt6

        rslt7 db "zero $",0
        len7 equ $ - rslt7

        rslt8 db "diferente de zero $",0
        len8 equ $ - rslt8


section .text
global _start

_start:
        mov eax,3
        mov ebx,2
        cmp eax,ebx
        je equal
        jne notequal
        jg greater
        jge greaterorequal
        jl lesser
        jle lesserorequal
        jz zero
        jnz notzero

equal:
        mov eax,4
        mov ebx,1
        mov ecx,rslt1
        mov edx,len1
        int 80h
        jmp end

notequal:
        mov eax,4
        mov ebx,1
        mov ecx,rslt2
        mov edx,len2
        int 80h
        jmp end

greater:
        mov eax,4
        mov ebx,1
        mov ecx,rslt3
        mov edx,len3
        int 80h
        jmp end

greaterorequal:
        mov eax,4
        mov ebx,1
        mov ecx,rslt4
        mov edx,len4
        int 80h
        jmp end

lesser:
        mov eax,4
        mov ebx,1
        mov ecx,rslt5
        mov edx,len5
        int 80h
        jmp end

lesserorequal:
        mov eax,4
        mov ebx,1
        mov ecx,rslt6
        mov edx,len6
        int 80h
        jmp end

zero:
        mov eax,4
        mov ebx,1
        mov ecx,rslt7
        mov edx,len7
        int 80h
        jmp end

notzero:
        mov eax,4
        mov ebx,1
        mov ecx,rslt8
        mov edx,len8
        int 80h
        jmp end

end:
        mov eax,1
        mov ebx,0
        int 80h
