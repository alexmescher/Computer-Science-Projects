void setup() {
  size(600,600);
}

void draw() {
  if(mouseX < width/2 && mouseY < height/2) {
    background(255,0,0);
} else if(mouseX > width/2 && mouseY < height/2) {
  background(0,255,0);
  } else if(mouseX > width/2 && mouseY > height/2) {
    background(0,0,255);
  } else if(mouseX < width/2 && mouseY > height/2) {
    background(50,100,200);
  } else {
    background(0);
  }
  line(width/2,0,width/2,height);
  line(0, height/2,width,height/2);
}
