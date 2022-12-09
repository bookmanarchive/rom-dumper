const fs = require('fs');

const extractCardIcon = require('./extractCardIcon');

const DIR_ROMS = 'roms';

(async () => {
    const erroredList = [];

    for (const romFile of fs.readdirSync(DIR_ROMS)) {
        // Only try extracting from U1 roms (first memory bank)
        if (romFile.indexOf('_U1.bin') < 0) continue;

        try {
            await extractCardIcon(`${DIR_ROMS}/${romFile}`);
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