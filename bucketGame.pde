float ballX = random(600);
float ballY = 0;
int score = 0;
int speed = 5;
void setup() {
  size(600,600);
}

void draw() {
  background(0);
  rect(mouseX,575,100,25);
  fill(255);
  ellipse(ballX, ballY, 25,25);
  
  ballY = ballY+speed;
  if(ballY>=600) {
    ballY=0;
    ballX=random(600);
    score = score-1;
    speed = speed-5;
  }
  if(ballX>=mouseX && ballX<=mouseX+100 && ballY>550 && ballY<570) {
    score = score+1;
    ballY=0;
    ballX=random(600);
    speed = speed +3;
  }
  
 
  text(score, 50,50);
  textSize(35);
  
 if(score>=10) {
    text("You Win",300,50);
    ballY=width/2;
    ballX=height/2;
    speed=0;
  }
}
