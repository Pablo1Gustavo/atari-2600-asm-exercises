    PROCESSOR 6502
    SEG CODE
    ORG $F000

;|-------------------------------------
;| This exercise is about adding and
;| subtracting values.
;|-------------------------------------

START:
    LDA #100    ; Load the A register with the literal decimal value 100
    ADC #5      ; Add the decimal value 5 to the accumulator
    SBC #10     ; Subtract the decimal value 10 from the accumulator
                ; Register A should now contain the decimal 95 (or $5F in hexadecimal)
    JMP START

;---------------;
    ORG $FFFC
    .WORD START
    .WORD START