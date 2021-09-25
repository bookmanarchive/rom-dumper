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

function startROMDump() {
    await callApi('/start-dump');

    setTimeout(getROMDumpProgress, 3000);
}

function stopROMDump() {
    await callApi('/stop-dump');
    alert('Stopped.');
}

async function getROMDumpProgress() {
    const res = await callApi('/get-next-dump-addr');
    const text = await res.text();

    const MAX_ADDRESS = ((1 << 21) - 1);
    const addr = parseInt(text, 10);

    const progress = Math.round((addr / MAX_ADDRESS) * 100);
    document.getElementById('progress').value = progress;
    document.getElementById('bytes').innerHTML = addr;
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