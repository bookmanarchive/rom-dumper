const IN = 0;
const OUT = 1;

module.exports = {
    // Relative to the Pi
    // IN 	= receive a signal from the ROM card
    // OUT 	= feed a signal to the ROM card
    SIGNAL_DIRECTION: { IN, OUT },
    /* 
        [ pin, signal direction ]
        use `pin` with `ROMCARD_TO_MCP['PIN' + pin]`
    */
    ROMCARD_FUNC_TO_PIN: {
        'BYTE#'   : [1, OUT],
        'A-1'     : [2, OUT],
        'A0'      : [3, OUT],
        'A1'      : [4, OUT],
        'A2'      : [5, OUT],
        'A3'      : [6, OUT],
        'A4'      : [7, OUT],
        'A5'      : [8, OUT],
        'A6'      : [9, OUT],
        'A11'     : [10, OUT],
        'A14'     : [11, OUT],
        'A15'     : [12, OUT],
        'A17'     : [13, OUT],
        'A16'     : [14, OUT],
        'A13'     : [15, OUT],
        'A12'     : [16, OUT],
        'A7'      : [17, OUT],
        'A8'      : [18, OUT],
        'A10'     : [19, OUT],
        'A9'      : [20, OUT],
        'UNKNOWN1': [21, OUT],
        'OE#'     : [22, OUT],
        'CE#_U1'  : [23, OUT],
        'A19'     : [24, OUT],
        'CE#_U2'  : [25, OUT],
        'UNKNOWN2': [26, OUT],
        'WE#'     : [27, OUT],
        'A18'     : [28, OUT],
        'UNKNOWN3': [29, OUT],
        'DQ0'     : [30, IN],
        'DQ1'     : [31, IN],
        'DQ2'     : [32, IN],
        'DQ3'     : [33, IN],
        'DQ4'     : [34, IN],
        'DQ5'     : [35, IN],
        'DQ6'     : [36, IN],
        'DQ7'     : [37, IN],
        'UNKNOWN4': [38, IN],
    },

    // MCPs are not connected to pins 5A and 35A for this breakout board!
    // They are always NC for the ROM cards.
    ROMCARD_TO_MCP: {
        // MCP1 row A
        PIN38: ['mcp1', 0],
        PIN37: ['mcp1', 1],
        PIN36: ['mcp1', 2],
        PIN35: ['mcp1', 3],
        PIN34: ['mcp1', 4],
        PIN33: ['mcp1', 5],
        PIN32: ['mcp1', 6],
        PIN31: ['mcp1', 7],

        // MCP1 row B
        PIN30: ['mcp1', 8],
        PIN29: ['mcp1', 9],
        PIN28: ['mcp1', 10],
        PIN27: ['mcp1', 11],
        PIN26: ['mcp1', 12],
        PIN25: ['mcp1', 13],
        PIN24: ['mcp1', 14],
        PIN23: ['mcp1', 15],

        // MCP2 row A
        PIN22: ['mcp2', 0],
        PIN21: ['mcp2', 1],
        PIN20: ['mcp2', 2],
        PIN19: ['mcp2', 3],
        PIN18: ['mcp2', 4],
        PIN17: ['mcp2', 5],
        PIN16: ['mcp2', 6],
        PIN15: ['mcp2', 7],

        // MCP2 row B
        PIN14: ['mcp2', 8],
        PIN13: ['mcp2', 9],
        PIN12: ['mcp2', 10],
        PIN11: ['mcp2', 11],
        PIN10: ['mcp2', 12],
        PIN9 : ['mcp2', 13],
        PIN8 : ['mcp2', 14],
        PIN7 : ['mcp2', 15],

        // MCP3 row A
        PIN6           : ['mcp3', 0],
        PIN5           : ['mcp3', 1],
        PIN4           : ['mcp3', 2],
        PIN3           : ['mcp3', 3],
        PIN2           : ['mcp3', 4],
        PIN1           : ['mcp3', 5],
        NOT_CONNECTED_1: ['mcp3', 6],
        NOT_CONNECTED_2: ['mcp3', 7],
    }
};