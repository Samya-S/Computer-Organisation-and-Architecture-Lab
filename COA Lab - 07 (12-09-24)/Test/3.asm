; Question 3: Write equivalent program of following using Mov,Or,Int

.model small
.code
    Mov BL,p;
    Mov BH,p;
    Mov DL,BH
    Xor DL,BL
    Or  DL,BH
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End

; Solution:

.model small
.code
    Mov BL,p;
    Mov BH,q;
    Mov DL,BL
    Or  DL,BH
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End

; q+xor(p,q) = q+pq'+qp' = q+pq' = p+q