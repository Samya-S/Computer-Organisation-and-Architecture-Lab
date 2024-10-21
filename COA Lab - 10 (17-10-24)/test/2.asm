; Q2: Following program outputs ascii 183 and 90. 
;     Write missing lines. 
;     Do not use numbers in them. Mov AH,2 and int 33 are permitted.

.model small
.code
    Mov SI,offset L
    Mov DH,131
    Mov cs:[SI],DH
  L:Add CX,256*184+80
    Mov BH,90
    ; <smallest missing lines>
    Mov AH,76
    Int 33
End

; Solution:

.model small
.code
    Mov SI,offset L
    Mov DH,131
    Mov cs:[SI],DH
  L:Add CX,256*184+80
    Mov BH,90
    Mov DX,AX ;
    Mov AH,2  ;
    Int 33    ;
    Mov DL,DH ;
    Int 33    ;
    Mov AH,76
    Int 33
End