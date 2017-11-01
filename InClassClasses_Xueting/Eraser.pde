class Eraser {
  float xspeed;
  float w; float x;
  float h; float y;
  float r; 
  float g; 
  float b; 
  float a;
  
  Eraser() {
    xspeed = 5;
  }
  
  void display() {
    noStroke();
    r = random(255); 
    g = random(255); 
    b = random(255); 
    a = random(255);
    fill(r,g,b,a);
    rectMode(CENTER);
    rect(x,y,w,h);

  }
  
  void move() {
    if(mouseX<width &&mouseX>0) {
    w = x + 1;
    h = y + 1;
    x = mouseX;
    y = mouseY;
    }
  }
}