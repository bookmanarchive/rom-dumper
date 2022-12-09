// Basics

const MAGIC_NUMBER = new Uint8Array([
    //         ASCII
    0x42,   // B
    0x6F,   // o
    0x6F,   // o
    0x6B,   // k
    0x6D,   // m
    0x61,   // a
    0x6E,   // n
    0x31    // 1
]);

const OFFSET_ROM_FILESIZE = 0x48;
// This UInt32LE is the total file size of the ROM
const ROM_FILESIZE_SIZE = 4;        


const OFFSET_FUNCTION_KEY_1_NAME = 0xAA;
const OFFSET_FUNCTION_KEY_2_NAME = 0xAC;
const OFFSET_FUNCTION_KEY_3_NAME = 0xAE;
const OFFSET_FUNCTION_KEY_4_NAME = 0xB0;

const OFFSET_CARD_ICON_STRUCT = 0x7E;
const CARD_ICON_STRUCT_SIZE = 10; // bytes

module.exports = {
    MAGIC_NUMBER,

    OFFSET_ROM_FILESIZE,
    ROM_FILESIZE_SIZE,
    
    OFFSET_FUNCTION_KEY_1_NAME,
    OFFSET_FUNCTION_KEY_2_NAME,
    OFFSET_FUNCTION_KEY_3_NAME,
    OFFSET_FUNCTION_KEY_4_NAME,
    
    OFFSET_CARD_ICON_STRUCT,
    CARD_ICON_STRUCT_SIZE,
};