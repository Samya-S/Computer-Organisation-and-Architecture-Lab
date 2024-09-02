; 220 is 220-256=-36
; 226 is 226-256=-30
; imul R will perform AH*256+AL=R*AL (-36)*(-30)=1080=256*4+56 
; Hence output of following program is ascii 4 and 56.
; R can be AL,BL,CL,DL,AH,BH,CH,DH

.model small
.code
    Mov AL,220
    Mov BH,226
    imul BH
    Mov DL,AH
    Mov DH,AL
    Mov AH,2
    Int 33
    Mov DL,DH
    Int 33
    Mov AH,76
    Int 33
End

; Output: (ascii 4)(ascii 56)

; When imul is replaced by mul then unsigned multiplication is done. Ascii of 194 and 56. 
; Calculator will not be permitted.
; 220*226=(256-36)*(256-30)=256*256-(30+36)*256+36*30=256*(256-66+4)+56=256*194+56

; When 220 and 30 are multiplied then (-36)*(+30)=-1080=256*(-5)+200 
; hence ascii of (256-5)=251 and 200 are outputted.

; Do imul 216,226 (-30)*(-40)=1200=256*4+176 ascii 4 and 176
; mul 216 and 226 (256-40)*(256-30)=256*256-(30+40)*256+1200=256*(256-70)+256*4+176=256*(256-66)+176 190,176