const { readFileSync } = require('fs');

const getRomFile = name => readFileSync(`roms/${name}`);
const getArrayFromMultiline = s => s.split('\n').map(l => l.trim()).filter(Boolean);

const SIZE_200K_FILES = getArrayFromMultiline(`
BJP-2034_v1.0_U1.bin
MBC-2036_v1.1_U1.bin
WGM-2037_v1.0_U1.bin
`);

const SIZE_500K_FILES = getArrayFromMultiline(`
ATH-2011_v1.0_U1.bin
BQC-2021_v1.0_U1.bin
CWQ-2056_v1.0_U1.bin
EMG-2006_v1.0_U1.bin
SLM-2013_v1.0_U1.bin
XBT-2058_v1.0_U1.bin
XGT-2043_v1.0_U1.bin
XST-2051_v1.0_U1.bin
`);

const SIZE_1M_FILES = getArrayFromMultiline(`
BDF-2027_v1.0_U1.bin
BES-2019_v1.2_U1.bin
BQF-2025_v1.2_U1.bin
CDR-2041_v1.0_U1.bin
CED-2031_v1.0_U1.bin
CET-2073_v1.0_U1.bin
DBD-2015_v1.0_U1.bin
DBE-2020_v1.1_U1.bin
DMQ-2016_v1.0_U1.bin
GWH-2055_v1.0_U1.bin
KJB-2003_v1.2_U1.bin
MWS-2018_v1.1_U1.bin
NDH-2081_v1.0_U1.bin
NIV-2004_v1.0_U1.bin
QBD-2067_v1.0_U1.bin
RMB-2030_v1.0_U1.bin
SPB-2053_v1.0_U1.bin
`);

const SIZE_2M_FILES = getArrayFromMultiline(`
BFE-2080_v1.0_U1.bin
`);


function displayBytes(file, fromOffset, toOffset) {
    const fileData = getRomFile(file);
    console.log(`${file.split('_')[0]}\t${(fileData.subarray(fromOffset, toOffset).toString('hex').match(/.{1,2}/g))
        .join(' ').toUpperCase()
        }`)
}

function showComparisons(fileset, name) {
    console.log(`--- --- --- --- --- --- --- --- ${name}`);

    for (let f of fileset) {
        displayBytes(f, 8, 11);
    }

}

showComparisons(SIZE_200K_FILES, '200K ROMs');
showComparisons(SIZE_500K_FILES, '500K ROMs');
showComparisons(SIZE_1M_FILES, '1M ROMs');
showComparisons(SIZE_2M_FILES, '2M ROMs');