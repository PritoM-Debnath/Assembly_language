;COUNT THE NUMBER OF 1 IN BX
.MODEL SMALL
.STACK 100H
.DATA

.CODE MAIN
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV AX,0H
        MOV CX,16D
        MOV BX,7H 
        
        TOP:
        ROL BX,1H
        JNC SKIP 
        INC AX
        
        SKIP: 
        LOOP TOP
                  
        ADD AX,30H          
        MOV DX,AX
        MOV AH,02H
        INT 21H
        
        
    MAIN ENDP
END MAIN