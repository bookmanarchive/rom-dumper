const express = require('express');
const { createReadStream } = require('fs');
const app = express();

const { startDump, stopDump, getAddr, clearDump, reboot, shutdown } = require('./bookman-card-dumper');

app.use(express.urlencoded({ extended: true }));

let romDumpFile = 'dump.bookman.bin';

app.post('/set-rom-name', (req, res) => {
    const { name } = req.body;

    if (name) {
        romDumpFile = name;
    }

    res.end();
});

app.post('/get-next-dump-addr', (req, res) => {
    res.send(getAddr().toString());
});

app.post('/stop-dump', (req, res) => {
    stopDump(romDumpFile);
    res.send('OK');
});

app.post('/delete-dump', (req, res) => {
    const { name } = req.body;
    if (name && /\.bin$/.test(name)) {
        clearDump(name);
    }

    res.send('OK');
});

app.post('/get-rom-name', (req, res) => {
    res.contentType('text/plain').send(romDumpFile);
});

app.post('/start-dump', (req, res) => {
    const { deviceROM } = req.body;
    try {
        startDump(romDumpFile, parseInt(deviceROM.toString(), 10));
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
        const dumpedFileStream = createReadStream(romDumpFile, {
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