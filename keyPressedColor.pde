float red = 255;
float blue = 0;

void setup() {
  size(600,600);
}

void draw() {
  background(red,0,blue);
}

void keyPressed() {
  red = red-10;
  blue = blue +10;
  
}
