# Extracting Images from the ROM

> 2022-12-09

Our starting point is the Card Icon extraction procedure, we have a superficial understanding of the bytes around the `0x00, 0x05, 0x00` delimiter. Some of these are pointers to the Card Icon, while others are unrelated. The icon extraction script has been refactored to generalize our previous findings: [`extractImagesForROM`](../utils/extractImagesForROM.js).

## Trying `WGM-2037_v1.0_U1.bin`

```bash
# Check the file for other regions that look like images
convert -endian LSB -size 48x24384+0 mono:roms/WGM-2037_v1.0_U1.bin out.png

# At around 48 pixels x 8875 rows, it looks like the start of some image frames for a book page turning animation
# 48 * 8875 / 8 = 53250

# Playing with the sizing until we find a coherent image
# We found an image of 64 x 13 corresponding to frames of the page turning animation
convert -endian LSB -size 64x13+53234 mono:roms/WGM-2037_v1.0_U1.bin out.png
```

<img src="../photos/WGM-2037/book-page-turning-animation.png">

`53234d = 0xF2CF (LE)` found at `0x532`, which appears to have some values that correspond to our found image if we look at the surrounding bytes starting at `0x52C`:

```
Hex         40 00 0D 00 08 00 F2 CF
Dec         64    13          53234
            W     H     ??    Addr of animation data
```

But this is a bit of dead end for now...





