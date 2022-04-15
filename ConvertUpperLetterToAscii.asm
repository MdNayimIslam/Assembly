.MODEL SMALL
.STACK 100H
.DATA
    A DB 0DH, 0AH, 'Enter Any Upper Leatter: $'
    C DB 0DH, 0AH, 'Ascii is: $'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, A
    INT 21H

    MOV AH, 1
    INT 21H
    mov BL, AL

    CMP AL, 'E'
    JNGE L1
    JG L2
    L1: ;A-E
        MOV AH, 9
        LEA DX, C
        INT 21H
        
        MOV AH, 2
        MOV DL, 54
        INT 21H

        SUB BL, 12
        MOV AH, 2
        MOV DL, BL
        INT 21H
        jmp ext
    L2:
        CMP AL, 'O'
        JNGE L3
        JG L4

    L3: ;F-O
        MOV AH, 9
        LEA DX, C
        INT 21H
        
        MOV AH, 2
        MOV DL, 55
        INT 21H

        sub bl, 22
        MOV AH, 2
        MOV DL, BL
        INT 21H
        jmp ext

    L4:
        CMP AL, 'Y'
        JNGE L5
        JG L6

    L5: ;P-Y
        MOV AH, 9
        LEA DX, C
        INT 21H
        
        MOV AH, 2
        MOV DL, 56
        INT 21H

        SUB BL, 32
        MOV AH, 2
        MOV DL, BL
        INT 21H
        jmp ext

    L6: ;Z
        MOV AH, 9
        LEA DX, C
        INT 21H
        
        MOV AH, 2
        MOV DL, 57
        INT 21H

        SUB BL, 42
        MOV AH, 2
        MOV DL, BL
        INT 21H
        jmp ext
    ext:
        MOV AH, 4CH
        INT 21H

MAIN ENDP
END MAIN