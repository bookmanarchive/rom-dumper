// Extracts the Card Icon from a ROM dump file
// Prerequisites: 
//  - ImageMagick CLI installed

const { execSync } = require('child_process');
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

module.exports = async function extractedCardIcon(ROMFILE) {
    // See `analysis.md` for the investigation

    // Step #1: Find the Card Icon image offset from the ROM's metadata

    const ROM_CONTENT = fs.readFileSync(ROMFILE);
    const OFFSET_FUNCTION_KEY_NAMES = 0xAA;

    // Icon offset is co-located within the same N byte block
    const BLOCK_SIZE = 256;
    const metadataStructOffset = Math.floor(ROM_CONTENT.readUInt16LE(OFFSET_FUNCTION_KEY_NAMES) / BLOCK_SIZE) * BLOCK_SIZE;

    let metadataStruct = ROM_CONTENT.subarray(metadataStructOffset, metadataStructOffset + 1024); // Card Icon offset will most definitely be found within the next 1024 bytes

    const START_DELIMITER = new Uint8Array([0x00, 0x18, 0x00, 0x05, 0x00]);

    const nextMetadataEntryOffset = metadataStruct.lastIndexOf(START_DELIMITER) + START_DELIMITER.length;
    metadataStruct = metadataStruct.subarray(nextMetadataEntryOffset); // truncate the current metadata entry

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

        finalIcon.blit(scratchImage, x * 8, 0);
    }

    const finalIconPath = ROMFILE.substring(0, ROMFILE.lastIndexOf('.')) + '.png';

    await finalIcon.writeAsync(finalIconPath);

    console.log(`Icon generated: ${finalIconPath}`);
};