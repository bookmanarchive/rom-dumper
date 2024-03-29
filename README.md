# rom-dumper

This tool dumps binary data from Franklin Bookman ROM cards. You can start / stop / track ROM dump progress via a web-based frontend.

These dumps are used for further binary analysis in the Bookman Archive emulator development project. See the [roadmap](roadmap.md) for all the details.


## Raspberry Pi based dumper (using I2C bus MCP23017 I/O expander)

Advantages:
- Many libraries available to work with MCP23017 and in a variety of languages
- Easy to configure signal direction in software
- Dumper device is its own host on the WLAN

Disadvantages:
- I2C bus is much slower than SPI

### Frontend

<img src="photos/Screen Shot 2021-09-26 at 9.12.14 PM.png">

Go to http://raspberrypi.local:3000/ for the web interface.

```
Key press   Action
p           Get current dump progress
h           Get first 0x100 bytes of the dump (expected ROM header)
```
### Backend

<img src="photos/DSC06466.JPG">


### System Block Diagram

<img src="photos/blockdiagram.png">

### Setup

Hardware prerequisites:
- 1 x Raspberry Pi Zero W / Zero W 2 (or equivalents)
- 3 x [Adafruit GPIO expander](https://www.adafruit.com/product/4132)
    - Uses MCP23017
- 1 x 40-pin Franklin Bookman ROM card breakout board (DIY)
- Enable I2C interface on the Raspberry Pi

Software prerequisities: 
- LTS version of NodeJS (v18+)
- NodeJS Yarn package manager
- PM2 process manager
- Cloned a copy of this repo
- Connected to your local Wifi
- [Set I2C baud rate to fast mode](https://raspberrypi.stackexchange.com/a/117910)

Running:

```
# Install project dependencies
yarn

# Run the frontend server
node webapp.js

# Then go to http://raspberrypi.local:3000 to access the web frontend
```

```
# Start process
pm2 start

# Save process list
pm2 save

# Restart the saved processes on reboot
pm2 startup
```
### Known issues
- Slow dump speed due to low I2C bus clock speed

### Solved issues
- Persistant data corruption during dumping process
    - Unlikely due to timing (since a large delay can be added and corruption still observed for known ROMs)
        - This can be tweaked with the "ms read delay" variable in the frontend
    - Possibly MCP23017 or I2C issues?
    - Check I2C baud rate with `sudo cat /sys/kernel/debug/clk/clk_summary`
        - I2C rate is derived from CPU clock so if CPU scales down then I2C clock is affected
    - [Make CPU clock speed constant](https://forums.raspberrypi.com/viewtopic.php?t=325091#p1946018)
        - Doesn't seem to make a difference for some ROM cards
    - Likely different address pin mapping? Or perhaps some pins which are switched on (BYTE# in Bookman3 mapping should be floated)
    
    - [Elastomeric connector](https://en.wikipedia.org/wiki/Elastomeric_connector) needs to be seated correctly otherwise the pins will not make good contact!
        - This was possibly the failure mode for some of the ROM cards!
        - Leave the card slot empty and start a dump, then put in a "failed" card and do a dump, similar results = elastomeric connector was not making good contact so pins are left floating!!
        - TODO: measure connector and order an oversized one to compensate for any give in the breakout board
            - Measurements of the conductive strip: 1.47mm D x 3.55mm H x 46.5 mm W
            - Replacement strip needs to be taller than 3.55mm, preferably 4.0 or 4.5 mm in H dimension
            
        - Alternative: create a latch / pressure bar to apply pressure on the top of the cartridge when it's plugged into the breakout board to "force" a good contact with the elastomeric connector!

    - **Solution** This was solved by using a weight to press the top edge of the card when plugged into the card breakout board. Maximizing the lever effect seemed to produce good results in maintaining electrical contact through the elastomeric connector.

<img src="photos/IMG_20221207_134711.jpg">


- Unable to handle 4MB / 2 IC ROM cards yet
    - **Solution** This was solved by mapping the CE# pin for the second bank of the ROM card

## Alternate: Arduino Mega 2560 based dumper (using SPI bus + shift registers)

Advantages:
- Speed, much faster speeds with shift registers
- Lower level code on an MC means less to go wrong
    - Arduino acts as a pipe, dumps all bytes back out to serial port on connected machine

Disadvantages:
- No pretty web interface
- More coding required
- More soldering required for shift register daisy chaining
- **Major:** needs a dedicated host device to save the dumps. Thus tying up usage of the host system

Device not yet built.


## Additional tools
- Some binary comparison utilities available in `utils` for debugging line signals / mappings

