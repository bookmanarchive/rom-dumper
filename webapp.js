const express = require('express');
const { createReadStream } = require('fs');
const app = express();

const { startDump, stopDump, getAddr, reboot, shutdown } = require('./bookman-card-dumper');

app.use(express.urlencoded({ extended: true }));

app.post('/get-next-dump-addr', (req, res) => {
    res.send(getAddr().toString());
});

app.post('/stop-dump', (req, res) => {
    stopDump();
    res.send('OK');
});

app.post('/start-dump', (req, res) => {
    const { deviceROM, startOffset } = req.body;
    try {
        startDump(
            parseInt(deviceROM.toString(), 10),
            parseInt(startOffset.toString(), 10)
        );
        res.send('OK');
    } catch (e) {
        res.send(e);
    }
});

app.post('/reboot', (req, res) => {
    reboot();
    res.send('OK');
});

app.post('/shutdown', (req, res) => {
    shutdown();
    res.send('OK');
});

const { readdirSync } = require('fs');

app.post('/get-downloadable-rom-files', (req, res) => {
    res.contentType('text/plain').send(
        readdirSync('.')
            .filter(f => /\.bin$/.test(f))
            .join('\n')
    );
});

app.post('/get-rom-header', (req, res) => {
    try {
        const dumpedFileStream = createReadStream('dump.bin', {
            start: 0x0,
            end: 0x100
        });

        let romHeader = '';

        dumpedFileStream.on('data', chunk => romHeader += chunk);
        dumpedFileStream.on('end', () => {
            res.contentType('text/plain').send(romHeader);
        });
    } catch (e) {
        console.trace(e);
        res.status(400).end();
    }
});

app.use('/roms', express.static('.', { extensions: ['bin'] }));
app.use(express.static('./public'));

app.listen(3000, () => {
    console.log(`ROM Dumper web monitor now online...`);
});