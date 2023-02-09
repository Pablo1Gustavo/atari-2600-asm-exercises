    PROCESSOR 6502
    SEG CODE
    ORG $F000

;|--------------------------------------------
;| This exercise is about transferring values
;| from registers to other registers.
;|--------------------------------------------

START:
    LDA #15     ; Load the A register with the literal decimal value 15
    TAX         ; Transfer the value from A to X
    TAY         ; Transfer the value from A to Y
    TXA         ; Transfer the value from X to A
    TYA         ; Transfer the value from Y to A

    LDX #6      ; Load X with the decimal value 6
    TXA         ; Transfer the value from X to A
    TAY         ; And then, we can transfer the value from X to Y

    JMP START

;---------------;
    ORG $FFFC
    .WORD START
    .WORD START