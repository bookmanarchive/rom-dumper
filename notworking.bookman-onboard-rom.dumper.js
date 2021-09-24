const MCP23017 = require('node-mcp23017');

const devices = {
	// On ribbon cable
	mcp2: new MCP23017({
		address: 0x21,
		device: 1,
	}),

	// Closest to PI
	mcp1: new MCP23017({
		address: 0x20,
		device: 1,
	})
};

const DIR = { IN: 0, OUT: 1 };

const PINMAP = {
	//// First MCP

	A0: ['mcp2', 0, DIR.OUT],   //
	A1: ['mcp2', 1, DIR.OUT],   //
	A2: ['mcp2', 2, DIR.OUT],   //
	A3: ['mcp2', 3, DIR.OUT],  	//
	A4: ['mcp2', 4, DIR.OUT],   //
	A5: ['mcp2', 5, DIR.OUT],  	//
	A6: ['mcp2', 6, DIR.OUT],  	//
	A7: ['mcp2', 7, DIR.OUT],   //

	A12: ['mcp2', 8, DIR.OUT],	//
	A15: ['mcp2', 9, DIR.OUT],	//
	A16: ['mcp2', 10, DIR.OUT],	//
	A18: ['mcp2', 11, DIR.OUT],	//
	A17: ['mcp2', 12, DIR.OUT],	//
	A14: ['mcp2', 13, DIR.OUT],	//
	A13: ['mcp2', 14, DIR.OUT],	//
	A8: ['mcp2', 15, DIR.OUT],	//

	//// Second MCP

	A9: ['mcp1', 8, DIR.OUT],   //
	A11: ['mcp1', 9, DIR.OUT],  //
	A10: ['mcp1', 10, DIR.OUT],	//
	A20: ['mcp1', 11, DIR.OUT], //
	A19: ['mcp1', 12, DIR.OUT], //
	
	OE: ['mcp1', 13, DIR.OUT],  	//
	CE: ['mcp1', 14, DIR.OUT],  	//
	
	Q0: ['mcp1', 0, DIR.IN],   	//
	Q1: ['mcp1', 1, DIR.IN],  	//
	Q2: ['mcp1', 2, DIR.IN],  	//
	Q3: ['mcp1', 3, DIR.IN],  	//
	Q4: ['mcp1', 4, DIR.IN],   	//
	Q5: ['mcp1', 5, DIR.IN],  	//
	Q6: ['mcp1', 6, DIR.IN],  	//
	Q7: ['mcp1', 7, DIR.IN],  	//

};

Object.keys(PINMAP).forEach(k => {
	const [chip, pin, dir] = PINMAP[k];

	devices[chip].pinMode(
		pin,
		dir === DIR.OUT ? devices[chip].OUTPUT : devices[chip].INPUT_PULLUP 
		// dir === DIR.OUT ? devices[chip].OUTPUT : devices[chip].INPUT
	);
});

function readPin(pinName) {
	const [chip, pin] = PINMAP[pinName];
	return new Promise(
		resolve => devices[chip].digitalRead(pin, (_p, err, value) => resolve(value ? 1 : 0))
	);
}

function writePin(pinName, value) {
	const [chip, pin] = PINMAP[pinName];
	devices[chip].digitalWrite(pin, value);
}

function setAddress(addrValue) {
	for (let p = 0; p <= 20; p++) {
		const pinValue = (addrValue & (1 << p)) > 0;
		writePin('A' + p, pinValue);
	}
}

function sleep(ms) {
	return new Promise(resolve => setTimeout(resolve, ms));
}

async function getDataFromAddress(addr) {
	// writePin('OE',true);
	// writePin('CE',true);

	// setAddress(addr);

	const pinValues = await (
		Promise.all('0,1,2,3,4,5,6,7'.split(',').map(p => readPin('Q' + p)))
	);

	// writePin('OE',false);
	// writePin('CE',false);

	const byteValue = pinValues
		.reduce((acc, curr, i) => acc + (curr * (1 << i)));

	return {
		pins: pinValues.join(','),
		byteValue,
		char: String.fromCharCode(byteValue),
	};
}

const {appendFileSync} = require('fs');

(async () => {
	// ROM starts here?
	// const offset = 0x70d0;
	const offset = 0x000;
	
	writePin('OE',true);
	writePin('CE',true);

	const MAX_ADDRESS = ((1 << 21)-1);
	const ADDR = MAX_ADDRESS;// 1<<8;

	for (let addr = 0; addr <= ADDR; addr++) {
		const data = await getDataFromAddress(addr + offset);
		
		console.log('0x' + (addr + offset).toString(16), data.byteValue, data.char); 
		
		// if(addr % 7 === 0) {
		// 	console.log('0x' + (addr + offset).toString(16));
		// }

		// appendFileSync('dump.bookman.onboard.bin', Buffer.from([data.byteValue]));
	}
})();
