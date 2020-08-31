void setup(){
  size(600,600);
  
}

void draw() {
  background(255);
  strokeWeight(20);
  stroke(255,0,0);
  line(0,0,mouseX,mouseY);
  stroke(0,255,0);
  line(600,0,mouseX,mouseY);
  stroke(0,0,255);
  line(300,600,mouseX,mouseY);
  
}
