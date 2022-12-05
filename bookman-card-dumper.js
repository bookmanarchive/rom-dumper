const MCP23017 = require('node-mcp23017');

// MCP devices from right to left (physically)

// !! I2C addresses may be different depending on what you set the jump pins to on the Adafruit board
const devices = {
	mcp1: new MCP23017({ address: 0x20, device: 1 }),
	mcp2: new MCP23017({ address: 0x21, device: 1 }),
	mcp3: new MCP23017({ address: 0x23, device: 1 }),
};

const { ROMCARD_TO_MCP, ROMCARD_FUNC_TO_PIN, SIGNAL_DIRECTION } = require('./pinmap.romcardbreakout');

// Setup signal directions and which device is handling what signals
(function setupDevices() {
	for (let romcard_pin = 1; romcard_pin <= 38; romcard_pin++) {
		const [chip, pin] = ROMCARD_TO_MCP['PIN' + romcard_pin];

		const dir = (Object.values(ROMCARD_FUNC_TO_PIN)
			.find(([_romcard_pin]) => _romcard_pin == romcard_pin)
		)[1];

		devices[chip].pinMode(
			pin,
			dir === SIGNAL_DIRECTION.OUT ? devices[chip].OUTPUT : devices[chip].INPUT
		);
	}
})();

function readPin(pinFuncName) {
	const romcard_pin = ROMCARD_FUNC_TO_PIN[pinFuncName][0];
	const [device, mcp_pin] = ROMCARD_TO_MCP['PIN' + romcard_pin]

	return new Promise(
		resolve => devices[device].digitalRead(mcp_pin, (_p, err, value) => resolve(value ? 1 : 0))
	);
}

function writePin(pinFuncName, value) {
	const romcard_pin = ROMCARD_FUNC_TO_PIN[pinFuncName][0];
	const [device, mcp_pin] = ROMCARD_TO_MCP['PIN' + romcard_pin]

	devices[device].digitalWrite(mcp_pin, value ? 1 : 0);
}

function setAddress(addrValue) {
	// 21 bits = 2,097,152 max addressable bytes per ROM chip
	for (let p = -1; p <= 19; p++) {
		const pinValue = addrValue & (1 << (p + 1));

		writePin('A' + p, pinValue);
	}
}

const DATA_PINS = ['DQ0', 'DQ1', 'DQ2', 'DQ3', 'DQ4', 'DQ5', 'DQ6', 'DQ7'];

function sleep(ms) {
	return new Promise((resolve) => setTimeout(resolve, ms));
}

async function getDataFromAddress(addr, sleepTime = 1) {
	setAddress(addr);

	await sleep(sleepTime);

	const pinValues = await (
		Promise.all(DATA_PINS.map(readPin))
	);

	const byteValue = pinValues
		.reduce((acc, curr, i) => acc + (curr * (1 << i)));

	return {
		pins: pinValues.join(','),
		byteValue,
		char: String.fromCharCode(byteValue),
	};
}

////////

const { appendFileSync, unlinkSync } = require('fs');
const { exec } = require('child_process');

let addr = 0;
let isDumping = false;
let readSleepTime = 1; // ms

const MAX_ADDRESS = ((1 << 21) - 1);

// Keep things simple
const filename = 'dump.bin';

async function startDump(deviceROM = 1, sleepTime) {
	if (isDumping) throw 'Already dumping!';

	readSleepTime = sleepTime;

	writePin('BYTE#', 0);	// Enable single BYTE mode (DQ0 ... DQ7 only output pins)
	// This is already tied to GND by the PCB

	// writePin('WE#', 1);		// Disable Write Enable mode

	console.log('Starting dump...');

	isDumping = true;

	// Keep CE#s turned on and only toggle OE# for faster reading
	writePin('CE#_U1', deviceROM === 1 ? 0 : 1); // Invert due to #
	writePin('CE#_U2', deviceROM === 2 ? 0 : 1);

	writePin('OE#', 0); // Enable output

	// Overwrite previously named file
	unlinkSync(filename);

	for (addr = 0; addr <= MAX_ADDRESS; addr++) {
		if (!isDumping) {

			writePin('CE#_U1', 1);
			writePin('CE#_U2', 1);

			writePin('OE#', 1); // Disable output

			return;
		}

		const data = await getDataFromAddress(addr, sleepTime);

		appendFileSync(filename, Buffer.from([data.byteValue]));
	}

	isDumping = false;

	console.log(`Dump of completed!`);
	// reboot();
}

function stopDump() {
	console.log('Stopping dump...');
	isDumping = false;
}

function reboot() {
	console.log('Now rebooting!');
	exec('sudo reboot now');
}

function shutdown() {
	console.log('Now rebooting!');
	exec('sudo shutdown now');
}

module.exports = {
	reboot,
	shutdown,
	startDump,
	stopDump,
	clearDump,
	getAddr: () => addr
};