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

float sliderY;
color selectedColor;

void setup() {
  size(800, 600);
  sliderY = 277;
  selectedColor = #ffffff;
}



void draw() {
  background(#f0f4f9);

  //frame
  strokeWeight(3);
  rect(190, 70, 580, 500, 10);

  //palette buttons
  strokeWeight(2);
  
  //tactile(255, 40, 30);
  fill(mint);
  circle(255, 40, 30);
  
  fill(forest);
  circle(305, 40, 30);
 
  fill(sea);
  circle(355, 40, 30);
  
  fill(sky);
  circle(405, 40, 30);
  
  fill(bee);
  circle(455, 40, 30);
  
  fill(sunshine);
  circle(505, 40, 30);
  
  fill(pink);
  circle(555, 40, 30);
  
  fill(lilac);
  circle(605, 40, 30);
  
  fill(chocolate);
  circle(655, 40, 30);
  
  fill(almond);
  circle(705, 40, 30);

  fill(#ffffff);
  //new, save, clear
  rect(30, 25, 140, 30);
  rect(30, 60, 140, 30);
  rect(30, 95, 140, 30);

  //thickess slider
  line(65, 150, 65, 405);
  circle(65, sliderY, 30);

  //thickness indicator
  line(135, 150, 135, 405);

  //stamp
  rect(30, 430, 140, 140, 10);
}

//thickness slider controls
void mouseDragged() {
  controlSlider();
}

void mouseReleased() {
  controlSlider();
}

void controlSlider() {
  if (mouseY > 150 && mouseY < 405 && mouseX > 50 && mouseX < 80) {
    sliderY = mouseY;
  }
}
