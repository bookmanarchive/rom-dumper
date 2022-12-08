// Extracts the Card Icon from a ROM dump
// Assumes you have ImageMagick installed

const [_NODEBINARY, _SCRIPTFILE, ROMFILE] = process.argv;

const { execSync } = require('child_process');
const { once } = require('events');
const fs = require('fs');

const Jimp = require('jimp');

const WIDTH = 40;
const HEIGHT = 24;

async function createNewIcon() {
    return new Promise(resolve => {
        new Jimp(WIDTH, HEIGHT, (err, image) => resolve(image));
    });
}

async function createScratchImage() {
    return new Promise(resolve => {
        new Jimp(8, HEIGHT, (err, image) => resolve(image));
    });
}

(async () => {
    // See `analysis.md` for the investigation
    
    // Step #1: Find the Card Icon image offset from the ROM's metadata
    const ROM_CONTENT = fs.readFileSync(ROMFILE);
    const metadataStructOffset = ROM_CONTENT.readUInt16LE(0xAA);

    let metadataStruct = ROM_CONTENT.subarray(metadataStructOffset, metadataStructOffset+256); // Card Icon offset will most definitely be found within 256 bytes
    let nextMetadataEntryOffset = 0;
    
    const START_DELIMITER = new Uint8Array([0x05, 0x00]);

    nextMetadataEntryOffset = metadataStruct.indexOf(START_DELIMITER) + START_DELIMITER.length;
    metadataStruct = metadataStruct.subarray(nextMetadataEntryOffset); // truncate the current metadata entry
    
    // console.log(metadataStruct);

    const iconOffset = metadataStruct.readUInt32LE();

    // Step #2: Extract and process the Card Icon data into a coherent image
    
    execSync(`convert -endian LSB -size 40x24+${iconOffset} 'mono:${ROMFILE}' out.png`);

    const finalIcon = await createNewIcon();            // Dest (final PNG)
    const scratchImage = await createScratchImage();    // Blit buffer

    const extractedIcon = await Jimp.read('out.png');   // Source (from ROM)

    // Column tiles of 8 mono-pixels are flipped, flip them again to ensure correct display
    for (let x = 0; x < 5; x++) {
        scratchImage.blit(
            extractedIcon, // source
            0, 0,     // dest x, y
            x * 8, 0,     // src x, y
            8, HEIGHT   // src w, h
        );

        scratchImage.flip(true, false);

        finalIcon.blit(scratchImage, x*8, 0);
    }

    const finalIconPath = ROMFILE.substring(0,ROMFILE.lastIndexOf('.')) + '.png';

    await finalIcon.writeAsync(finalIconPath);

    console.log(`Icon generated: ${finalIconPath}`);
})();