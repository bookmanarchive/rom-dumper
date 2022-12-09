const { 
    OFFSET_FUNCTION_KEY_1_NAME,
    OFFSET_FUNCTION_KEY_2_NAME,
    OFFSET_FUNCTION_KEY_3_NAME,
    OFFSET_FUNCTION_KEY_4_NAME,
} = require("./constants");

const STRING_TERMINATOR = new Uint8Array([0x00]);

const fs = require('fs');

function getName(romContent, offset) {
    const dataOffset = romContent.readUInt16LE(offset);

    return romContent.subarray(dataOffset, romContent.indexOf(STRING_TERMINATOR, dataOffset)).toString('ascii');
}

function extract(romFile) {
    const ROM_CONTENT = fs.readFileSync(romFile);

    return [
        getName(ROM_CONTENT, OFFSET_FUNCTION_KEY_1_NAME),
        getName(ROM_CONTENT, OFFSET_FUNCTION_KEY_2_NAME),
        getName(ROM_CONTENT, OFFSET_FUNCTION_KEY_3_NAME),
        getName(ROM_CONTENT, OFFSET_FUNCTION_KEY_4_NAME),
    ];
}

module.exports = {
    extract,
};