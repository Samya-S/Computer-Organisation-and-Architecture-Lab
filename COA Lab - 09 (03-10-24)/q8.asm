.model small
.code
  Mov BL,00000000b
  Push BX
  Popf
  Mov AL,90
  DAS
  Mov AL,72
  DAS
  Mov DL,AL
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End 

; o/p B 
; Remove any of DAS o/p H

; Reason: First DAS makes auc 1 since 90 mod 16=10>9
; Since auc is present second DAS subtracts 6 from 72.
; When Mov BL,00010000b is used then output is B even when first DAS is removed.
; Conclusion: If auc is present or AL mod 16>9 or both then 6 is subtracted from AL and new auc is made 1.