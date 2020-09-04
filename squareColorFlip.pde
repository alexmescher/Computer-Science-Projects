void setup() {
 size(600,600);
}

void draw() {
  background(0,0,255);
  fill(240,218,22);
  rect(275,275,50,50);
  if(mouseX>275 && mouseX<325 && mouseY>275 && mouseY<325) {
    background(240,218,22);
    fill(0,0,255);
    rect(275,275,50,50);
    
  }
}
