; 1: Write program to make abcdefgh->abcdefgu where u is h'  73->72  72->73     H->I  I->H

.model small
.code
    Mov BL,73   ; BL:abcdefgh
    Mov DL,BL 
    Mov AH,2
    Int 33
    Add BL,1    ; BL:ijklmnop p=h'
    And BL,1    ; BL:0000000p
    And DL,254  ; DL:abcdefg0 since 254 is 11111110
    Or DL,BL    ; DL:abcdefgu
    Int 33
    Mov AH,76
    Int 33
End

; Output: IH

; H->I  I->H