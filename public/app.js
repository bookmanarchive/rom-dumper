function callApi(url, body) {
    return fetch(url, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: (new URLSearchParams(body)).toString()
    });
}

function getDateString() {
    return (new Date).toISOString().replace(/[\.\:T]/g, '-');
}

let prevROMName = `dump.bookman.${getDateString()}.bin`;

function setROMName() {
    const name = prompt('Set the filename for the ROM', prevROMName);

    if (name) {
        prevROMName = name;
        callApi('/set-rom-name', { name });
    }
}

function getROMName() {
    alert(prevROMName);
}

async function getROMHeader() {
    const res = await callApi('/get-rom-header');
    const text = await res.text();

    document.getElementById('romheader').value = text;
}

let progressUpdateInterval;

function startROMDump() {
    callApi('/start-dump');

    clearInterval(progressUpdateInterval);
    progressUpdateInterval = setInterval(getROMDumpProgress, 3000);
}

function stopROMDump() {
    callApi('/stop-dump');
    alert('Stopped.');
    clearInterval(progressUpdateInterval);
}

function getHumanFileSize(b) {
    const i = ~~(Math.log2(b)/10); 
    return (b/Math.pow(1024,i)).toFixed(2) + ("KMGTPEZY"[i-1]||"") + "B";
}

async function getROMDumpProgress() {
    let res = await callApi('/get-next-dump-addr');
    let text = await res.text();

    const MAX_ADDRESS = ((1 << 21) - 1);
    const addr = parseInt(text, 10);

    const progress = Math.round((addr / MAX_ADDRESS) * 100);
    document.getElementById('progress').value = progress;
    document.getElementById('bytes').innerHTML = getHumanFileSize(addr) + ' dumped.';

    res = await callApi('/get-rom-name');
    text = await res.text();
    prevROMName = text;
}

async function getDownloadableROMFiles() {
    let res = await callApi('/get-downloadable-rom-files');
    let text = await res.text();

    document.getElementById('download-links').innerHTML = text.split('\n')
    .map(f=>`<div><a href="/roms/${f}" target="_blank" download="${f}">${f}</a></div>`);
}

addEventListener('keypress', ({ which }) => {
    switch (which) {
        case 104: // h
            getROMHeader();
            break;
        case 112: // p
            getROMDumpProgress();
            break;
        case 113: // q
            getROMName();
            break;
        case 110: // n
            setROMName();
            break;
        default: // nothing
            console.log(which);
    }
});