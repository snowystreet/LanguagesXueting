//original class Ball by Jiaqi
//Classes I added are "Eraser" and "Frog"; including methods of move and display
//Title:"Draw and Wipe" by Xueting and Jiaqi

Eraser myEraser;
Frog myFrog;
PImage[] frog = new PImage[6];

//growing ball and rect
class Ball {
  float x, y;
  float vx, vy;
  color c;
}

ArrayList<Ball> balls;

void setup(){
background(255);
size(1280,720);

myEraser = new Eraser();
myFrog = new Frog();

balls = new ArrayList<Ball>();
  Ball ball;

  for (int i = 0; i < 1000; i++) {
    ball = new Ball();
    ball.x = random(width); 
    ball.y = random(height);
    ball.vx = random(-1, 1);
    ball.vy = random(-1, 1);
    balls.add(ball);
  }
}


void draw(){
  myEraser.move();
  myEraser.display();
  myFrog.display();
  myFrog.move();
  myFrog.press();
  
  int n = balls.size();
  for (int i = 0; i < n; i++) {
    Ball ball = balls.get(i);
    ball.c = color(random(256), random(256), random(256));
    fill(155, 155, 255, random(256));
    stroke(255, 25, 25, random(256));
    ellipse(ball.x, ball.y, 5, 5); // ball's size and position
    ball.x += ball.vx;
    ball.y += ball.vy;
  }
//background(0);

fill(55,5,255,10);
//rect(10,40,50,50);
rect(random(0,1280),random(0,720),random(20,180),50);

}