SWAP USING STACK
.MODEL SMALL
.STACK 100H
.DATA

.CODE MAIN
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV AX,05H
        MOV BX,06H 
        
        PUSH AX
        PUSH BX
        
        POP AX
        POP BX
        
    MAIN ENDP
END MAIN