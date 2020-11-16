Ball[] balls;
int count = 100;

void setup(){
 size(600,600);
 
 balls = new Ball[count];
 
 for(int i = 0; i < count; i++){
  balls[i] = new Ball(random(10,550), 10);
  }
}

void draw(){
  background(255);
  
  for(int i = 0; i < count; i++){
    balls[i].display();
  }
}

class Ball{
 float xpos;
 float ypos;
 float directionX = random(-2,2);
 float directionY = random(-2,2);
 color c1 = color(255, 0, 0);
 
 Ball(float x, float y){
  xpos = x;
  ypos = y;
 }
 
 void display(){
   fill(c1);
   ellipse(xpos, ypos, 10, 10);
   
   xpos += directionX;
   ypos += directionY;
   
   //ball bounce code and color change code
   if(xpos > width){
    directionX = directionX*-1; 
    c1 = color(0,255,0);
   }else if(xpos < 0){
     directionX = directionX*-1; 
     c1 = color(0,0,255);
   }else if(ypos > height){
    directionY = directionY*-1; 
    c1 = color(100,0,100);
   }else if(ypos < 0){
    directionY = directionY*-1; 
    c1 = color(200,100,0);
   }
 }
}
