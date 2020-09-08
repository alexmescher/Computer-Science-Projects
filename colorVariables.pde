color c1 = color(255,0,255);
color c2 = color(0,255,255);

void setup() {
  size(600,600);
}

void draw() {
  if(mouseX < width/2) {
    background(c1);
  } else if(mouseX >= width/2)  {
    background(c2);
  }
}
