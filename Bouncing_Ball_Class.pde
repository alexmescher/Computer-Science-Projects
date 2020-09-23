Ball ball1;

void setup() {
  size(600,600);
  ball1 = new Ball(width/2, height/2, 30, color(255,0,255));
}

void draw() {
  background(255,255,255);
   ball1.display();
   ball1.update();
}
