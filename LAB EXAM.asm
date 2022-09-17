.MODEL SMALL
.STACK 100H
.DATA

INPUT DW "Input:",24H
OUTPUT DW "Output: the correct order is ",24H           

.CODE MAIN
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX 
        
               
        LEA DX,INPUT 
        MOV AH,09H
        INT 21H  
                
 
        MOV AH, 01H 
        INT 21H  
        MOV BL,AL
        
        MOV AH, 01H 
        INT 21H  
        MOV CL,AL 
        
        MOV DL,0AH      ;NEW
        MOV AH,02H
        INT 21H
        
        MOV DL,0DH      ;LINE
        MOV AH,02H
        INT 21H         
        
        LEA DX,OUTPUT      ;OUTPUTLINE
        MOV AH,09H
        INT 21H          
                  
        CMP BL,CL
        JE EQ 
        JG GTR
        JL LS
        
        
        EQ:
        MOV DL,BL
        MOV AH,02H
        INT 21H
        
        MOV DL,CL
        MOV AH,02H
        INT 21H
        
                 
        JMP EXIT
       
             
             
        GTR:                 
        MOV DL,CL
        MOV AH,02H
        INT 21H 
        
        MOV DL,BL
        MOV AH,02H
        INT 21H
        
        
        JMP EXIT 
        
        LS:        
        MOV DL,BL
        MOV AH,02H
        INT 21H
        
        MOV DL,CL
        MOV AH,02H
        INT 21H
        
             
        EXIT:
        
        MOV AH,01H
        INT 16H
        
        
        
        
    MAIN ENDP
END MAIN       
