; When two numbers are added. And sum of Mod 16 is more than 15 then Auxiliary carry results.
; AAA: does AL+6 and AH+1 when Auxiliary carry in previous addition.
; In following program output is 7E. Reason (40 mod 16)+(10 mod 16):8+10>15 hence aux carry.
; When 40+6 is done then output 1D

.model small
.code
  Mov BL,40
  Add BL,10
  Mov AH,68
  Mov AL,33
  AAA
  Mov DH,AH
  Mov DL,AL
  Add DL,48
  Mov AH,2
  Int 33
  Mov DL,DH
  Int 33
  Mov AH,76
  Int 33
End