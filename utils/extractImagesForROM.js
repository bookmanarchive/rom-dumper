/*

TODO: Extract all images from a ROM dump file 
-- this isn't quite working yet, offsets and width / height values aren't interpreted correctly

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

    const finalIconPath = romFile.substring(0, romFile.lastIndexOf('.')) + '.' + i.toString().padStart(3, '0') + '.png';

    await finalImage.writeAsync(finalIconPath);
}

async function extractImagesForROM(romFile) {
    // See `analysis.md` for the investigation

    const ROM_CONTENT = fs.readFileSync(romFile);

    const IMAGE_DELIMITER = new Uint8Array([0x00, 0x05, 0x00]);

    let nextImageEntryOffset = ROM_CONTENT.indexOf(IMAGE_DELIMITER, 0);
    let index = 0;

    while (nextImageEntryOffset >= 0) {
        let [imageWidth, nullbyte, imageHeight] = ROM_CONTENT.subarray(nextImageEntryOffset - 3);

        // Hard code for now
        imageWidth = 32;
        imageHeight = 24;

        let imageOffset = ROM_CONTENT.subarray(nextImageEntryOffset + IMAGE_DELIMITER.length).readUInt32LE();

        const isValid = (
            // imageWidth > 2 &&
            // imageHeight > 2 &&
            imageOffset < ROM_CONTENT.length
        );

        if (isValid) {
            console.log(`Image #${index} = ${imageWidth} x ${imageHeight} stored at 0x${imageOffset.toString(16)}`);

            // const extractionOffset = 120 * 0; // 1;
            const extractionOffset = 0;
            // imageOffset = 0x100db;

            await extractImage(imageWidth, imageHeight, imageOffset + extractionOffset, romFile, index);
        }

        nextImageEntryOffset = ROM_CONTENT.indexOf(IMAGE_DELIMITER, nextImageEntryOffset + IMAGE_DELIMITER.length);
        index++;
    }
};

const [_node, _script, _romFile] = process.argv;

extractImagesForROM(_romFile);