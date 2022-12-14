# Finding the Bookman Card Icon within ROM dump files

> 2022-12-07

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

**We can spot the Card Icon a little more than halfway down the generated image of the binary!**
Measuring this image offset it appears around 9911 rows of 40 mono-pixels from the start of the file. 


<img src="../../photos/WGM-2037/Screen Shot 2022-12-07 at 11.21.17 PM.png">

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


<img src="../../sample-extracted-icons.png" align="center">


```bash
# From https://stackoverflow.com/a/37710999/7216921
montage roms/*.png -geometry +8+8 -tile 6x sample-extracted-icons.png
```

### Initial result

An initial script was written to extract the Card Icon from ROM dumps.

Sequentially packed bytes have been identified (around the pattern `0x00, 0x05, 0x00`):

```
    0x28 = 40 pixels image width
    0x00 - struct delimiter
    0x18 = 24 pixels image height
    0x00 - struct delimiter
    0x05 = ??? offset entry? (it's always there)
    0x00 - struct delimiter
     ...
    4 byte LE value for binary offset of image data
     ...
```

Our script isn't quite precise enough however, we iterated our extraction procedure this way:

1. Hardcode offset for the image data and perfect the reconstruction process (flip every 8 pixel column to form final image)
2. Scanning for the delimiter around the metadata region (this didn't always work for all ROMs and we had to progressively expand the window around the metadata struct address to enlarge our search)
3. Scan the entire file for the delimiter bytes and try extracting every "valid" offset

The procedure seemed too sloppy for our tastes. Surely the address of the card icon struct was stored somewhere. We did a search and found the icon struct address `0x2131` for XGT-2058 dump file at offset `0x7E`. Checking with other ROM files, it appears as though we found the icon struct address as a value in the ROM header!

### Findings

```
0x7E = contains offset of the Card Icon struct

0xAA = contains offset (2 bytes, LE) of the Function Key 1 Name (ASCII string, null terminated)
0xAC = contains offset (2 bytes, LE) of the Function Key 2 Name (ASCII string, null terminated)
0xAE = contains offset (2 bytes, LE) of the Function Key 3 Name (ASCII string, null terminated)
0xB0 = contains offset (2 bytes, LE) of the Function Key 4 Name (ASCII string, null terminated)
```

The final iteration of the procedure is to read and unpack the Card Icon struct from our findings and simply use that as the route to extraction.