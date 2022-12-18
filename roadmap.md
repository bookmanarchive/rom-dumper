# Reverse Engineering Roadmap + Progress

Analysis tools
    - MacOS System Calculator
        - Useful for Dec-Bin-Hex calcs
    - [Hex Fiend for MacOS (OSS)](https://github.com/HexFiend/HexFiend)
        - Useful for [Binary Templates](https://github.com/HexFiend/HexFiend/blob/master/templates/Tutorial.md)
    - ImageMagick
        - Able to handle raw binary as images without aborting operation
    - Ghidra RE Suite

- Record-keeping tools
    - SQLite3 and TablePlus for ROM dump record keeping, see [`dumping.sqlite3`](dumping.sqlite3)

## Purpose and Goals

- Digital preservation of the Bookman ecosystem
    - Ability to run Bookman software on modern hardware either through reproduction systems or emulators

- Deep technical learning of the Bookman platforms through investigative tech forensics
    - The difficult process of figuring out the pieces and how they fit together is a fun challenge
    - Primary motivating factor here is to learn the inside-outs of how a company built an ebook product landscape with technology of the era

- To go where other digital archivists / curators have not gone before!
    - As of this writing (2022-12-XX) this is the ONLY Bookman preservation and reverse engineering project, so we are treading entirely new ground and publicly publishing new information to the wider Internet


## Approach

We are taking a bottom-up approach to digitally preserving the Bookman ecosystem: focus most of the efforts on details that can be gained from individual pieces of the Bookman platform and using them to piece together the entire picture.

We don't dismiss the possibility of useful information from a top-down approach, but the volume of useful information is limited in that avenue.


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
    - MED-1770 Pocket PDR (Bookman2) unit has large pads for these which can be more easily soldered to

- 2.5mm TRS to USB cable that came with a DMQ-1870 device is simply just a serial to USB adapter "LPB-01903-25A" (2022-12)
    - Breakout wires have been soldered to the serial end of this for further analysis with additional serial to USB adapters to capture the data
    - TX (green), RX (red), GND (black) breakouts
    - Once serial message sequence is completely understood, attempt upload of Bookman1 ROM dumps so that binary analysis via poking (changing specific instructions in the ROM and observing changes) can begin!

## Prerequisites

- Identify + acquire as many Bookman cards / devices as possible, as there may be variants / revisions of ROM content
    - Additionally, DIAG cards (at least 2 types) are known to exist for Bookman2

- Determine pinouts and signals for the hardware
    - This is to allow correct dumping of ROM content
    - Figuring out signals / off-the-shelf aspects of the different systems will help in analysis once ROM content is dumped

- Build dumping / analysis hardware

## Tiers of Reverse Engineering Progress

Each tier offers a distinct benefit when significant progress is made or task completed. Every tier also has multiple possible points of entry for paths that lead to the overall completion of the tier / project.

If stuck any at particular task / tier, it may be wise to take pause and shift  to another task / tier. This might allow findings to consolidate subconsiciously (in regards to the project) into a more useful development later on.

We will do our best to stay methodical and keep notes on every step where possible.


```
    INSERT PATH DIAGRAM HERE
```


### RE Level 1

- ROM Dumping
    - External ROMs (Bookman Cards)
    - Internal ROMs (onboard ROM banks)
    - Peripherals (Bookman Writer / Brother BKMN daughter-boards)

### RE Level 2

- SDK Development
    - Allows possibility to author custom content: ebooks, apps, etc.

- Reproduction Device Schematics
    - Allows users to create Bookman compatible hardware using modern technologies, components, and manufacturers

### RE Level 3

- Emulator Development
    - Bookman1 (6502)
        - Figure out memory map
        - Figure out if any custom opcodes used
        - Figure out ROM structure
    - Bookman2 (ES1, custom ASIC)
    - Bookman3 (ES2? ~ SNK,SNK24,SNK32? perhaps same tech as eBookman)
