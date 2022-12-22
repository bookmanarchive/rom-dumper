/*
Prerequisites: 
    - ImageMagick CLI installed
*/

const { execSync } = require('child_process');
const fs = require('fs');

const Jimp = require('jimp');

async function createNewImage(w, h) {
    return new Promise(resolve => {
        new Jimp(w, h, (err, image) => resolve(image));
    });
}

async function createScratchImage(w, h) {
    return new Promise(resolve => {
        new Jimp(8, h, (err, image) => resolve(image));
    });
}

const extractionDirectory = 'tmp/';

async function extractImage(w, h, offset, romFile, i) {

    execSync(`convert -endian LSB -size ${w}x${h}+${offset} 'mono:${romFile}' out.png`);

    const finalImage = await createNewImage(w, h);           // Dest (final PNG)
    const scratchImage = await createScratchImage(w, h);    // Blit buffer

    const extractedImage = await Jimp.read('out.png');   // Source (from ROM)

    // Column tiles of 8 mono-pixels are flipped, flip them again to ensure correct display
    const maxX = w / 8;
    for (let x = 0; x < maxX; x++) {
        scratchImage.blit(
            extractedImage, // source
            0, 0,     // dest x, y
            x * 8, 0,     // src x, y
            8, h   // src w, h
        );

        scratchImage.flip(true, false);

        finalImage.blit(scratchImage, x * 8, 0);
    }

    const finalIconPath = extractionDirectory + ((romFile.substring(0, romFile.lastIndexOf('.')) + '.' + i.toString().padStart(3, '0') + '.png').split('/').pop());

    await finalImage.writeAsync(finalIconPath);
}

const DELIMTERS = {
    // All images have max height 24 (Bookman1 native resolution)

    FULLSCREEN_ANIMATION_FRAME: 0x10,
    TALL_SPRITE: 0x02,  // small sized 16 x ?? images
    WIDE_SPRITE: 0x03,  // small sized 24 x ?? images
    XL_SPRITE: 0x04,    // sized 32 x ?? images
    CARD_ICON: 0x05,    // sized 40 x 24 images (more than 1, but first is always the card icon)
    XXL_SPRITE: 0x06,   // sized 48 x ?? images
    XXXL_SPRITE: 0x07,  // sized 56 x ?? images
}

async function extractImagesForROM(romFile, delimiterValue = 0x10) {
    const ROM_CONTENT = fs.readFileSync(romFile);

    const IMAGE_DELIMITER = new Uint8Array([0x00, delimiterValue, 0x00]);

    let nextImageEntryOffset = ROM_CONTENT.indexOf(IMAGE_DELIMITER, 0);
    let index = 0;

    while (nextImageEntryOffset >= 0) {
        let [imageWidth, nullbyte1, imageHeight, nullbyte2, delimiter, nullbyte3] = ROM_CONTENT.subarray(nextImageEntryOffset - 3);

        let imageOffset = ROM_CONTENT.subarray(nextImageEntryOffset + IMAGE_DELIMITER.length).readUInt32LE();

        const isValid = (
            imageWidth > 2 &&
            nullbyte1 === 0 &&
            imageHeight > 2 &&
            nullbyte2 === 0 &&
            delimiter === delimiterValue &&
            nullbyte3 === 0 &&
            imageOffset < ROM_CONTENT.length &&
            imageOffset > 0x1000
        );

        if (isValid) {
            console.log(`Image #${index} = ${imageWidth} x ${imageHeight} stored at 0x${imageOffset.toString(16)}`);
            // console.log(ROM_CONTENT.subarray(nextImageEntryOffset - 3, nextImageEntryOffset - 3 + 7));

            const extractionOffset = 0;

            await extractImage(imageWidth, imageHeight, imageOffset + extractionOffset, romFile, index);
        }

        nextImageEntryOffset = ROM_CONTENT.indexOf(IMAGE_DELIMITER, nextImageEntryOffset + IMAGE_DELIMITER.length);
        index++;
    }
};

const [_node, _script, _romFile = 'roms/BJP-2034_v1.0_U1.bin'] = process.argv;

execSync(`rm -f ${extractionDirectory}*.png`);
extractImagesForROM(_romFile, 0x07);