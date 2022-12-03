const showByte = byte => (byte).toString(2).padStart(8, '0');

// Displays binary string for values
// to debug send / receive errors due to bad signals on the lines.

// You can figure out which line is incorrect if you do a comparison with a known good value
module.exports = {
    compareAddr: addr => (addr).toString(2).padStart(21, '0'),
    compare2Bytes: (b1, b2) => console.log(showByte(b1) + '\n' + showByte(b2)),
};