.model small
.code
    Mov AH,2            ; line 0,1
    Mov DL,cs:[25]      ; line 2,3,4,5,6
    Int 33              ; line 7,8
    Mov AH,76           ; line 9,10
    Int 33              ; line 11,12
    Add BL,CL
    db 65,66,67,68,69,70,71,72,73,74,75,76,77
End

; Output: K

; When Add BL,CL is deleted then M. Hence size is 2.
; Replace Add BL,CL by Mov cs:[12],byte ptr 30 (6) o/p G
; Mov cs:[12],BL (5)
; Adc cs:[12],BL (5)
; Adc cs:[12],byte ptr 2  (6)
; Cmp BL,20 (3)  Cmp BL,CL (2)
; Sub CL,20 (3) it does CL=CL-20 if initial CL<20 carry 1 else 0