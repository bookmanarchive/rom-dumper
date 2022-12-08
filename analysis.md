# ROM content analysis


## Additional analysis

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


## Finding the Card screen icon

- Card screen can be reached on the device by pressing the CARD key on all Bookman models
- Every app available to the device is displayed here with its unique position and icon
    - Onboard occupies the first few
    - Add-on apps (via ROM card) follow
- These are 2-bit images that are likely stored within the ROM content
- We can trace an LCD screen image of the icon and then convert it into a bitmap / bitfield by tracing it
    - Used a Chrome Extension to overlay a photo of an icon from a dumped ROM (WGM-2037)
        - https://www.welldonecode.com/perfectpixel/
    - Used Photopea to create the monochrome image
    - Icons are: 40 pixels width x 24 pixels height
        - 40 x 24 = 960 bits total = 120 bytes for the icon uncompressed if every pixel is stored as a single bit
        - or 960 bytes? (unlikely as this crosses the 256 bytes page limit)

- [Convert the ROM file to a raw monochrome image format](https://superuser.com/a/978432)
    
```bash
# 2-bit monochrome format (mono:)
#   defaults to LSB (little endian) but we write the option out to play with it
# Width 40 (as icon is known to be width 40)
convert -endian LSB -size 40x16384+0 mono:roms/WGM-2037_v1.0_U1.bin out.png
```
### We can spot the Card Icon a little more than halfway down the generated image of the binary!

<img src="photos/WGM-2037/Screen Shot 2022-12-07 at 11.21.17 PM.png">

```bash
# More tweaking of the offset until image is mostly aligned and correct
convert -endian LSB -size 40x24+49553 mono:roms/WGM-2037_v1.0_U1.bin out.png
```

Offset is `0xC191` or `49553d` for WGM-2037. But they are different for all other ROMs.
Doing a search for the little endian format of `0xC191 (BE) -> 0x91C1 (LE) ` in the binary yields the location `0x2375`

Which is probably part of the metadata structure. We need to find the start of this structure, and it looks like the colored function key names `NEW`, `SCORE`, `HINT`, `ANSWER` begin around `0x2359` (BE), which searching for the LE value `0x5923` yields the location `0xAA` in the header. 

The LE value here is the location of a metadata structure of unknown size which includes the function key names and icon graphic location!
After some experimentation, we discover that this is a NULL byte separated value store. Starting from the offset of this metadata location, these are the entries separated by 0x00 (null byte):
- Function key 1 name
- Function key 2 name
- Function key 3 name
- Function key 4 name
- Value of unknown purpose #1
- Value of unknown purpose #2
- Value of unknown purpose #3
- LE offset of the Card Icon (4 bytes)

Which matches exactly the location we previously discovered. This means we only need to skip the first 7 null bytes before we arrive at the Card Icon offset value. If we apply the same search routine to find the offset of the Card Icon for other ROMs we retrieve visually correct images. Success!

<center>
<img src="sample-extracted-icons.png">
</center>

```bash
# From https://stackoverflow.com/a/37710999/7216921
montage roms/*.png -geometry +4+4 -tile 4x icons.png
```


Result: a script was written to extract the Card Icon from ROM dumps, it can be found [here](utils/extractCardIcon.js).


## Specific ROMs

### BQF-2025
- Found a reference to `asm6502` within the ROM, likely this assembler from 1985!
    - At offset 0x
    - https://github.com/ptrrkssn/asm6502

