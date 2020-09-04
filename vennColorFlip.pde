void setup() {
 size(600,600);
}

void draw() {
  background(0,0,255);
  fill(240,218,22);
  ellipse(290,300,50,50);
  ellipse(310,300,50,50);
  if(dist(290, 300, mouseX, mouseY)<25 && dist(310, 300, mouseX, mouseY)>25) {
  background(0,255,0);
  fill(255,0,0);
  ellipse(290,300,50,50);
  ellipse(310,300,50,50);
  } else if(dist(310,300,mouseX,mouseY)<25 && dist(290,300,mouseX,mouseY)>25) {
  background(0,0,255);
  fill(0,255,0);
  ellipse(290,300,50,50);
  ellipse(310,300,50,50);
  } else if(dist(310,300,mouseX,mouseY)<25 && dist(290, 300, mouseX, mouseY)<25) {
  background(240,218,222);
  fill(0,0,255);
  ellipse(290,300,50,50);
  ellipse(310,300,50,50); 
  }
}
