# ROM specific notes

This file contains investigative details, notes, and other scraps relating to specific ROM files and content.

## WGM-2037 Word Games

### General Analysis #1

Searching for `Bookman1` within the ROM, we can find two instances:
- Magic number at offset 0
- Unknown usage at offset 0x7BF5

If we search for the sequence `F57B` offset in LE, then the only instance we find is closeby: at offset 0x7C10. Taking a 128 byte window (offset 0x7BFD - 0x7C7C inclusive) we can put this into a 6502 disassembler to see if there are any leads from the code:

```hex
A800006182901E20427598205D769012 A207BDF57BDD0080D008CA10F5206775 386020677518608526A51048A50F48A5 114820FE7420BC74A5268510860F8411 00006182B0034CF57CA510A60FA00020 767D8E1D028C1C02E020900AE07FF002 B004C0FA90034CF57CA90000004382A9 0000004A8200001F82A510A60FA02A20
```

Disassembled via [virtual 6502](https://www.masswerk.at/6502/disassembler.html) into:

```asm
                            * = $0000
0000   A8         L0000     TAY
0001   00                   BRK
0002   00                   BRK
0003   61 82                ADC ($82,X)
0005   90 1E                BCC L0025
0007   20 42 75             JSR $7542
000A   98                   TYA
000B   20 5D 76             JSR $765D
000E   90 12                BCC L0022
0010   A2 07                LDX #$07
0012   BD F5 7B   L0012     LDA $7BF5,X     ; <--- 0x7BF5 used in X
0015   DD 00 80             CMP $8000,X     ; <--- compared with ROM start address
0018   D0 08                BNE L0022
001A   CA                   DEX
001B   10 F5                BPL L0012
001D   20 67 75             JSR $7567
0020   38                   SEC
0021   60                   RTS
0022   20 67 75   L0022     JSR $7567

        ...
```

**Key Finding:** Bookman1 memory map piece
- ROM start = $8000 (0x8000 or offset 32768d)

We can further grab the entire chunk of non `FF` (filler byte) values from `0x72A0 - 0xB44B` inclusive and put it through the disasm to get our first asm file: `WGM-2037.0.asm`

### General Analysis #2

Knowing that the first bank of the ROM is loaded in at $8000 means we can check common vectors:

- RESET vector (UInt16LE) at $FFFC (which maps to 0xFFFC - 0x8000 = 0x7FFC)
    - value is `[0xA0, 0x72]` = 29344, which is the offset of the start of our reset routine within the file
    - preceded by a number of filler bytes (i.e. the offset is significant is appears to be valid machine code)

- IRQ vector (UInt16LE) at $FFFA (mapping to 0xFFFA - 0x8000 = 0x7FFA)
    - value is `[0x81, 0x78]` = 30849
    - maybe IRQ is tied to the CLEAR button on devices?

- NMI vector (UInt16LE) at $FFFE (mapping to 0xFFFE - 0x8000 = 0x7FFE)
    - value is `[0xE5, 0x79]` = 31205
    - directly follows the IRQ routine
    - This offset contains the `Bookman1` string check within the next 1024 bytes
    - maybe IRQ is tied to the RESET button on devices? (pin hole button)

So we can derive machine code for at least 2 of these routines:
    - `WGM-2037.reset.asm` = 1505 bytes from offset 29344
    - `WGM-2037.irq.asm` = 356 bytes from offset 30849

---

## BQF-2025
- Found a reference to `asm6502` within the ROM, likely this assembler from 1985!
    - At offset 0x
    - https://github.com/ptrrkssn/asm6502

