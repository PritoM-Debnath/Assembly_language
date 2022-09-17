.MODEL  SMALL
.STACK 10H
.DATA

X DW 36H
Y DW 34H

.CODE MAIN
    MAIN PROC          
        MOV AX, @DATA   ; THIS TWO LINES MUST BE INCLUDED FOR THE DATA SEGMENT LOADING 
        MOV DS, AX
        
        MOV CX, 0H 
        MOV AH, 01H     ;  TAKES INPUT   
        L1:
        INT 21H                   
        MOV DX,0H
        MOV DL, AL
        PUSH DX
        INC CX
        
        CMP AL,0D
        JE BLOOP
               
        JMP L1 
        BLOOP :
                  
        MOV DL,AL       ; MOVE THAT INPUT IN DL
        
                        ; FOR PRINTING => DL VALUE IS PRINTED
        MOV AH, 02H 
        L2:             ;LEBEL  
        INT 21H
        JMP L2
    MAIN ENDP
END MAIN
        