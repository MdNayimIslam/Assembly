.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC

MOV AX,-50
CMP AX,0
JG L
NEG AX
MOV AH,2
MOV DX,AX
INT 21H
JMP EXIT
L:
    MOV AH,2
    MOV DX,AX
    INT 21H
EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
    END MAIN
