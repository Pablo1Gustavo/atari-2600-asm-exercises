    PROCESSOR 6502
    SEG CODE
    ORG $F000

;|-----------------------------------------
;| Your goal here is to just store some
;| values into zero-page memory positions.
;|-----------------------------------------

START:
    LDA #$A         ; Load the A register with the hexadecimal value $A
    LDX #%11111111  ; Load the X register with the binary value %11111111
    STA $80         ; Store the value in the A register into memory address $80
    STX $81         ; Store the value in the X register into memory address $81

    JMP START

;-------------------;
    ORG $FFFC
    .WORD START
    .WORD START