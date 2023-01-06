# Bookman 2 General Analysis notes / Findings

- Bookman2 ROMs seem to have multiple header types within a single ROM
     - One with the string `BOOKMAN card 01`
     - Another possibly with the ROM content string as a header such as `BFQ-3033` (found on the U2 chip)

- Bookman3 units can activate their **Factory Test** screen by holding down FN + CARD then pressing the POWER button to switch it on

## Factory Test Menu findings

ASIC Regs values

```
MED-1770


CardCTL        Condition
80             Blank BMC-2 card plugged in
80             Card slots empty
E2             2 x WGM-2037 cards plugged in
C1             1 x WGM-2037 in slot 1
A2             1 x WGM-2037 in slot 2


MWD-1470

CardCTL        Condition
00             Card slot empty
00             Blank BMC-2 card plugged in
40             1 x WGM-2037 in slot 1

```

## `BOOKMAN card 01` header bytes

Assuming the header starts at that magic string, all these are offset from the start of that magic string:

```

0x16, 0x17 = content ROM model code stored (UInt16LE)
             ex: BFQ-3033 --> value = 3033 
             
```

## BFQ-3033

Within the U1 dump file, there seems to be a diagnostics app embedded within a chunk of memory. Searching for "Bookman1" will find this.

There are a variety of strings stored near this location, starting from offset 0xEADC0:

```
...

Test (slots)

Needs a DIAG card in each SLOT to be tested.

Hardware Test:    SLOT #

*** NO DIAG CARD

Hardware Test (card rom)

Hardware Test (summary)

ES-1 BOOKMAN platform
CPU+ASIC design:
     Bob Grieb, Dave McWherter
6502 simulator software:
     Dave McWherter
BIOS design/development:
     Paul Bartholomew, Fred Bowen
Quality Assurance:
     Bob Verna

```