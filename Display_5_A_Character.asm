.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV BL,1
    GO:
        CMP BL,5
        JNG L
        JMP EXIT
    L:
        MOV AH,2
        MOV DL,'A'
        INT 21H
        INC BL
        JMP GO
    EXIT:
        MOV AH, 4CH
        INT 21H
MAIN ENDP
END MAIN