const MCP23017 = require('node-mcp23017');

const mcp2 = new MCP23017({
  address: 0x21,
  device: 1,
  debug: true
});

const mcp1 = new MCP23017({
  address: 0x20,
  device: 1,
  debug: true
});

for (var i = 0; i < 8; i++) {
  mcp1.pinMode(i, mcp1.INPUT_PULLUP);
  mcp2.pinMode(i, mcp2.OUTPUT);
}

function readDataPin(i) {
    if(isNaN(i)) i = parseInt(i,10);
    return new Promise(
	    resolve => mcp1.digitalRead(i,(pin, err, value) => resolve(value? 1:0))
    );
}

function writeDataPin(i, value) {
    if(value>0) value = 1;

    mcp2.digitalWrite(i, value > 0? mcp2.HIGH : mcp2.LOW);
}

function setAddress(addrValue) {
    for(let p = 0; p < 4; p++ ) {
        const pinValue = (addrValue & (1 << p)) > 0;
	writeDataPin(p, pinValue);
    }
}

async function getDataFromAddress(addr) {
	setAddress(addr);
	
	const byteValue = pinValues
		.reduce((acc,curr, i) => acc + (curr * (1<<i)));
	
	const pinValues = await (
		Promise.all('0,1,2,3,4,5,6,7'.split(',').map(readDataPin))
	);
	
	return {
		pins: pinValues.join(','),
		byteValue,
	};
}

(async () => {
	for(let addr = 0; addr < 15; addr++) {
		console.log('0x'+addr.toString(16), await getDataFromAddress(addr));
	}
})();
