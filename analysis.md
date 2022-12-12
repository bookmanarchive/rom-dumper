# ROM content analysis

- Please see the documents at the new location within the [`analysis`](analysis) directory

## Additional avenues for analysis

- Use an interrupt tied to the CE# pins for the ROM card / onboard mem to snapshot address and data lines
    - Will need a sacrificial device for this (solder fine wires to the pads)
    - 440 series device: MWD-440
    - 640 series device: MWD-640
    - 860 series device: MWS-860
    - 1860 series device: MWS-1860
    - 1570 series device

- Use multiple UART-to-USB adapters to capture 2 way traffic flow for a complete dump
    - PN-8800FXB BKMN daughterboard serial traffic
    - Bookman3 memory card traffic
    - Pocket Quicken PQN-560 traffic
    - Bookman Writer traffic

- Further analysis of image arrays
    - Trivia game ROMs are good for this, as is the Word Games ROM
    - Blackjack & Video Poker also have distinct card images, more easily recognized due to rectangular shape and straight lines

- SCLK, POL, DATA lines are likely SPI for Bookman1 LCD controller
    - Use a logic analyzer on these signals

## Specific ROMs

### BQF-2025
- Found a reference to `asm6502` within the ROM, likely this assembler from 1985!
    - At offset 0x
    - https://github.com/ptrrkssn/asm6502

