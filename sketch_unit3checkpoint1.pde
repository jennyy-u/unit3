//jenny yu
//block 2-4
//february 27, 2025

//pallette of colours
color whitegrey = #f0f6ff;
color greyblue = #c6dbef;
color seafoam = #9ecae1;
color tblue = #6baed6;
color bluec = #2171b5;

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
  fill(greyblue);
  circle(200, 500, 100);
  
  fill(seafoam);
  circle(400, 500, 100);
  
  fill(tblue);
  circle(600, 500, 100);
  
  
  //indicator
  fill(selectedColor);
  square(220, 50, 360);
  
} //--------------------------------------------------------------------------------------------


void mouseReleased() { //-----------------------------------------------------------------------
  if (dist(200, 500, mouseX, mouseY) < 50) {
    selectedColor = greyblue;
  }
  
  if(dist(400, 500, mouseX, mouseY) < 50) {
    selectedColor = seafoam;
  }
  
  if(dist(600, 500, mouseX, mouseY) < 50) {
    selectedColor = tblue;
  }
  
} //--------------------------------------------------------------------------------------------
