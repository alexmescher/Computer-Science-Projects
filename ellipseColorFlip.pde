void setup() {
 size(600,600);
}

void draw() {
  background(0,0,255);
  fill(240,218,22);
  ellipse(300,300,50,50);
  if(dist(width/2, height/2, mouseX, mouseY)<25) {
    background(240,218,22);
    fill(0,0,255);
    ellipse(300,300,50,50);
    
  }
}
