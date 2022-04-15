.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV BH,0
    MOV BL,65
    L1:
        MOV AH,2
        MOV DL,BL
        INT 21H
    
        INC BL
        INC BH

        CMP BL,90
        JG EXIT

        CMP BH,5
        JE L2

        JMP L1
    L2:
        MOV AH,2
        MOV DL,10
        INT 21H
        MOV DL,13
        INT 21H

        MOV BH,0
        JMP L1

    EXIT:
        MOV AH, 4CH
        INT 21H
MAIN ENDP
END MAIN