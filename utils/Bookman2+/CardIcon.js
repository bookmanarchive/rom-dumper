// Extracts the Card Icon from a ROM dump file
// Prerequisites: 
//  - ImageMagick CLI installed

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
        // Hardcode 8 pixels for mirroring every 8 width column
        new Jimp(8, h, (err, image) => resolve(image));
    });
}

async function extract(romFile) {
    const ROM_CONTENT = fs.readFileSync(romFile);
    const metadataOffset = ROM_CONTENT.indexOf('280018000500', 0, 'hex');
    if (metadataOffset < 0) return;

    const cardIconStruct = {
        w: 0x28,
        h: 0x18,
        imageDataOffset: metadataOffset - 0x78
    };

    execSync(`convert -endian LSB -size ${cardIconStruct.w}x${cardIconStruct.h}+${cardIconStruct.imageDataOffset} 'mono:${romFile}' out.png`);

    const finalIcon = await createNewImage(cardIconStruct.w, cardIconStruct.h);         // Dest (final PNG)
    const scratchImage = await createScratchImage(cardIconStruct.w, cardIconStruct.h);  // Blit buffer

    const extractedIcon = await Jimp.read('out.png');   // Source (from ROM)

    // Column tiles of 8 mono-pixels are flipped, flip them again to ensure correct display
    const countColumnsOfWidth8 = cardIconStruct.w / 8;

    for (let x = 0; x < countColumnsOfWidth8; x++) {
        scratchImage.blit(
            extractedIcon, // source
            0, 0,     // dest x, y
            x * 8, 0,     // src x, y
            8, cardIconStruct.h   // src w, h
        );

        scratchImage.flip(true, false);

        finalIcon.blit(scratchImage, x * 8, 0);
    }

    const filenameOnly = romFile.split('/').pop();
    const finalIconPath = 'photos/roms/' + filenameOnly.substring(0, filenameOnly.lastIndexOf('.')) + '.png';

    await finalIcon.writeAsync(finalIconPath);

    console.log(`Icon generated: ${finalIconPath}`);
}

module.exports = {
    extract,
};