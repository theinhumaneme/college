ASSUME CS:CODE,DS:DATA
CODE SEGMENT
MOV AX,DATA
MOV DS,AX
MOV AL,00H
MOV DL,KEY
MOV CL, ARR_SIZE
MOV SI,OFFSET NUMBERS
ITER:
    CMP DL,[SI]
    JE FOUND
    INC SI
LOOP ITER
JMP EXT
FOUND:
    MOV AX,0FFFFH
    JMP EXT
EXT:
    HLT
CODE ENDS
DATA SEGMENT
NUMBERS DB 05H,04H,03H,02H,01H
ARR_SIZE DB 05H
KEY DB 01H
DATA ENDS
END