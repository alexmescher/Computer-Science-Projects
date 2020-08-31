void setup() {
  size(600,600);
}

void draw() {
  background(255);
  fill(255,0,0);
  triangle(0,0,600,0,mouseX,mouseY);
  fill(0,255,0);
  triangle(0,0,300,600,mouseX,mouseY);
  fill(0,0,255);
  triangle(600,0,300,600,mouseX,mouseY);
}
