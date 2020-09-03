int x;
int y;

void setup(){
 size(600,600); 
 x=50;
 y=50;
}

void draw() {
  background(255);
  ellipse(width/2, height/2, x, y);
  
}

void keyPressed() {
  if(key == 'w' || key == 'W') {
    x = x+10;
  } else if(key == 's' || key == 'S') {
    x = x-10;
  } else if(key == 'a' || key == 'A') {
    y = y+10;
  } else if(key == 'd' || key == 'D') {
    y=y-10;
  }
}
