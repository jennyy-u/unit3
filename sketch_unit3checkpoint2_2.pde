//jenny yu
//block 2-4
//march 3, 2025

//pallette of colours
color tan = #c6a477;
color sand = #ecd59f;
color light = #d3e7ee;
color sky = #abd1dc;
color pool = #7097a8;

int toggle;

void setup() {
  size (800, 600);
  strokeWeight(5);
  textSize(30);

  toggle = 1;
}

void draw() {
  background(sand);

  fill(pool);
  stroke(sky);
  rect(50, 450, 200, 100);

  if (toggle > 0) {
    guidelines();
  }
}


void mouseReleased() {
  if (mouseX > 50 && mouseX <250 && mouseY > 450 && mouseY < 650) {
    toggle = toggle * -1;
  }
}



void guidelines() {
  fill(tan);
  stroke(tan);
  line (0, mouseY, width, mouseY);
  line (mouseX, 0, mouseX, height);
}
