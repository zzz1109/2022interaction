
function setup() {
    initializeFields();
    createCanvas(500, 500);
}

function draw() {
    background(color(0xC6, 0x20, 0xB3));
    fill(color(0x52, 0xD1, 0xB6));
    rect(100, 100, 150, 100);
    rect(mouseX, mouseY, 150, 100);
}

function initializeFields() {
}
