# Extracting Images from the ROM

> 2022-12-09

Our starting point is the Card Icon extraction procedure, we have a superficial understanding of the bytes around the `0x00, 0x05, 0x00` delimiter. Some of these are pointers to the Card Icon, while others are unrelated. The icon extraction script has been refactored to generalize our previous findings: [`extractImagesForROM`](../utils/extractImagesForROM.js).

## Using `XGT-2043_v1.0_U1.bin` Crosswire Trivia Game as our test sample

```bash
# Check the file for other regions that look like images
convert -endian LSB -size 40x16384+0 mono:roms/XGT-2043_v1.0_U1.bin out.png

# At around 40 pixels x 6554 rows height, it looks like the start of some image frames for an animation
# 6554 * 5 
convert -endian LSB -size 40x24+32770 mono:roms/XGT-2043_v1.0_U1.bin out.png

```













Returns 

```
Image #1 = 40 x 24 stored at 0x100db
Image #5 = 5 x 5 stored at 0x50005
Image #6 = 5 x 5 stored at 0x50005
Image #7 = 5 x 5 stored at 0x50005
Image #12 = 3 x 4 stored at 0x70006
Image #14 = 4 x 189 stored at 0x600be
Image #15 = 4 x 20 stored at 0x60015
Image #16 = 4 x 13 stored at 0x6000e
Image #17 = 7 x 3 stored at 0x2
Image #18 = 3 x 7 stored at 0x20007
Image #20 = 4 x 114 stored at 0x6007d
Image #25 = 40 x 20 stored at 0x5e7f4
Image #26 = 40 x 23 stored at 0x5e866
Image #30 = 40 x 24 stored at 0x6360a
Image #32 = 40 x 17 stored at 0x63f88
Image #33 = 40 x 13 stored at 0x63fdd
Image #34 = 40 x 13 stored at 0x64695
Image #35 = 40 x 14 stored at 0x646d6
```

We can use the `0x100db` = `65755d` offset as a starting point for extracting other images. Trying to extract a 40x24 image from the next 120 bytes yields this
