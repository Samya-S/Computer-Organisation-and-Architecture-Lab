; Read 5 digits. Output their sum. Input 87923 output 29

.model small
.code
  Mov CL,0
  Mov BH,48
  Mov BL,0
L:Mov AH,1
  Int 33
  Mov AH,BH
  Add AL,BL
  AAA
  Mov BH,AH
  Mov BL,AL
  Add CL,1
  Cmp CL,5
  JNE L
  Mov DL,BH
  Mov AH,2
  Int 33
  Mov DL,BL
  Add DL,48
  Int 33
  Mov AH,76
  Int 33
End