.model small
.code
    Mov BL,80
    Mov AL,200
    Mul BL          ; AH = 62, AL = 128
    Mov DL,AH
    Mov DH,AL
    Mov AH,2
    Int 33          ; prints DL i.e. AH i.e.  62   and AL becomes DL
    Mov DL,DH
    Int 33          ; prints DL i.e. DH i.e. 128   and AL becomes DL
    Mov AH,76
    Int 33
End

; Output: (ascii 62)(ascii 128)
;         80*200 = 16000 = 256*62 + 128

; Mul BL 
; Computes AL*BL and stores in (256*AH + AL) i.e AH:AL
; i.e. AH=(result / 256)  AL=(result % 256)
; alternate: result = AH*256 + AL = AH:AL
; AH:AL is short form of AH*256+AL.
; In place of BL any byte size register can be used