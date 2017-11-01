class Frog {

int whichFrog = 0;

void display() {
  frog[0]= loadImage("0.png");
  frog[1]= loadImage("1.png");
  frog[2]= loadImage("2.png");
  frog[3]= loadImage("3.png");
  frog[4]= loadImage("4.png");
  frog[5]= loadImage("5.png");
}

void move() {
  imageMode(CENTER);
  image(frog[whichFrog],mouseX,mouseY,100,100);
}

void press() {
  if(mousePressed) {
    whichFrog=int(random(0,6));
  }
}
}