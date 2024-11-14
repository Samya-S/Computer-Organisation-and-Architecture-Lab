; Question: Program to find BH*CH*CL div 256. Assume each is less than 16. 
;           Let BH,CH,CL are 7,15,13 respectively 
;           7*15*13 = 1365 = 256*5+85 
;           then output: (ascii 5)

.model small
.code
    Mov BL,7
    Mov AL,15
    Mov CL,13
    Mul BL

    ; to do
    
    Int 33
    Mov AH,76
    Int 33
End

; Output: (ascii 5)