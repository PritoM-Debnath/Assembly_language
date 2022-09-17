; ROL to count the number of 1 bits in BX, without changing BX. Put the answer in AX.
.MODEL SMALL
.STACK 100H
.DATA

.CODE MAIN
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX   
        
        XOR BX,BX   
        MOV BX,1111111100000000B 
        MOV AX,0H
        MOV CX,16D
        
        TOP:
        ROL BX,1H
        JNC SKIP
        INC AX
        
        SKIP:
        LOOP TOP
        
        
        
        
    MAIN ENDP
END MAIN