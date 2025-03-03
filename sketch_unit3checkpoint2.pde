//jenny yu
//block 2-4
//march 3, 2025

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

  if (dist(90, 30, mouseX, mouseY) < 50) {
    stroke(white);
  } else {
  stroke(bluec);
  }
  fill(greyblue);
  square(90, 30, 140);

  if (dist(330, 30, mouseX, mouseY) < 50) {
    stroke(white);
  } else {
  stroke(bluec);
  }
  fill(seafoam);
  square(330, 30, 140);

 if (dist(570, 30, mouseX, mouseY) < 50) {
    stroke(white);
  } else {
  stroke(bluec);
  }
  fill(tblue);
  square(570, 30, 140);


  //indicator
  stroke(bluec);
  fill(selectedColor);
  circle(400, 380, 360);
} //--------------------------------------------------------------------------------------------


void mouseReleased() { //-----------------------------------------------------------------------
  if (dist(90, 30, mouseX, mouseY) < 50) {
    selectedColor = greyblue;
  }

  if (dist(330, 30, mouseX, mouseY) < 50) {
    selectedColor = seafoam;
  }

  if (dist(570, 30, mouseX, mouseY) < 50) {
    selectedColor = tblue;
  }
} //--------------------------------------------------------------------------------------------
