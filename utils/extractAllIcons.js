const fs = require('fs');

const CardIcon = require('./Bookman1/CardIcon');
const FunctionKeyName = require('./Bookman1/FunctionKeyName');

const DIR_ROMS = 'roms';

(async () => {
    const erroredList = [];

    for (const romFile of fs.readdirSync(DIR_ROMS)) {
        // Only try extracting from U1 roms (first memory bank)
        if (romFile.indexOf('_U1.bin') < 0) continue;

        try {
            const filePath = `${DIR_ROMS}/${romFile}`;
            
            await CardIcon.extract(filePath);

            console.log(FunctionKeyName.extract(filePath));
            
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