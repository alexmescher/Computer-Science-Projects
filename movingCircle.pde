int x;
int y;
int speed;
void setup(){
 size(600,600); 
 x=50;
 y=50;
}

void draw() {
  background(255);
  ellipse(y, x, 50, 50);
  speed = 10;
}

void keyPressed() {
  if(key == 'w' || key == 'W') {
    x = x-speed;
  } else if(key == 's' || key == 'S') {
    x = x+speed;
  } else if(key == 'a' || key == 'A') {
    y = y-speed;
  } else if(key == 'd' || key == 'D') {
    y=y+speed;
  }
}
