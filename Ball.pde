class Ball{
  float xpos;
  float ypos;
  color c1;
  float diam;
  float speed = 10;
  float direction = random(-1,1);

  Ball(float tempXpos, float tempYpos, float tempDiam, color tempC1) {
    xpos = tempXpos;
    ypos = tempYpos;
    diam = tempDiam;
    c1 = tempC1;
  }
}
//draws ball
void display() {
  fill(c1);
  ellipse(xpos,ypos,diam,diam);
}

void update() {
  if(xpos> width || xpos<0) {
    direction = direction*(-1);
  }
  xpos = xpos + speed*direction;
}
