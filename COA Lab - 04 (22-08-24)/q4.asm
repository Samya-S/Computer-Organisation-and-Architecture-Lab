.model small
.code
    Mov AH,2            ; line 0,1
    Mov DL,cs:[16]      ; line 2,3,4,5,6
    Int 33              ; line 7,8
    Mov AH,76           ; line 9,10
    Int 33              ; line 11,12
    db 65,66,67,68,69,70,71,72,73,74,75,76,77
End

; Output: D

; It shows 68 is at line 16, 67 at line 15, 65 at line 13, ...

; machine code of Mov DL,cs:[16] is in 5 numbers

; When cs:[10] is used then output is L(76)
; When cs:[0] is used then ascii 180