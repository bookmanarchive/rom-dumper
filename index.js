const MCP23017 = require('node-mcp23017');

const mcp1 = new MCP23017({
  address: 0x20,
  device: 1,
  debug: true
});

for (var i = 0; i < 8; i++) {
  mcp1.pinMode(i, mcp1.INPUT_PULLUP);
}

function readDataPin(i) {
    if(isNaN(i)) i = parseInt(i,10);
    return new Promise(
	    resolve => mcp1.digitalRead(i,(pin, err, value) => resolve(value? 1:0))
    );
}

(async ()=>{
	const pinValues = await (
		Promise.all('0,1,2,3,4,5,6,7'.split(',').map(readDataPin))
	);
	
	const byteValue = pinValues
		.reduce((acc,curr, i) => acc + (curr * (1<<i)));
	
	console.log(byteValue, pinValues)
})();
