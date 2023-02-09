    PROCESSOR 6502
    SEG CODE
    ORG $F000

;|-------------------------------------------------
; This exercise covers the increment and decrement
; using zero-page addressing mode.
;|-------------------------------------------------

START:
    LDA #10     ; Load the A register with the decimal value 10
    STA $80     ; Store the value from A into memory position $80

    INC $80     ; Increment the value inside a (zero page) memory position $80
    DEC $80     ; Decrement the value inside a (zero page) memory position $80

    JMP START

;---------------;
    ORG $FFFC
    .WORD START
    .WORD START