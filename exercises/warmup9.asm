    PROCESSOR 6502
    SEG CODE
    ORG $F000

;|-----------------------------------------------------------------
;| Your goal in this exercise is to create a simple loop that goes
;| from 1 to 10. If possible, try using the CMP instruction. 
;|-----------------------------------------------------------------

START:
    LDA #1     ; Initialize the A register with the decimal value 1

LOOP:
    CLC
    ADC #1      ; Increment A
    CMP #10     ; Compare the value in A with the decimal value 10
    BNE LOOP    ; Branch back to loop if the comparison was not equals (to zero)

    JMP START

;---------------;
    ORG $FFFC
    .WORD START
    .WORD START