.model small
.code
  Mov AH,4
  Mov AL,6
  Sub AH,2
  Sub AL,8
  AAS
  Mov DL,AH
  Mov CL,AL
  Add DL,48
  Mov AH,2
  Int 33
  Mov DL,CL
  Add DL,48
  Int 33
  Mov AH,76
  Int 33
End

; 46-28=18  46-21=25 41-28=13
; 1-8=9 with aux carry hence AAS does 9-3 in AL and AH-1