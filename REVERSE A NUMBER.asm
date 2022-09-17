
;TAKE INPUT AND PRINT IN REVERSE
.MODEL SMALL
.STACK 100H
.DATA  
MSG DW "BEFORE REVERSE",0AH,0DH,24H 
MSG1 DW "AFTER REVERSE",0AH,0DH,24H

.CODE MAIN
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        LEA DX,MSG
        MOV AH,09H
        INT 21H 
        MOV CX,03H
        
        MOV AH,01H
        TOP:
        INT 21H
        MOV BX,0H
        MOV BL,AL
        PUSH BX  
        LOOP TOP  
        
        MOV DX,0AH
        MOV AH,02H
        INT 21H
        
        MOV DX,0DH
        MOV AH,02H
        INT 21H
                
        
        LEA DX,MSG1
        MOV AH,09H
        INT 21H  
        MOV CX,03H
        
        TOP1:
        POP DX
        MOV AH,02H
        INT 21H
        LOOP TOP1
        
    MAIN ENDP
END MAIN