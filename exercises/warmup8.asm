    PROCESSOR 6502
    SEG CODE 
    ORG $F000

;|----------------------------------------------------------
;| Your goal here is to create a loop that counts down from
;| 10 to 0. You should also fill the memory addresses
;| from $80 to $8A with values from 0 to A.
;|----------------------------------------------------------

START:
    LDY #10     ; Initialize the Y register with the decimal value 10

LOOP:
    TYA         ; Transfer Y to A
    STA $80,Y   ; Store the value in A inside memory position $80+Y
    DEY         ; Decrement Y
    BPL LOOP    ; Branch back to "Loop" until we are done

    JMP START

;---------------;
    ORG $FFFC
    .WORD START
    .WORD START