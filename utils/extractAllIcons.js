const fs = require('fs');

const Bookman1CardIcon = require('./Bookman1/CardIcon');
const Bookman2CardIcon = require('./Bookman2+/CardIcon');

const DIRS = {
    BOOKMAN1: 'roms',
    BOOKMAN2: 'roms/Bookman2+',
};

(async () => {
    const erroredList = [];

    // Bookman1
    for (const romFile of fs.readdirSync(DIRS.BOOKMAN1)) {
        // Only try extracting from U1 roms (first memory bank)
        if (romFile.indexOf('_U1.bin') < 0) continue;

        const MODEL_CODE = romFile.split('_')[0];
        if (!MODEL_CODE) continue;

        const modelCodeFirstDigit = MODEL_CODE.split('-')[1][0];
        if (modelCodeFirstDigit !== '2') continue;

        const filePath = `${DIRS.BOOKMAN1}/${romFile}`;

        try {
            await Bookman1CardIcon.extract(filePath);
        } catch (e) {
            erroredList.push(romFile);
            console.trace(e);
        }
    }

    // Bookman2+
    for (const romFile of fs.readdirSync(DIRS.BOOKMAN2)) {
        if (romFile.indexOf('.bin') < 0) continue;

        const MODEL_CODE = romFile.split('_')[0];
        if (!MODEL_CODE) continue;

        const modelCodeFirstDigit = MODEL_CODE.split('-')[1][0];
        if (modelCodeFirstDigit !== '3') continue;

        const filePath = `${DIRS.BOOKMAN2}/${romFile}`;

        try {
            await Bookman2CardIcon.extract(filePath);
        } catch (e) {
            erroredList.push(romFile);
            console.trace(e);
        }
    }

    if (erroredList.length > 0) {
        console.log('\n\nThese dump files failed extraction:\n' + erroredList.map(r => `  - ${r}`).join('\n'));
    }

    console.log('\n\nDONE!');
})();