/*int circleX = width/2;
int circleY = 0;*/
float circleX1; float circleY1; float circleX2; float circleY2;
float circleX3; float circleY3; float circleX4; float circleY4;
float change = 2;
float circleW1 = width; float circleH1 = height;
float circleW2 = width; float circleH2 = height;
float circleW3 = width; float circleH3 = height;
float circleW4 = width; float circleH4 = height; 
int value = 0;

void setup() {
  size(540,540);
  
  //circle1
  circleX1 = width/2;
  circleY1 =0;
  
  //circle2
  circleX2 = width/2;
  circleY2 = height;
  
  //circle3
  circleX3 = 0;
  circleY3 = height/2;
  
  //circle4
  circleX4 = width;
  circleY4 = height/2;
}

void draw() {
  background(255);
  textSize(80);
  fill(111,51,112);
  text("MIRROR",140,100);
  
  
  //draw circle1
  noStroke();
  fill(238,162,255);
  ellipse(circleX1,circleY1,circleW1,circleH1);
  circleY1 = circleY1 + 2;
  
  //draw circle2
  noStroke();
  fill(186,207,204);
  ellipse(circleX2,circleY2,circleW2,circleH2); 
  circleY2 = circleY2 - 2;
  
  //draw circle3
  noStroke();
  fill(235,181,50);
  ellipse(circleX3,circleY3,circleW3,circleH3);
  circleX3 = circleX3 + 2;
  
  //draw circle4
  noStroke();
  fill(134,185,40);
  ellipse(circleX4,circleY4,circleW4,circleH4);
  circleX4 = circleX4 - 2;
  
  // circle1 change&triangle1 appear
 if (circleY1>height/2) {
   circleW1 = circleW1 + change;
   circleH1 = circleH1 - change;
   strokeWeight(3);
   fill(90,220,194,200);
  triangle(0,0,270,270,540,0); }
  
  // circle2 change
  if (circleY2<height/2 ) {
     circleW2 = circleW2 + change;
     circleH2 = circleH2 - change; }
     
  // circle3 change
  if  (circleX3>width/2) {
     circleW3 = circleW3 - change;
     circleH3 = circleH3 + change; }
     
  // circle4 change
  if (circleX4<width/2) {
      circleW4 = circleW4 - change;
      circleH4 = circleH4 + change; }
    
  //triangle2 appear
  if(circleY1>height/2+50) {
      fill(224,73,58,70);
      stroke(0);
      triangle(270,270,540,0,540,540);  }
  
  //triangle3 appear
  if(circleY1>height/2+100) {
      fill(91,84,245,90);
      stroke(0);
      triangle(0,540,270,270,540,540);  }
  
  //triangle4 appear
  if(circleY1>height/2+150) {
      fill(0,198,173,150);
      stroke(0);
      triangle(0,0,0,540,270,270);  }
   
   //mousepressed
     if (mousePressed) {
       textSize(44);
       fill(50,50,50);
       text("Now you can see me",60,270);
        }
       
    //keyPressed
    if (keyPressed) {
      fill(255);
      rectMode(CENTER);
      rect(270,270,540,540); }
    
     }
  
      