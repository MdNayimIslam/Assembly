.MODEL SMALL
.STACK 100H
.DATA
    A DB 0DH, 0AH, 'INPUT FIRST DIGIT: $'
.CODE

MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    ; Variable String Print
    MOV AH, 9
    LEA DX, A
    INT 21H

    ; User Input
    MOV AH, 1
    INT 21H
    MOV BL, AL 

    ; Newline
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    
    ; User Input Print
    MOV AH, 2
    MOV DL, BL
    INT 21H

    ; Print
    MOV AH, 2
    MOV DL, 'N'
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN