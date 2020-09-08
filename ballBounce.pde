float x;
float y;

void setup() {
  size(600,600);
  x=width/2;
  y = random(-5,5);
}

void draw() {
  background(255);
  ellipse(x,height/2,50,50);
  x=x+y;
  if(x>575) {
    y= random(-5,-1);
    
  } else if(x<25) {
    y=random(5);
  }
  
}
