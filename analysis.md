# ROM content analysis

## Additional analysis
- Use an interrupt tied to the CE# pins for the ROM card / onboard mem to snapshot address and data lines
    - Will need a sacrificial device for this (solder fine wires to the pads)
    
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
        - 40 x 24 = 960 bits total = 120 bytes for the icon uncompressed

## Failure modes

- Some DBE-2020 cards fail in that the previous 16 bytes are repeated every other instance
    - Indicates that address line 6 is possibly incorrect and therefore the pin mapping is incorrect
    - Strategy here is to test various pin mappings until the ROM header is read correctly?
        - There may be a set number of pin mappings
    - Page 5 of US5497474 patent shows a scheme for indirection on the 6502
        - Might be related to this

- Check voltage on older cards
    - 6502 Bookman1 cards might use 5V instead of 3V

## Specific ROMs

### BQF-2025
- Found a reference to `asm6502` within the ROM, likely this assembler from 1985!
    - At offset 0x
    - https://github.com/ptrrkssn/asm6502


### WGM-2037

- Traced this from a photo:

<img src="photos/WGM-2037.icon.traced.png">

- Use the HTML5 canvas API to convert this image into a bitfield and then into bytes for searching