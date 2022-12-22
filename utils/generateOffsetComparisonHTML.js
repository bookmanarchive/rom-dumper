// This tool highlights differences in values at equivalent binary offsets between 2 files.

const fs = require('fs');

const [_NODECLI, _SCRIPT, ROM_X_FILEPATH, ROM_Y_FILEPATH, page = 0] = process.argv;

const romX = fs.readFileSync(ROM_X_FILEPATH);
const romY = fs.readFileSync(ROM_Y_FILEPATH);

const largerROM = romX.length > romY.length ? romX : romY;
const smallerROM = romX.length > romY.length ? romY : romX;

// Show smaller file sized ROMs on the left and larger ones on the right
// Should only do a dumb comparison by offset value (for now)

const displayCells = {
    smallerHex: '',
    largerHex: '',
    smallerAscii: '',
    largerAscii: '',
};

const decoderAscii = new TextDecoder('utf-8');

const pageSize = 1 << 11;
const startOffset = pageSize * page;

for (
    let offset = 0;
    (offset + startOffset < smallerROM.length) &&
    (offset < pageSize);
    offset++
) {
    const smallerROMValue = smallerROM.readUInt8(offset + startOffset);
    const largerROMValue = largerROM.readUInt8(offset + startOffset);

    const isDiff = smallerROMValue !== largerROMValue ? 'diff' : '';

    displayCells.smallerHex += `<span class="${isDiff}">${smallerROMValue.toString(16).padStart(2, '0')}</span>`;
    displayCells.smallerAscii += `<span class="${isDiff}">${decoderAscii.decode(smallerROM.subarray(offset + startOffset, offset + startOffset + 1))}</span>`;
    displayCells.largerHex += `<span class="${isDiff}">${largerROMValue.toString(16).padStart(2, '0')}</span>`;
    displayCells.largerAscii += `<span class="${isDiff}">${decoderAscii.decode(largerROM.subarray(offset + startOffset, offset + startOffset + 1))}</span>`;
}

fs.writeFileSync('output.html', fs.readFileSync('./template.html').toString()
    .replace('__SMALLER_FILENAME__', smallerROM === romX ? ROM_X_FILEPATH : ROM_Y_FILEPATH)
    .replace('__LARGER_FILENAME__', smallerROM === romX ? ROM_Y_FILEPATH : ROM_X_FILEPATH)
    .replace('__SMALLER_HEX__', displayCells.smallerHex)
    .replace('__SMALLER_ASCII__', displayCells.smallerAscii)
    .replace('__LARGER_HEX__', displayCells.largerHex)
    .replace('__LARGER_ASCII__', displayCells.largerAscii)
    .replace('__START_OFFSET__', startOffset)
);