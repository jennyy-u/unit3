//jenny yu
//block 2-4
//march 7, 2025

//palette
color mint = #c2d5aa;
color forest = #32744c;
color sea = #7096d1;
color sky = #cae9ff;
color bee = #ffe485;
color sunshine = #fff4b9;
color pink = #efc3c2;
color lilac = #d3c3fc;
color chocolate = #a68076;
color almond = #f7e6d6;
color background = #f0f4f9;

float sliderY;
float thickness;
color selectedColor;
int linecolor;


void setup() {
  size(800, 600);
  sliderY = 277;
  thickness = 1;
  //selectedColor = #ffffff;
  background(background);
  //frame
  strokeWeight(3);
  rect(190, 70, 580, 500, 10);
  linecolor = 0;
}



void draw() {

  stroke(background);
  fill(background);
  rect(0, 0, 180, 600);

  //palette buttons
  strokeWeight(2);

  tactile(255, 40, 15);
  fill(mint);
  circle(255, 40, 30);

  tactile(305, 40, 15);
  fill(forest);
  circle(305, 40, 30);

  tactile(355, 40, 15);
  fill(sea);
  circle(355, 40, 30);

  tactile(405, 40, 15);
  fill(sky);
  circle(405, 40, 30);

  tactile(455, 40, 15);
  fill(bee);
  circle(455, 40, 30);

  tactile(505, 40, 15);
  fill(sunshine);
  circle(505, 40, 30);

  tactile(555, 40, 15);
  fill(pink);
  circle(555, 40, 30);

  tactile(605, 40, 15);
  fill(lilac);
  circle(605, 40, 30);

  tactile(655, 40, 15);
  fill(chocolate);
  circle(655, 40, 30);

  tactile(705, 40, 15);
  fill(almond);
  circle(705, 40, 30);

  stroke(0);
  fill(255);

  //new
  stroke(0);
  rect(30, 25, 140, 30);
  textSize(24);
  //textFont();
  fill(0);
  text("new", 75, 47);

  //load
  fill(255);
  rect(30, 60, 140, 30);
  fill(0);
  text("load", 75, 83);

  //save
  fill(255);
  rect(30, 95, 140, 30);
  fill(0);
  text("save", 75, 117);

  //stamp
  fill(255);
  rect(30, 430, 140, 140, 10);

  //thickess slider
  line(65, 150, 65, 405);
  circle(65, sliderY, 30);
  thickness = map(sliderY, 150, 405, 1, 15);

  //thickness indicator
  strokeWeight(thickness);
  line(135, 150, 135, 405);
}


void mouseDragged() {
  controlSlider();
  //squiggly line
  stroke(linecolor);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mouseReleased() {
  controlSlider();
  if (dist(255, 40, mouseX, mouseY) < 15) {
    linecolor = mint;
  }

  if (dist(305, 40, mouseX, mouseY) < 15) {
    linecolor = forest;
  }

  if (dist(355, 40, mouseX, mouseY) < 15) {
    linecolor = sea;
  }

  if (dist(405, 40, mouseX, mouseY) < 15) {
    linecolor = sky;
  }

  if (dist(455, 40, mouseX, mouseY) < 15) {
    linecolor = bee;
  }

  if (dist(505, 40, mouseX, mouseY) < 15) {
    linecolor = sunshine;
  }

  if (dist(555, 40, mouseX, mouseY) < 15) {
    linecolor = pink;
  }

  if (dist(605, 40, mouseX, mouseY) < 15) {
    linecolor = lilac;
  }

  if (dist(655, 40, mouseX, mouseY) < 15) {
    linecolor = chocolate;
  }

  if (dist(705, 40, mouseX, mouseY) < 15) {
    linecolor = almond;
  }

  //new button
  if (mouseX > 30 && mouseY < 170 && mouseY > 25 && mouseY < 55 ) {
    strokeWeight(3);
    stroke(0);
    fill(255);
    rect(190, 70, 580, 500, 10);
  }
}

void controlSlider() {
  if (mouseY > 150 && mouseY < 405 && mouseX > 50 && mouseX < 80) {
    sliderY = mouseY;
  }
  thickness = map(sliderY, 150, 405, 1, 20);
}

void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(#ffffff);
  } else {
    stroke(0);
  }
}
