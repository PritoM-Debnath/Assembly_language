.MODEL SMALL
.STACK 100H
.DATA 
    MSG DB "HELLO WORLD",0AH,0DH,24H         ; 

.CODE MAIN
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX 
         
        L1:
        LEA DX,MSG
        MOV AH,09H
        INT 21H 
        

        JMP L1
        
        
        
    MAIN ENDP
END MAIN
