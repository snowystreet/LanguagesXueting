class Mooncake{
  PImage img1;
  int x;
  int y;
  int diameter;
  
  //constructor
  Mooncake(int tempX, int tempY, int tempDiameter ) {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
  }
  
  void display() {
    img1 = loadImage("mooncake.png");
    image(img1,x,y,diameter,diameter);
  }
  void fall() {
    if(y>height-100) {
      y=-800;
    } else{
      y = y+20;
    }
  }
  

  
}