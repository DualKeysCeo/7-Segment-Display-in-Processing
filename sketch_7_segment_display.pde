int top = 0,
    rTop = 1,
    middle = 2,
    rBottom = 3,
    bottom = 4,
    lBottom = 5,
    lTop = 6;
int lastTime,
    totalTime = 1000;
boolean red;
void setup() {
    //size(140, 260);
    fullScreen(2);
    lastTime = millis();
    red = true;
}

void draw() {
    int m1 = minute() % 10;
    int m2 = minute() / 10;
    int h1 = hour() % 10;
    int h2 = hour() / 10;
    
    translate(width/2 - 70, height/2 - 130);
    background(0);
    noStroke();
    sevenSegs(Integer.toString(h2), -300);
    sevenSegs(Integer.toString(h1), -100);
    drawColon();
    sevenSegs(Integer.toString(m2), 100);
    sevenSegs(Integer.toString(m1), 300);
}

void sevenSegs(String disChar, int xOffset) {
    disChar = disChar.toLowerCase();
    int[] display = new int[7];
    fillArr(display, 1);
    
    switch (disChar) {
        case "a":
            display[bottom] = 0;
            break;
        case "b":
            display[top] = 0;
            display[rTop] = 0;
            break;
        case "c":
            display[rTop] = 0;
            display[middle] = 0;
            display[rBottom] = 0;
            break;
        case "d":
            display[top] = 0;
            display[lTop] = 0;
            break;
        case "e":
            display[rTop] = 0;
            display[rBottom] = 0;
            break;
        case "f":
            display[rTop] = 0;
            display[rBottom] = 0;
            display[bottom] = 0;
            break;
        case "0":
            fillArr(display, 1);
            display[middle] = 0;
            break;
        case "1":
            fillArr(display, 0);
            display[rTop] = 1;
            display[rBottom] = 1;
            break;
        case "2":
            display[lTop] = 0;
            display[rBottom] = 0;
            break;
        case "3":
            display[lTop] = 0;
            display[lBottom] = 0;
            break;
        case "4":
            display[bottom] = 0;
            display[lBottom] = 0;
            display[top] = 0;
            break;
        case "5":
            display[rTop] = 0;
            display[lBottom] = 0;
            break;
        case "6":
            display[rTop] = 0;
            break;
        case "7":
            fillArr(display, 0);
            display[top] = 1;
            display[rTop] = 1;
            display[rBottom] = 1;
            break;
        case "8":
            fillArr(display, 1);
            break;
        case "9":
            display[lBottom] = 0;
            display[bottom] = 0;
            break;
        default:
            fillArr(display, 0);
            break;	
    }
    // Top
    if (display[top] != 0) {fill(255, 0, 0);} else {fill(50, 0, 0);}
    rect(xOffset + 20, 0, 100, 20, 45);
    // rTop
    if (display[rTop] != 0) {fill(255, 0, 0);} else {fill(50, 0, 0);}
    rect(xOffset + 120, 20, 20, 100, 45);
    // middle
    if (display[middle] != 0) {fill(255, 0, 0);} else {fill(50, 0, 0);}
    rect(xOffset + 20, 120, 100, 20, 45);
    // rBottom
    if (display[rBottom] != 0) {fill(255, 0, 0);} else {fill(50, 0, 0);}
    rect(xOffset + 120, 140, 20, 100, 45);
    // bottom
    if (display[bottom] != 0) {fill(255, 0, 0);} else {fill(50, 0, 0);}
    rect(xOffset + 20, 240, 100, 20, 45);
    // lBottom
    if (display[lTop] != 0) {fill(255, 0, 0);} else {fill(50, 0, 0);}
    rect(xOffset + 0, 20, 20, 100, 45);
    // lTop
    if (display[lBottom] != 0) {fill(255, 0, 0);} else {fill(50, 0, 0);}
    rect(xOffset + 0, 140, 20, 100, 45);
}

void fillArr(int[] arr, int var) {
    for (int i = 0; i < arr.length; i++) {
        arr[i] = var;
    }
}

void drawColon() {
    int clr = 255;
    int passedTime = millis() - lastTime;
    if (passedTime > totalTime) {
        lastTime = millis();
        red = !red;
        println(red);
    }
    
    if (red) {
        clr = 255;
    } else {
        clr = 50;
    }
    fill(clr, 0, 0);
    ellipse(70, 50, 20, 20);
    ellipse(70, 180, 20, 20);
}
