
float ballX;
float ballY;
int player1Y;
int player2Y;
int paddleSpeed = 20;
int player1Score = 0;
int player2Score = 0;
int screen = 1;
boolean startPressed = false;
int ballXSpeed = 5;
float ballYSpeed = random(5);
float ballYD = random(-1,1);
float ballXD = random(-1,1);

void setup() {
  size(600,600);
  surface.setResizable(true);
  player1Y = height/2;
  player2Y = height/2;
  ballX = width/2;
  ballY = height/2;
  
}

void draw() {
  //startscreen, screen = 1
  if(screen == 1) {
 background(0);
 fill(255);
 //multibutton
 rect(100,275,150,75);
 //computerbutton
 rect(350,275,150,75);
 //settingsbutton
 rect(225,400,150,75);
 fill(0);
 textSize(20);
 text("Multiplayer",120,320);
 text("Vs. Computer",360,320);
 text("Settings",260,445);
 textSize(200);
 fill(255);
 text("PONG", 20, 200);
 ellipse(210,130,160,160);
 
  } else if(screen == 2) {
    //Multiplayer screen, screen = 2
    background(0);
    fill(255);
    rect(width-(width/24), mouseY, width/24, height/6);
    rect(0, player2Y, width/24, height/6);
    ellipse(ballX, ballY, width/24, height/24);
    if(startPressed == false) {
      text("Press Mouse to Start Game", 100, 100);
      textSize(32);
    } else {
      textSize(15);
      text("Press M for Menu", 100,15);
      ballX= ballX + ballXD*ballXSpeed;
      ballY= ballY + ballYD*ballYSpeed;
      if(ballY>=height-height/24) {
        ballYD = -1;
        ballYSpeed = random(3);
      } else if(ballY<=height/24) {
        ballYD = 1;
        ballYSpeed = random(3);
      } else if(ballX>width - width/12 && ballY>=mouseY && ballY<=mouseY + height/6){
        ballXD = -1;
        ballYD = random(-1,1);
        ballYSpeed= random(3);
      } else if(ballX>width - width/12 && (ballY<=mouseY || ballY>=mouseY + height/6)) {
        ballX=width/2;
        ballY=height/2;
        ballXD = random(-1,1);
        ballYD = random(-1,1);
        ballYSpeed = random(3);
      } else if(ballX<width/12 && ballY>=player2Y && ballY<=player2Y + height/6) {
        ballXD = 1;
        ballYD = random(-1,1);
        ballYSpeed= random(3);
      } else if(ballX<width/12 && (ballY<=player2Y || ballY>=player2Y + height/6)) {
        ballX=width/2;
        ballY=height/2;
        ballXD = random(-1,1);
        ballYD = random(-1,1);
        ballYSpeed = random(3);
      }
    }
  } else if(screen == 3) {
    background(0);
    fill(255);
    rect(width-(width/24), mouseY, width/24, height/6);
    rect(0, ballY, width/24, height/6);
    ellipse(ballX, ballY, width/24, height/24);
    if(startPressed == false) {
      text("Press Mouse to Start Game", 100, 100);
      textSize(32);
    } else {
      textSize(15);
      text("Press M for Menu", 100,15);
      ballX= ballX + ballXD*ballXSpeed;
      ballY= ballY + ballYD*ballYSpeed;
      if(ballY>=height-height/24) {
        ballYD = -1;
        ballYSpeed = random(3);
      } else if(ballY<=height/24) {
        ballYD = 1;
        ballYSpeed = random(3);
      } else if(ballX>width - width/12 && ballY>=mouseY && ballY<=mouseY + height/6){
        ballXD = -1;
        ballYD = random(-1,1);
        ballYSpeed= random(3);
      } else if(ballX>width - width/12 && (ballY<=mouseY || ballY>=mouseY + height/6)) {
        ballX=width/2;
        ballY=height/2;
        ballXD = random(-1,1);
        ballYD = random(-1,1);
        ballYSpeed = random(3);
      } else if(ballX<width/12 && ballY>=player2Y && ballY<=player2Y + height/6) {
        ballXD = 1;
        ballYD = random(-1,1);
        ballYSpeed= random(3);
      } else if(ballX<width/12 && (ballY<=player2Y || ballY>=player2Y + height/6)) {
        ballX=width/2;
        ballY=height/2;
        ballXD = random(-1,1);
        ballYD = random(-1,1);
        ballYSpeed = random(3);
      }
    }
  }
  
   
}
//buttons on startScreen
void mousePressed() {
  if(mouseX>100 && mouseX<250 && mouseY>275 && mouseY<350) {
      screen = 2;
    } else if(mouseX>350 && mouseX<500 && mouseY>275 && mouseY<350) {
      screen = 3;
    } else if(mouseX>225 && mouseX< 375 && mouseY>400 && mouseY<475) {
      screen = 4;
    }
  if(screen == 2 || screen == 3) {
      startPressed = true;
    }
  }
  
//multiplayer controls
void keyPressed() {
  if(key == 'w') {
    player2Y = player2Y-paddleSpeed;
  } else if(key == 's') {
    player2Y = player2Y +paddleSpeed;
  } else if(key == 'm') {
    screen = 1;
  }
}
  
   
