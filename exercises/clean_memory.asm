    PROCESSOR 6502
    SEG CODE
    ORG $F000       ; Define the code origin

;|-------------------------------------
;| Clear the Page Zero region 
;| ($00 to $FF, TIA register and RAM)
;|-------------------------------------

START:
    SEI             ; Disable interrupts
    CLD             ; Disable the BCD decimal math mode

    LDX #$FF        ; Load the X register
    TSX             ; Transfer the X register to the stack pointer

    LDA #0          ; A = 0
    LDX #$FF        ; X = #$FF
    STA $FF         ; Store the A value in $FF position

MEM_LOOP:
    DEX             ; X--
    STA $0,X        ; Store the A value to the hexadecimal X position
    BNE MEM_LOOP    ; Jump to MEM_LOOP if zero flag is not set

;-------------------;
    ORG $FFFC       ; End the ROM by adding required values to memory position $FFFC
    .WORD START     ; Reset vector at $FFFC (where program starts)
    .WORD START	    ; Interrupt vector at $FFFE (unused in VCS)