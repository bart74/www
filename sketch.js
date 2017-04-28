var scl;    // Scale
var font;   // Font
var s;      // Snake object
var f;      // Food object
var w;      // Playgrid Width
var h;      // Playgrid Height
var hT;     // Height of "text zone"

function setup() {
    frameRate(10);
    scl = 10;
    w = 50;
    h = 50;
    hT = 50;
    f = new Food();
    s = new Snake();
    font = loadFont('resources/Pixeled.ttf');
    createCanvas(w*scl, h*scl+hT);
    f.update();
}

function draw() {
    background(51);

    s.update();
    s.show();

    // Draw the separator between "play" zone and "text" zone
    stroke(255);
    line(0, hT, w*scl, hT);

    noStroke();
    if (s.eat(f)) { // If the snake eats the food
        console.log("Food eaten !");
        f.update(); // Update the position of the food
    }
    if (s.death()) {
        console.log("starting over !");
        s.total = 0;
        s.tail = [];
    }

    // Draw the score
    textSize(32);
    textFont(font);
    fill(255);
    text("Score : "+s.total, 10, 45);

    f.show();
}

function keyPressed() {
    if (keyCode === UP_ARROW) {
        s.dir(0, -1);
    } else if (keyCode === DOWN_ARROW) {
        s.dir(0, 1);
    } else if (keyCode === LEFT_ARROW) {
        s.dir(-1, 0);
    } else if (keyCode === RIGHT_ARROW) {
        s.dir(1, 0);
    }
}
