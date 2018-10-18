int top = 0,
    rTop = 1,
    middle = 2,
    rBottom = 3,
    bottom = 4,
    lBottom = 5,
    lTop = 6;
        
void setup() {
    size(140, 260);
}

void draw() {
    background(0);
    int[] disp = sevenSegs("8");

    noStroke();
    fill(255, 0, 0);
    if (disp[top] != 0)
        rect(20, 0, 100, 20, 45);
    if (disp[rTop] != 0)
        rect(120, 20, 20, 100, 45);
    if (disp[middle] != 0)
        rect(20, 120, 100, 20, 45);
    if (disp[rBottom] != 0)
        rect(120, 140, 20, 100, 45);
    if (disp[bottom] != 0)
        rect(20, 240, 100, 20, 45);
    if (disp[lTop] != 0)
        rect(0, 20, 20, 100, 45);
    if (disp[lBottom] != 0)
        rect(0, 140, 20, 100, 45);
}

int[] sevenSegs(String disChar) {
    disChar = disChar.toLowerCase();
    int[] display = new int[7];
    fillArr(display, 1);
    
    if (disChar == "a") {
        display[bottom] = 0;
    } else if (disChar == "b") {
        display[top] = 0;
        display[rTop] = 0;
    } else if (disChar == "c") {
        display[rTop] = 0;
        display[middle] = 0;
        display[rBottom] = 0;
    } else if (disChar == "d") {
        display[top] = 0;
        display[lTop] = 0;
    } else if (disChar == "e") {
        display[rTop] = 0;
        display[rBottom] = 0;
    } else if (disChar == "f") {
        display[rTop] = 0;
        display[rBottom] = 0;
        display[bottom] = 0;
    } else if (disChar == "1") {
        fillArr(display, 0);
        display[rTop] = 1;
        display[rBottom] = 1;
    } else if (disChar == "2") {
        display[lTop] = 0;
        display[rBottom] = 0;
    } else if (disChar == "3") {
        display[lTop] = 0;
        display[lBottom] = 0;
    } else if (disChar == "4") {
        display[bottom] = 0;
        display[lBottom] = 0;
        display[top] = 0;
    } else if (disChar == "5") {
        display[rTop] = 0;
        display[lBottom] = 0;
    } else if (disChar == "6") {
        display[rTop] = 0;
    } else if (disChar == "7") {
        fillArr(display, 0);
        display[top] = 1;
        display[rTop] = 1;
        display[rBottom] = 1;
    } else if (disChar == "8"){
        fillArr(display, 1);
    } else if (disChar == "9") {
        display[lBottom] = 0;
        display[bottom] = 0;
    } else {
        fillArr(display, 0);
    }
    return display;
}

void fillArr(int[] arr, int var) {
    for (int i = 0; i < arr.length; i++) {
        arr[i] = var;
    }
}
