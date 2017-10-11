// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2;

void setup() {
  size(540, 720);

  // Define colors
  b1 = color(255);
  b2 = color(0);
  c1 = color(204,152,178);
  c2 = color(255,236,209);

  noLoop();
}

void draw() {
  // Foreground
  setGradient(0, 0, width, height, c1, c2, Y_AXIS);
  drawLand();
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {
  noFill();
  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}

//draw 1st land
void drawLand() {
  int x = 100;
  int y = 110;
  fill(60,52,85);
  noStroke();
  quad(0,height-y,x,height-y,x+300,height,0,height);
  
  //draw 2nd land
  fill(71,63,98);
  noStroke();
  quad(width-x,height-y*2,width,height-y*2,width,height-y,x,height-y);
  quad(x,height-y,width,height-y,width,height,x+300,height);
  
  //draw 3rd land
  fill(83,72,109);
  noStroke();
  quad(0,height-y*2,width-x,height-y*2,x,height-y,0,height-y);
  quad(0,height-y*2,width-x,height-y*2,x,height-y*3,0,height-y*3);
  
  //draw 4th land
  fill(106,92,138);
  noStroke();
  quad(x,height-y*3,width-x,height-y*4,width,height-y*4,width,height-y*3);
  quad(x,height-y*3,width-x,height-y*2,width,height-y*2,width,height-y*3);
  
}

//void bunny() {
  