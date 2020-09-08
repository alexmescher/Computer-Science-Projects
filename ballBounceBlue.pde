float x;
float y;
float red = 255;
float blue = 0;
void setup() {
  size(600,600);
  x=width/2;
  y = random(-5,5);
}

void draw() {
  background(red,0,blue);
  ellipse(x,height/2,50,50);
  x=x+y;
  if(x>575) {
    y= random(-5,-1);
    red=red-10;
    blue=blue+10;
    
  } else if(x<25) {
    y=random(5);
    red=red-10;
    blue=blue+10;
  }
  
}
