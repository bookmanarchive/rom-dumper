# Bookman1 General Analysis notes / Findings

See `utils/Bookman1` for programmatic descriptions / usages of RE findings.

```

0xB     Model code (UInt16LE)
        Found by applying `utils/compare-offset-ranges.js`

0x48    Bytesize U1 bank (UInt32LE)
0x4C    Bytesize U2 bank (UInt32LE)

```

## Temporary notes / Suspects

Dumps of 2 different DBE-2020 cartridges yielded 2 different versions of the ROM (v1.0 from) and 
- Need to try to compare the ROMs to examin similar regions in the same offsets
  - https://stackoverflow.com/questions/746458/how-can-i-show-lines-in-common-reverse-diff
  - https://stackoverflow.com/questions/8581090/how-to-do-the-opposite-of-diff
- Similarly, this idea can be used to find common areas between other Bookman1 ROMs

- Header analysis, complete mapping of Bookman1 header should now be possible
  - Compare MWD-2001 v1.0 and v1.1
  - Compare others with same model code but different revision
  - There are several bits yet unmapped, model code appears twice

- Analyze the WGM-2037 from the BDM free download file
  - Encrypted but we have the payload + the key

- Attempt a write of same sized ROM as WGM-2037 to the BMC-2 / BMC-4 cards
  - Start to alter bytes within the sent ROM to peek/poke memory