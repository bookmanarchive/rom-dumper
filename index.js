const MCP23017 = require('node-mcp23017');



const PINMAP = 

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

const { appendFileSync } = require('fs');

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
