ORG 0000H

; -------- Addition --------
MOV A, #25H      ; Load A = 25H
MOV B, #15H      ; Load B = 15H
ADD A, B         ; A = A + B ? Result in A

MOV R0, A        ; Store addition result in R0

; -------- Subtraction --------
MOV A, #25H      ; A = 25H
MOV B, #15H      ; B = 15H
CLR C            ; Clear carry
SUBB A, B        ; A = A - B

MOV R1, A        ; Store subtraction result in R1

; -------- Multiplication --------
MOV A, #05H      ; A = 5
MOV B, #04H      ; B = 4
MUL AB           ; A × B ? Result in A (low), B (high)

MOV R2, A        ; Store lower byte
MOV R3, B        ; Store higher byte

; -------- Division --------
MOV A, #20H      ; A = 32
MOV B, #04H      ; B = 4
DIV AB           ; A / B ? Quotient in A, Remainder in B

MOV R4, A        ; Store quotient
MOV R5, B        ; Store remainder

END