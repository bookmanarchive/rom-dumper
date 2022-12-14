# ROM content analysis

- Please see the documents at the new location within the [`analysis`](analysis) directory

- Analysis tools
    - [Hex Fiend for MacOS (OSS)](https://github.com/HexFiend/HexFiend)
    - ImageMagick

- Record-keeping tools
    - SQLite3 and TablePlus for ROM dump record keeping, see [`dumping.sqlite3`](dumping.sqlite3)


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