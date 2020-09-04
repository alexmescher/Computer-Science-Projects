boolean x=false;
boolean y=false;
void setup() {
  size(600,600);
}

void draw() {
  background(0);
  if(x==true) {
  ellipse(100,100,50,50);
  ellipse(100,500,50,50);
  ellipse(500,100,50,50);
  ellipse(500,500,50,50);
  }
  
  if(y==true) {
  rect(75,75,50,50);
  rect(75,475,50,50);
  rect(475,75,50,50);
  rect(475,475,50,50);
  }
}
void mousePressed() {
  y=false;   
  x=true;
     
 }

void keyPressed() {
  x=true;
  y=true;
  
}
