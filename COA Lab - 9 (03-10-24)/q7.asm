.model small
.code
  Mov BL,00000000b
  Push BX
  Popf
  Mov AL,90
  DAS
  Mov DL,AL
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End 

; o/p T
; Remove DAS o/p Z

; When AL mod 16 >9 then DAS subtracts 6 from AL and makes new auc as 1.
; 90 mod 16=10 hence 90-6 is done. Replace 90 by 89 no subtraction. 89 mod 16=9