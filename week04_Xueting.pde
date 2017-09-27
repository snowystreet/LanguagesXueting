float r = 223;
float g = 149;
float b = 157;
boolean button = false;
int x = 405;
int y = 135;
int w = 100;
int h = 100;

void setup() {
  size(540,540);
  
}

void draw() {
   
  
  if(button) {
    background(5,10,8);
    textSize(50);
    fill(255);
    text("Changing Space",80,100);
    noStroke();
    textSize(20);
    fill(255);
    text("By Xueting",200,140);
    noStroke();
    
    float r;
    float g;
    float b;
    float a;
    float diam;
    float x;
    float y;
    frameRate(10);
    
    r= random(255);
    g= random(255);
    b= random(255);
    a= random(255);
    diam = random(50);
    x= random(width);
    y= random(height);
    fill(r,g,b,a);
    ellipse(x,y,diam,diam);
    
    
  } else {
    background(18,103,171);
    textSize(50);
    fill(255);
    text("Click the rect",80,100);
    noStroke();
    for (int y = 0; y <height; y += 10) {
    stroke(255);
    line(0,y,width,y);
    }
    
  }
  
  fill(r,g,b);
  rect(x,y,w,h);
  
  constrain(r,223,232);
  if(mouseX > x) {
    r = r + 1;
  } else {
    r = r - 1;
  }
}

void mousePressed() {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    button = !button;
  }
}