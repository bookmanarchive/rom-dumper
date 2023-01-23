const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);

const { file } = Object.fromEntries(new URLSearchParams(location.search.substring(1)));
console.log(file);
let byteLength = 0;
let fileAB;
let offset = 0;

function displayBytes(from, to) {
    document.title = 'Viewing ' + file + ' (offset 0x' + from.toString(16) + ')';
    h = "";

    let j = 0;

    for (i in u = new Uint8Array(fileAB.slice(from, to))) {
        j++;
        h += (0 + u[i].toString(16)).slice(-2);
        h += j % 16 === 0 ? "\n" : ' ';
    }

    m.value = h;

    m.oninput();
}

function loadFile() {
    if (!file) return;

    let fileReq = new XMLHttpRequest();
    fileReq.open("GET", file, true);
    fileReq.responseType = "blob";

    fileReq.send();

    fileReq.onload = async function () {
        fileAB = await fileReq.response.arrayBuffer();

        byteLength = fileAB.byteLength;
        setViewFromScroll();
        resetScrollHeight();

        document.title = 'Viewing ' + file;
        document.getElementById('filename').innerHTML = 'Viewing <tt>' + file + '</tt>';
        window.onresize = resetScrollHeight;
    }
}

function resetScrollHeight() {
    const t = document.getElementById('t');
    t.style.transform = '';

    document.body.style.height = Math.round(byteLength / 0x10 * 20) + 'px';
    const { width, height } = t.getBoundingClientRect();
    const scaleX = innerWidth / width;
    const scaleY = innerHeight / height;
    const scaleMin = Math.min(scaleX, scaleY);
    t.style.transformOrigin = 'top left';
    t.style.transform = 'scale(' + scaleMin + ') translate(-50%, -50%)';

}

let scrollViewTimeout;

function onScroll() {
    clearTimeout(scrollViewTimeout);
    scrollViewTimeout = setTimeout(setViewFromScroll, 10);
}

function setViewFromScroll() {
    const from = Math.floor(document.body.scrollTop / 20) * 0x10;
    const to = from + 0x200;
    offset = from;
    displayBytes(from, to);
}

function onInput(textareaEl) {
    const { style, value } = textareaEl;
    // Set the height of the textarea according to its length
    style.height = ((1.5 + value.length) / 48) + "em";

    h = "";

    // Loop on textarea lines
    for (i = 0; i < value.length / 48; i++)

        // Add line number to h
        h += (16 * i + offset).toString(16) + "\n";

    // Write h on the left column
    l.innerHTML = h;

    h = "";
    // Loop on the hex values
    for (i = 0, j = 0; i < value.length; i += 3) {
        j++;
        c = parseInt(value.substr(i, 2), 16);
        if (c >= 32 && c < 127) {
            if (c === 60) {
                h += '&lt;';
            } else if (c === 26) {
                h += '&amp;';
            } else if (c === 62) {
                h += '&gt;';
            } else {
                h += String.fromCharCode(c);
            }
        } else if (c >= 161 && c <= 255) {
            if (c === 173) {
                h += '-';
            } else {
                h += String.fromCharCode(c);
            }
        } else {
            h += '.';
        };
        if (j % 16 === 0) h += "\n";
    }

    r.innerHTML = h;
}

alert(`TODO: Highlight known regions in the ROM if they are loaded`);