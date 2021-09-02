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

	A5: ['mcp1', 0, DIR.OUT],   //
	A4: ['mcp1', 1, DIR.OUT],   //
	A19: ['mcp1', 2, DIR.OUT],   //
	A16: ['mcp1', 3, DIR.OUT],   //
	A15: ['mcp1', 4, DIR.OUT],   //
	A12: ['mcp1', 5, DIR.OUT],   //
	A7: ['mcp1', 6, DIR.OUT],    //
	A6: ['mcp1', 7, DIR.OUT],   //

	A3: ['mcp1', 8, DIR.OUT],
	A2: ['mcp1', 9, DIR.OUT],
	A1: ['mcp1', 10, DIR.OUT],
	A0: ['mcp1', 11, DIR.OUT],
	Q0: ['mcp1', 12, DIR.IN],
	Q1: ['mcp1', 13, DIR.IN],
	Q2: ['mcp1', 14, DIR.IN],
	// VSS: ['mcp1', 15, DIR.IN], // // THIS IS GND

	//// Second MCP

	A13: ['mcp2', 0, DIR.OUT],   //
	A8: ['mcp2', 1, DIR.OUT],   //
	A9: ['mcp2', 2, DIR.OUT],   //
	A11: ['mcp2', 3, DIR.OUT],   //
	A14: ['mcp2', 4, DIR.OUT],   //
	A17: ['mcp2', 5, DIR.OUT],   //
	A18: ['mcp2', 6, DIR.OUT],    //
	// VCC: ['mcp2', 7, DIR.OUT], // // THIS IS +3V

	OE: ['mcp2', 8, DIR.OUT],    //
	A10: ['mcp2', 9, DIR.OUT],    //
	CE: ['mcp2', 10, DIR.OUT],   //
	Q7: ['mcp2', 11, DIR.IN],   //
	Q6: ['mcp2', 12, DIR.IN],   // 
	Q5: ['mcp2', 13, DIR.IN],    //
	Q4: ['mcp2', 14, DIR.IN],    // 
	Q3: ['mcp2', 15, DIR.IN],    //

};

Object.keys(PINMAP).forEach(k => {
	const [chip, pin, dir] = PINMAP[k];

	devices[chip].pinMode(
		pin,
		dir === DIR.OUT ? devices[chip].OUTPUT : devices[chip].INPUT 
	);
});

function readPin(pinName) {
	const [chip, pin] = PINMAP[pinName];
	return new Promise(
		// TTL logic is active-low
		resolve => devices[chip].digitalRead(pin, (_p, err, value) => resolve(value ? 1 : 0))
	);
}

function writePin(pinName, value) {
	const [chip, pin] = PINMAP[pinName];
	// TTL logic is active-low
	devices[chip].digitalWrite(pin, !!value);
}

function setAddress(addrValue) {
	for (let p = 0; p < 20; p++) {
		const pinValue = (addrValue & (1 << p)) > 0;
		writePin('A' + p, pinValue);
	}
}

function sleep(ms) {
	return new Promise(resolve => setTimeout(resolve, ms));
}

async function getDataFromAddress(addr) {
	setAddress(addr);

	const pinValues = await (
		Promise.all('0,1,2,3,4,5,6,7'.split(',').map(p => readPin('Q' + p)))
	);

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
	writePin('CE', false);
	writePin('OE', false);
	await sleep(1);

	const offset = 0x00;
	
	for (let addr = 0; addr < (1 << 20); addr++) {
		const data = await getDataFromAddress(addr + offset);
		//console.log('0x' + (addr + offset).toString(16)); //, data.byteValue, data.char);
		appendFileSync('dump.inv.bin', Buffer.from([data.byteValue]));
	}
})();
