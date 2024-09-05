; 2: Write program to make abcdefgh->abcdefgf    LM->M  IH->H

.model small
.code
    Mov BL,01001100b  ; BL:abcdefgh
    Mov DL,BL
    Mov AH,2
    Int 33
    And BL,4     ; BL:00000f00
    And DL,254   ; DL:abcdefg0 since 254 is 11111110
    Add BL,252   ; Carry = f
    Adc DL,0     ; DL:abcdefgf
    Int 33
    Mov AH,76
    Int 33
End

; Output: LM

; LM->M  IH->H    abcdefgh->abcdefgf