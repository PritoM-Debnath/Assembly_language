;TAKE 16 BIT BINARY COUNT THE 1 IN LOW BYTE, PRINT THE PARITY 
.MODEL SMALL
.STACK 100H
.DATA
 OD DW 0AH,0DH,"ODD PARITY",24H   
 EV DW 0AH,0DH,"EVEN PARITY",24H
    
.CODE MAIN
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV BX,0H
        MOV CX,16D
        MOV AH,01H
        TOP:
            INT 21H
            SHR AL,1H
            RCL BX,1H
        LOOP TOP 
        
        MOV DX,0H         
        MOV CX,8D
        TOP_1: 
        ROR BL,1H
        JNC NEXT
        INC DX
        NEXT:
        LOOP TOP_1
        
        SHR DX,01H
        JC ODD                     
        
        LEA DX,EV
        MOV AH,09H
        INT 21H 
        
        JMP EXIT
        
        ODD:
        LEA DX,OD
        MOV AH,09H
        INT 21H  
        
        EXIT:        
                                
    MAIN ENDP     
END MAIN