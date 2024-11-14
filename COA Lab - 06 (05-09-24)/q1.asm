.model small
.code
    Mov DL,01001001b
    Mov AH,2
    Int 33
    And DL,11100101b
    Int 33
    OR DL,5
    Int 33
    Mov AH,76
    Int 33
End

; Output: IAE 
;         (73,65,69)