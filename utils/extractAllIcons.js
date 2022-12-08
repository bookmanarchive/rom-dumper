const fs = require('fs');

const extractCardIcon = require('./extractCardIcon');

const DIR_ROMS = 'roms';

(async () => {
    for (const romFile of fs.readdirSync(DIR_ROMS)) {
        // Only try extracting from U1 roms (first memory bank)
        if (romFile.indexOf('_U1.bin') < 0) continue;

        try {
            await extractCardIcon(`${DIR_ROMS}/${romFile}`);
        } catch (e) {
            console.trace(e);
        }
    }
})();