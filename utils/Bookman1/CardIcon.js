// Extracts the Card Icon from a ROM dump file
// Prerequisites: 
//  - ImageMagick CLI installed

const { execSync } = require('child_process');
const fs = require('fs');

const Jimp = require('jimp');

const { OFFSET_CARD_ICON_STRUCT, CARD_ICON_STRUCT_SIZE } = require('./constants');

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

function unpack(struct) {
    /*
        Struct layout

        Hex:        28 00 18 00 05 00 XX XX XX XX
        ByteOffset  0  1  2  3  4  5  6
    */
    return {
        w: struct.readUInt8(0),
        h: struct.readUInt8(2),
        imageDataOffset: struct.readUInt32LE(6),
    };
}

async function extract(romFile) {
    // See `analysis.md` for the investigation

    const ROM_CONTENT = fs.readFileSync(romFile);
    const structOffset = ROM_CONTENT.readUInt16LE(OFFSET_CARD_ICON_STRUCT);

    const cardIconStruct = unpack(
        ROM_CONTENT.subarray(structOffset, structOffset + CARD_ICON_STRUCT_SIZE)
    );

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

    const finalIconPath = 'photos/' + romFile.substring(0, romFile.lastIndexOf('.')) + '.png';

    await finalIcon.writeAsync(finalIconPath);

    console.log(`Icon generated: ${finalIconPath}`);
}

module.exports = {
    extract,
};