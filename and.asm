.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC

    
    
    ; mov bx,00110011b
    mov bx,00001101b
    mov ah,2
    mov dx,bx
    int 21h
        MOV AH,4CH
        INT 21H

MAIN ENDP
END MAIN