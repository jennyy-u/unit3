//jenny yu
//block 2-4
//march 3, 2025

//pallette of colours
color tan = #c6a477;
color sand = #ecd59f;
color light = #d3e7ee;
color sky = #abd1dc;
color pool = #7097a8;
color wash = #a6c1e2;
color white = #ffffff;

color selectedColor;

int toggle;

void setup() {
  size (800, 600);
  strokeWeight(5);


  toggle = 1;
}

void draw() {
  background(sand);

  //buttons
  fill(pool);
  rect(50, 450, 200, 100);

  fill(sky);
  rect(300, 450, 200, 100);

  fill(light);
  rect(550, 450, 200, 100);

  if (toggle > 0) {
    guidelines();
  }
  //indicator
  circle(400, 220, 360);
}



void mouseReleased() {
  if (mouseX > 50 && mouseX <250 && mouseY > 450 && mouseY < 650) {
    toggle = toggle * -1;
    selectedColor = pool;
  }
  if (mouseX > 300 && mouseX <500 && mouseY > 450 && mouseY < 650) {
    toggle = toggle * -1;
    selectedColor = sky;
  }
  if (mouseX > 550 && mouseX <750 && mouseY > 450 && mouseY < 650) {
    toggle = toggle * -1;
    selectedColor = light;
  }
}



void guidelines() {
  fill(tan);
  stroke(tan);
  line (0, mouseY, width, mouseY);
  line (mouseX, 0, mouseX, height);
}
