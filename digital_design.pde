float x;
float y;
int d;
float t;
float f;
void setup() {
  size(800,800);
  d=1000;
  t=1;
}

void draw() {
  background(0);
  t=t+1;
  f = float(d);
  //to prevent negative value of d
 if(f-(pow(1.5, t))>0) {
  f = f-(pow(1.5, t));
 } else {
   f=1;
 }
   
  //to end drawing loop at 1000 cycles
  if(t<1000) {
  x = random(600);
  y = random(700);
  fill(155,150,150);
  rect(x,y,200,100);
  rect(x,y-50,40,50);
  rect(x+160,y-50,40,50);
  rect(x-10,y-70,60,20);
  rect(x-10,y-75,10,5);
  rect(x+15,y-75,10,5);
  rect(x+40,y-75,10,5);
  rect(x+150,y-70,60,20);
  rect(x+150,y-75,10,5);
  rect(x+175,y-75,10,5);
  rect(x+200,y-75,10,5);
  rect(x+75, y-100, 50,100);
  rect(x+65, y-125,70,25);
  rect(x+65, y-130,10,5);
  rect(x+95, y-130,10,5);
  rect(x+125, y-130, 10,5);
  fill(22,30,222);
  ellipse(x+100,y+25,30,30);
  fill(222,212,22);
  ellipse(x+100,y+25,10,10);
  fill(131,76,76);
  rect(x+80,y+50,40,50);
  rect(x+97.5,y-180,5,50);
  fill(255,0,0);
  rect(x+100,y-180,40,20);
  } else {
  x = 300;
  y = 350;
  fill(155,150,150);
  rect(x,y,200,100);
  rect(x,y-50,40,50);
  rect(x+160,y-50,40,50);
  rect(x-10,y-70,60,20);
  rect(x-10,y-75,10,5);
  rect(x+15,y-75,10,5);
  rect(x+40,y-75,10,5);
  rect(x+150,y-70,60,20);
  rect(x+150,y-75,10,5);
  rect(x+175,y-75,10,5);
  rect(x+200,y-75,10,5);
  rect(x+75, y-100, 50,100);
  rect(x+65, y-125,70,25);
  rect(x+65, y-130,10,5);
  rect(x+95, y-130,10,5);
  rect(x+125, y-130, 10,5);
  fill(22,30,222);
  ellipse(x+100,y+25,30,30);
  fill(222,212,22);
  ellipse(x+100,y+25,10,10);
  fill(131,76,76);
  rect(x+80,y+50,40,50);
  rect(x+97.5,y-180,5,50);
  fill(255,0,0);
  rect(x+100,y-180,40,20);
  }
  d= int(f);
  delay(d);
}
