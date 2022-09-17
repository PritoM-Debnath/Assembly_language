.MODEL SMALL
.STACK 100H
.DATA 
    MSG DB "ENTER A NUMBER",0AH,0DH,24H  
    MSG1 DB "EQUAL",0AH,0DH,24H  
    MSG2 DB "GRATER",0AH,0DH,24H
    MSG3 DB "LOWER",0AH,0DH,24H
           

.CODE MAIN
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX 
        
        MOV CL,"5" 
        
        LEA DX,MSG 
        MOV AH,09H
        INT 21H  
        
        ;MOV CX, 0H 
        MOV AH, 01H 
        INT 21H  
        MOV BL,AL
        
        CMP BL,CL
        JE EQ 
        JG GTR
        JL LS
        
        
        EQ:
        MOV DL,0AH
        MOV AH,02H
        INT 21H
        
        MOV DL,0DH
        MOV AH,02H
        INT 21H
        
        LEA DX,MSG1 
        MOV AH,09H 
        INT 21H
         
        JMP EXIT
       
             
             
        GTR:
        MOV DL,0AH
        MOV AH,02H
        INT 21H
        
        MOV DL,0DH
        MOV AH,02H
        INT 21H
             
        LEA DX,MSG2 
        MOV AH,09H
        INT 21H 
        
        JMP EXIT 
        
        LS:
        MOV DL,0AH
        MOV AH,02H
        INT 21H
        
        MOV DL,0DH
        MOV AH,02H
        INT 21H
             
        LEA DX,MSG3 
        MOV AH,09H
        INT 21H 
        
        
        
             
        EXIT:
        MOV AH,01H
        INT 16H
        
        
        
        
    MAIN ENDP
END MAIN       
