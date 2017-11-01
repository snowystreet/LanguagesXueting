class Bunny {
  PImage img;
  float imgx1;
  float imgy1;
  float xspeed;
  float e1; float e2; float e3;
  float eara1;
  float earb1;
  float eara2;
  float earb2;
  float angle1;

  
  Bunny() {
    imgx1 = 440;
    imgy1 = 518;
    xspeed = 1;
    eara1 = 480;
    earb1 = 510;
    eara2 = 400;
    earb2 = 500;
    e2 = 6; e3 = 14;
    angle1 = random(-48,0);
  }
  
  void display() {
    //body
    img = loadImage("bunny1.png");
    image(img,imgx1,imgy1,48,82);//38 72
    //ear1
    translate(eara1,earb1);
    rotate(radians(-24));
    noStroke();
    fill(255);
    ellipse(e1,e1,48,12);
    //ear2
    rotate(radians(16));
    noStroke();
    fill(255);
    ellipse(e2,e3,48,12);    
  }
  
  void move() {
    //move body
    if(mouseX<width-40 && mouseX>20) {
    imgx1 = mouseX;
    //move ear1    
    eara1 = mouseX + 40;
    //move ear2
    eara2 = mouseX - 40;
    }
  }
}