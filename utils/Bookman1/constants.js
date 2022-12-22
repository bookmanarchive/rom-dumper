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

// Model code stored as an UInt16LE
const MODEL_CODE = 0xB;
const MODEL_CODE_SIZE = 2;

// These UInt32LE values represent the total file sizes of the ROM banks U1, U2
const OFFSET_ROM_U1_FILESIZE = 0x48;
const ROM_U1_FILESIZE_SIZE = 4;        

const OFFSET_ROM_U2_FILESIZE = 0x4C;
const ROM_U2_FILESIZE_SIZE = 4;        

// Function keys (soft keys)
const OFFSET_FUNCTION_KEY_1_NAME = 0xAA;
const OFFSET_FUNCTION_KEY_2_NAME = 0xAC;
const OFFSET_FUNCTION_KEY_3_NAME = 0xAE;
const OFFSET_FUNCTION_KEY_4_NAME = 0xB0;

// Images
const IMAGE_DELIMITERS = {
    // All images have max height 24 (Bookman1 native resolution)
    SPRITE_8W: 0x01,    // size 8   x ?? images
    SPRITE_16W: 0x02,   // size 16  x ?? images
    SPRITE_24W: 0x03,   // size 24  x ?? images
    SPRITE_32W: 0x04,   // size 32  x ?? images
    SPRITE_40W: 0x05,   // size 40  x ?? images (more than 1, but first is always the card icon)
    SPRITE_48W: 0x06,   // size 48  x ?? images
    SPRITE_56W: 0x07,   // size 56  x ?? images,
    SPRITE_64W: 0x08,   // size 64  x ??
    SPRITE_72W: 0x09,   // size 72  x ??
    SPRITE_128W: 0x10,  // size 128 x ??
};

const OFFSET_CARD_ICON_STRUCT = 0x7E;
const CARD_ICON_STRUCT_SIZE = 10; // bytes

module.exports = {
    MAGIC_NUMBER,

    MODEL_CODE,
    MODEL_CODE_SIZE,

    OFFSET_ROM_U1_FILESIZE,
    ROM_U1_FILESIZE_SIZE,
    OFFSET_ROM_U2_FILESIZE,
    ROM_U2_FILESIZE_SIZE,
    
    OFFSET_FUNCTION_KEY_1_NAME,
    OFFSET_FUNCTION_KEY_2_NAME,
    OFFSET_FUNCTION_KEY_3_NAME,
    OFFSET_FUNCTION_KEY_4_NAME,
    
    OFFSET_CARD_ICON_STRUCT,
    CARD_ICON_STRUCT_SIZE,

    IMAGE_DELIMITERS,
};