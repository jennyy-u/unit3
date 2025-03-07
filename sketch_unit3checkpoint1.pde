//jenny yu
//block 2-4
//february 27, 2025

//pallette of colours
color whitegrey = #f0f6ff;
color greyblue = #c6dbef;
color seafoam = #9ecae1;
color tblue = #6baed6;
color bluec = #2171b5;
color white = #ffffff;

//variables for colour selection
color selectedColor;


void setup() { //--------------------------------------------------------------------------------
  size (800, 600);
  strokeWeight(5);
  stroke(bluec);
  selectedColor = bluec;
} //---------------------------------------------------------------------------------------------


void draw() { //--------------------------------------------------------------------------------
  background(whitegrey);

  //buttons
  tactile(200, 500, 50);
  fill(greyblue);
  circle(200, 500, 100);

  tactile(400, 500, 50);
  fill(seafoam);
  circle(400, 500, 100);

  tactile(600, 500, 50);
  fill(tblue);
  circle(600, 500, 100);


  //indicator
  stroke(bluec);
  fill(selectedColor);
  square(220, 50, 360);
} //--------------------------------------------------------------------------------------------


void tactile(int x, int y, int r) { //----------------------------------------------------------
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(bluec);
  }
} //--------------------------------------------------------------------------------------------


void mouseReleased() { //-----------------------------------------------------------------------
  if (dist(200, 500, mouseX, mouseY) < 50) {
    selectedColor = greyblue;
  }

  if (dist(400, 500, mouseX, mouseY) < 50) {
    selectedColor = seafoam;
  }

  if (dist(600, 500, mouseX, mouseY) < 50) {
    selectedColor = tblue;
  }
} //--------------------------------------------------------------------------------------------
