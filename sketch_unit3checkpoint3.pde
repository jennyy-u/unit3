//jenny yu
//block 2-4
//march 3, 2025

//palette
color sand = #fff7eb;
color peach = #ffeccf;
color light = #cad8e6;
color sky = #a2c6d8;
color cloud = #78a3c5;

float sliderY;


void setup() {
  size (800, 600);
  strokeWeight(5);
  stroke(sand);
  fill(sand);
  sliderY = 400;
}

void draw() {
  background(0);
  
  line(400, 100, 400, 500);
  circle(400, sliderY, 50);

}

void mouseDragged() {
  if (mouseY > 100 && mouseY < 500 && mouseX > 375 && mouseX < 425) {
   sliderY = mouseY ;
  }
  
}

void mouseReleased() {
  if (mouseY > 100 && mouseY < 500 && mouseX > 375 && mouseX < 425) {
   sliderY = mouseY ;
  }
  
}
