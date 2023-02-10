    PROCESSOR 6502

    INCLUDE "../include/vcs.h"

    SEG CODE
    ORG $F000

START:
    LDA #$52    ; Load color with $52 NTSC code (purple)
    STA COLUBK  ; Store the color code in the bg_color address $09

    JMP START

;---------------;
    ORG $FFFC
    .WORD START
    .WORD START