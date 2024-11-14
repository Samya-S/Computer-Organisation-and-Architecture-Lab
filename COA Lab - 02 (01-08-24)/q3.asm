.model small
.code
    Mov BL,69
    Add BL,35
    Mov AL,70
    DAA
    Mov DL,AL
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End

; Output: F
; 69+35:no auc-70(F), 62+35:auc-76(L) | try 69+90, 69+91
; When DAA is deleted in both cases F.


; Every number is between 0 and 255.
; When two numbers are added and sum of mod 16 is greater then 15 then auxiliary carry results.

; Let 62+35 is done. (62 mod 16)+(35 mod 16)=14+3>15 hence auxiliary carry
; Let 69+35 is done. (69 mod 16)+(35 mod 16)=5+3<=15 hence no auxiliary carry

; DAA: if auxiliary carry is present then 6 is added to AL. If carry is present then 96 is added to AL.