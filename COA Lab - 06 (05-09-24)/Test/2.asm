; Question 2: Write program to make abcdefgh->abcdeugh where u=g.h When both g and h are 1 then u is 1 else 0.

; Solution:

.model small
.code
    Mov BL,01010011b    ; BL:abcdefgh
    Mov DL,BL 
    Mov AH,2
    Int 33
    And BL,3    ; BL:000000gh
    Add BL,1    ; BL:00000uvw if g=h=1 then uvw=100 else u=0
    And BL,4    ; BL:00000u00
    And DL,251  ; DL:abcde0gh since 251 is 11111011
    Or DL,BL    ; DL:abcdeugh
    Int 33
    Mov AH,76
    Int 33
End

; abcdefgh->abcdeugh  PT->P   QU->Q   RV->R   SW->W