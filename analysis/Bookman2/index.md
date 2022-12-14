# Bookman 2 General Analysis notes / Findings

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