const { OFFSET_FUNCTION_KEY_NAMES } = require("./constants");

const STRING_DELIMITER = new Uint8Array([0x00]);

const fs = require('fs');

function extract(romFile) {
    const ROM_CONTENT = fs.readFileSync(romFile);
    const arrayOffset = ROM_CONTENT.readUInt16LE(OFFSET_FUNCTION_KEY_NAMES);

    const nameData = ROM_CONTENT.subarray(arrayOffset, arrayOffset + 256); // Will always fit inside the next 256 bytes
    let prevStringTerminationOffset = 0;
    let stringTerminationOffset = 0;

    const functionKeyName = [];

    for (let index = 0; index < 4; index++) {
        stringTerminationOffset = nameData.indexOf(STRING_DELIMITER, prevStringTerminationOffset + 1);
        functionKeyName.push(nameData.subarray(prevStringTerminationOffset, stringTerminationOffset).toString('ascii'));

        prevStringTerminationOffset = stringTerminationOffset + 1;
    }

    return functionKeyName;
}

module.exports = {
    extract,
};