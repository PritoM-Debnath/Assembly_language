ORG 100H

JMP START 

MSG : DB "PRITOM DEBNATH",0DH, 0AH, 24H

START : 
    
    MOV DX,MSG
    MOV AH, 09H
    INT 21H
    
    MOV AH, 0
    INT 16H
    
RET 