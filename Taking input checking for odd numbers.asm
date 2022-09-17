;Write a program to take an input from the user, and check whether it is a number or 
;not. If it is a number, find whether it is odd or even using logical instructions.

.MODEL SMALL
.STACK 100H
.DATA 
OD DW  0AH,0DH,"ODD",24H 
EV DW  0AH,0DH,"EVEN",24H  
NT DW  0AH,0DH,"NOT A NUMBER",24H

.CODE MAIN
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX   
        
        MOV AH,01H
        INT 21H 
        
        MOV BX,0H
        MOV BL,AL
        
        CMP BL,30H
        JL EXIT
        
        CMP BL,39H
        JG EXIT
        
        SHR BL,1H
        JC ODD
         
        LEA DX,EV
        MOV AH,09H
        INT 21H
        
        JMP FINAL
        ODD:
        LEA DX,OD
        MOV AH,09H
        INT 21H
        JMP FINAL
         
        EXIT:
        LEA DX,NT
        MOV AH,09H
        INT 21H
        
        FINAL:
        
        
    MAIN ENDP
END MAIN