; Question 3: Write smallest program.
;             AH:20 AL:49 BH:156 outputs E.
;             AH:20 AL:148 BH:156 outputs D.
;             AH:10 AL:25 BH:120 Outputs A.

; Solution:

.model small
.code
    Mov AH,10
    Mov AL,25
    Mov BH,120
    Idiv BH
    Mov DL,AH
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End