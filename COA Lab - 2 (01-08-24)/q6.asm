; When two numbers are added and sum is greater than or equal to 256 then 256 is subtracted from result and carry results
; Example: What is 76h+94h DAA
; Method: 76h=118 94h=148 118+148=266 is 266-256=10 and carry.
; (118 mod 16)+(148 mod 16)=6+4=10<16 hence no auxiliary carry.
; DAA will add 96. Hence 10+96=112. It is (112 div 16)(112 mod 16) is hexadecimal 70h
; Find Following:
; A) 15h+37h DAA  [21+55=76 (21 mod 16)+(55 mod 16)=5+7<15 no Auc (76 mod 16)>9 hence 6 is added 76+6=82 = 52h]
; B) 19h+37h DAA  [25+55=80 (25 mod 16)+(55 mod 16)=9+7>=15 Auc hence 6 is added 80+6=86 = 56h]
; C) 82h+63h DAA  [130+99=229>159 hence 96 is added 229+96=325 325-256=69 = 45h]
; D) 94h+83h DAA  [add 96 because of carry]
; E) 87h+65h DAA  [135+101=236>159 (236 mod 16)=12>9 236+96+6=338 338-256=82 = 52h]
; F) 89h+58h DAA  [137+88=225>159 (225 mod 16)=1<=9 but (137 mod 16)+(88 mod 16)=9+8>15 Auc hence 225+96+6=327=71 = 47h]
; G) 79h+89h DAA  [121+137=258 258-256=2 carry (121 mod 16)+(137 mod 16)=9+9>15 Auc hence 2+96+6=104 = 66h]
; H) 86h+94h

.model small
.code
    Mov BL,76h      ; 76h = 118
    Mov CL,94h      ; 94h = 148
    Mov DL,BL
    Add DL,CL       ; 118+148=266>256 carry, (118 mod 16)+(148 mod 16)=6+4>9 auc
    Mov AH,2
    Int 33          ; 266-256 = 10 -> (new line)
    Mov AL,DL
    DAA             ; 10+6+96=112 -> p
    Mov DL,AL
    Int 33
    Mov AH,76
    Int 33
End

; Output: 
;         p
; /****** need to verify ******/


; 15h+37h=4Ch 15+37=52 LR  52h=82  LSB non digit add 6
; 19h+37h=50h 19+37=56 PV  56h=86  Auc add 6
; 82h+63h=E5h 82+63=45 _E  45h=69  MSB non digit add 96
; 94h+83h=17h 94+83=77 _w  77h=119 carry add 96
; 87h+65h=ECh 87+65=52 _R  52h=82  both non digit add 102
; 89h+58h=E1h 89+58=47 _G  47h=71  MSB non digit and Auc add 102
; 79h+89h=02h 79+89=68 _h 68h=104  carry and Auc add 102
; 86h+94h=1Ah 86+94=80 16,128      carry and LSB non digit add 102