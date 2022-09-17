.MODEL SMALL
.STACK 100H
.DATA 
    MSG DB "HELLO WORLD",0AH,0DH,24H 
    MSG1 DB "BYE WORLD",0AH,0DH,24H        

.CODE MAIN
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX 
        
        MOV CL,01H
        MOV BL,06H
         
        L1:
        LEA DX,MSG
        MOV AH,09H
        INT 21H 
        INC CL 
        
        CMP CL,BL
        JL L1
        JG EXIT
        
        EXIT:
        MOV DL,0AH
        MOV AH,02H 
        INT 21H
        
        MOV DL,0DH
        MOV AH,02H  
        INT 21H
         
        LEA DX,MSG1
        MOV AH,09H
        INT 21H 
       
        
    MAIN ENDP
END MAIN
