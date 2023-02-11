    PROCESSOR 6502

    INCLUDE "../include/vcs.h"
    INCLUDE "../include/macro.h"

    SEG CODE
    ORG $F000

START:
    CLEAN_START         ; Macro to safely clear memory and TIA

NEXT_FRAME:
    LDA #2
    STA VBLANK          ; Turn on VBLANK
    STA VSYNC           ; Turn on VSYNC

    STA WSYNC           ; Generate the three lines of VSYNC, the scanlines
    STA WSYNC
    STA WSYNC

    LDA #0
    STA VSYNC           ; Turn off VSYNC

    LDX #37             ; To count 37 scanlines

LOOP_VBLANK:            ; Outup the recommended 37 scanlines of VBLANK
    STA WSYNC           ; Hit WSYNC and wait for the next scanline
    DEX                 ; X--
    BNE LOOP_VBLANK     ; Loop while X != 0

    LDA #0
    STA VBLANK          ; Turn off BLANK

    LDX #0

LOOP_RAINBOW:           ; Draw the 192 scanlines setting different colors
    STX COLUBK          ; Set the background color
    STA WSYNC           ; Wait for the next scanline
    INX
    CPX #192
    BNE LOOP_RAINBOW

    LDA #2
    STA VBLANK          ; Hit and turn on VBLANK again

    LDX #30

LOOP_OVERSCAN:          ; Outpup 30 more VBLANK lines to complete our frame
    STA WSYNC
    DEX
    BNE LOOP_OVERSCAN

    JMP NEXT_FRAME

;---------------;
    ORG $FFFC
    .WORD START
    .WORD START