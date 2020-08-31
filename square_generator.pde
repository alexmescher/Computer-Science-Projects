int X;
int Y;
float l;
float w;
float x;
float y;
int n;
void setup() {
size(800,800);
background(0);
X = width/2;
Y = height/2;
}

void draw() {
//creates rect at random position and with a random size
x = random(800);
y = random(800);
l = random(50);
w = random(50);
fill(255);
rect(x,y,l,l);
n = n+1;
fill(22,243,12);
textSize(32);
text(n, X, Y);
}

void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
}
