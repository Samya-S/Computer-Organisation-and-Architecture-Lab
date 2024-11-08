; Question: Find number of initial y's. Assume less than 10.

.model small
.code
  Mov AX,CS
  Mov ES,AX
  Mov CH,0
  Mov CL,20
  Mov DI,offset K
  Mov AL,'y'
  CLD
  Repe Scasb
  Mov DL,19
  Sub DL,CL
  Add DL,48  ; Ascii of zero is 48
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "yyyypgadrtfus"
End 

; Output: 4

; Because of Repe DI is incremented 5 times hence CL=20-5=15 19-15=4
; When Add DL,48 is deleted then ascii(4):brick is printed
; 0:48 1:49 2:50 .... 9:57