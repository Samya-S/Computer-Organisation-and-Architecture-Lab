.model small
.code
  Mov BL,00010000b
  Push BX
  Popf
  Mov AL,71
  DAS
  Mov DL,AL
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End 

; Output: A 
;         when 1->0 then G

; 4th bit stores auxilary carry.
; When auc is present and DAS is executed then 6 is subtracted from AL.