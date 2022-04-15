.MODEL SMALL
.STACK 100H
.DATA
    O DB 0DH, 0AH, 'Press Y to run the program or press any key to exit: $'
    A DB 0DH, 0AH, 'INPUT FIRST DIGIT: $'
    B DB 0DH, 0AH, 'INPUT SECOND DIGIT: $'
    C DB 0DH, 0AH, 'INPUT THERD DIGIT: $'
    R DB 0DH, 0AH, 'BIGGEST NUMBER: $'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    L:
        MOV AH, 9
        LEA DX, O
        INT 21H

        MOV AH,1
        INT 21H 
        MOV BL,AL
        CMP BL, 'Y'
        JE L0
        JMP EXIT

    L0:
        MOV AH, 9
        LEA DX, A
        INT 21H
        
        MOV AH,1
        INT 21H 
        MOV BL,AL

        MOV AH, 9
        LEA DX, B
        INT 21H

        MOV AH,1
        INT 21H
        MOV BH,AL

        MOV AH, 9
        LEA DX, C
        INT 21H

        MOV AH,1
        INT 21H
        MOV CL,AL

        CMP BL,BH
        JGE L1

        CMP BH,CL
        JGE L2

        MOV AH, 9
        LEA DX, R
        INT 21H

        MOV AH,2
        MOV DL,CL
        INT 21H
        JMP L

        L2:
            MOV AH, 9
            LEA DX, R
            INT 21H

            MOV AH,2
            MOV DL,BH
            INT 21H
            JMP L
        
        L1:
            CMP BL,CL
            JGE L3

            MOV AH, 9
            LEA DX, R
            INT 21H

            MOV AH,2
            MOV DL,CL
            INT 21H
            JMP L

        L3:
            MOV AH, 9
            LEA DX, R
            INT 21H

            MOV AH,2
            MOV DL,BL
            INT 21H
            JMP L

    EXIT:
        MOV AH, 4CH
        INT 21H

MAIN ENDP
END MAIN