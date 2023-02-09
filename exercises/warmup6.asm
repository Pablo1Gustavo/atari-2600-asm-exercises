    PROCESSOR 6502
    SEG CODE
    ORG $F000

;|-----------------------------------------
;| This exercise covers the increment and
;| decrement instructions of the 6502.
;|-----------------------------------------

START:
    LDA #1      ; Load the A register with the decimal value 1
    LDX #2      ; Load the X register with the decimal value 2
    LDY #3      ; Load the Y register with the decimal value 3

    INX         ; Increment X
    INY         ; Increment Y
    CLC
    ADC #1      ; Increment A

    DEX         ; Decrement X
    DEY         ; Decrement Y
    SEC
    SBC #1      ; Decrement A

    JMP START

;---------------;
    ORG $FFFC
    .WORD START
    .WORD START