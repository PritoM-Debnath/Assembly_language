.MODEL  SMALL
.STACK 10H
.DATA

MSG : DB "PRITOM DEBNATH",0DH,0AH,24H 
MSG1 : DB "20-42414-1", 0DH,0AH,24H

.CODE MAIN
    MAIN PROC          
        MOV AX, @DATA   ; THIS TWO LINES MUST BE INCLUDED FOR THE DATA SEGMENT LOADING 
        MOV DS, AX
        
        MOV DX, MSG
        MOV AH, 09H
        INT 21H 
        
        LEA DX, MSG1
        MOV AH, 09H
        INT 21H
        
        MOV AH, 0
        INT 16H
    MAIN ENDP
END MAIN
        