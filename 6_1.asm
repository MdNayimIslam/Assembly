.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC

    MOV AX,55
    MOV BX,53
    CMP AX,BX
    JG L
    MOV CX,BX
    MOV AH,2
    MOV DX,CX
    INT 21H
    JMP EXIT
    L:
        MOV CX,AX
        MOV AH,2
        MOV DX,CX
        INT 21H
    EXIT:
        MOV AH,4CH
        INT 21H

MAIN ENDP
END MAIN