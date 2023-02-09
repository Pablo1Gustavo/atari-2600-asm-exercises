    PROCESSOR 6502
    SEG CODE    ; Define a new segment named "code"
    ORG $F000   ; Define the origin of the ROM code at memory address $F000

;|---------------------------------------
;| Your goal here is to simply load the
;| processor registers A, X, and Y with
;| some values.
;|---------------------------------------

START:
    LDA #$82    ; Load the A register with the literal hexadecimal value $82
    LDX #82     ; Load the X register with the literal decimal value 82
    STY $82     ; Load the Y register with the value that is inside memory position $82

    JMP START

;---------------;
    ORG $FFFC   ; End the ROM by adding required values to memory position $FFFC
    .WORD START ; Put 2 bytes with the reset address at memory position $FFFC
    .WORD START ; Put 2 bytes with the break address at memory position $FFFE