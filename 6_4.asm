.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AX,-48

    CMP AX,48
    JE L
    JG L1
    MOV AH,2
    MOV DX,49
    INT 21H
    JMP EXIT
    L:
        MOV AH,2
        MOV DX,48
        INT 21H
        JMP EXIT
    L1:
        MOV AH,2
        MOV DX,50
        INT 21H

EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
    END MAIN
