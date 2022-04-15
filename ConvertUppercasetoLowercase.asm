.MODEL SMALL
.STACK 100H
.DATA
    A DB 0DH, 0AH, 'Enter Any Uppercase: $'
    C DB 0DH, 0AH, 'Lowercase is: $'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX


    MOV AH, 9
    LEA DX, A
    INT 21H

    MOV AH, 1
    INT 21H
    ADD BL, AL
    ADD BL, 32

    MOV AH, 9
    LEA DX, C
    INT 21H
    
    MOV AH, 2
    MOV DL, BL
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN