# rom-dumper

This tool dumps binary data from Franklin Bookman ROM cards. You can start / stop / track ROM dump progress via a web-based frontend.

These dumps are used for further binary analysis in the Bookman Archive emulator development project.

## Frontend

<img src="photos/Screen Shot 2021-09-26 at 9.12.14 PM.png">

<img src="photos/Screen Shot 2021-09-25 at 5.36.35 PM.png">

Go to http://raspberrypi.local:3000/ for the web interface.

```
Key press   Action
n           Set dump filename
q           Get the filename
p           Get current dump progress
h           Get first 0x100 bytes of the dump (expected ROM header)
```
## Backend

<img src="photos/DSC06466.JPG">

## Setup

Hardware prerequisites:
- 1 x Raspberry Pi Zero W / Zero W 2 (or equivalents)
- 3 x [Adafruit GPIO expander](https://www.adafruit.com/product/4132)
- 1 x 40-pin Franklin Bookman ROM card breakout board (DIY)
- Enable I2C interface on the Raspberry Pi

Software prerequisities: 
- LTS version of NodeJS (v18+)
- NodeJS Yarn package manager
- PM2 process manager
- Cloned a copy of this repo
- Connected to your local Wifi

Running:

```
# Install project dependencies
yarn

# Start process
pm2 start

# Save process list
pm2 save

# Restart the saved processes on reboot
pm2 startup
```


## Known issues
- i2c peripherals / reads from MCP get corrupted sometimes
    - unknown cause (possibly time-stretching? possibly power supply issue?)
- Unable to handle 4MB / 2 IC ROM cards yet
