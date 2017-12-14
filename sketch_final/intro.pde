class Intro {
boolean going = false;
boolean drawRect = false;
  int x = width/2-500;
  
  int y = width/2-1000;
  int w = 1000;
  int h = 560;
  float t1 = 850;
  float t2 = 320;
  float t3 = 870;
  float t4 = 700;
  float t5 = width/2-60;
  float t6 = height/2+80;
  float t7 = height/2+40;

void display() {
   // noStroke();
  //define colors
  int green = color(92,130,146);
  int yellow = color(176,211,202);
  
  int gradientSteps = 100;//how detailed will the gradient be
  int gradientStripHeight = height/gradientSteps;//compute how many strips of the same width we'll need to fill the sketch
  
  for(int i = 0; i < gradientSteps; i++) {//for each gradient strip
    float t = map(i,0,gradientSteps,0.0,1.0);//compute i mapped from 0-gradientSteps to 0.0->1.0
    //this value will plug into lerpColor which does the colour interpolation for you
    int interpolatedColor = lerpColor(green,yellow,t);
    //finally, use the colour and draw some boxes 
    fill(interpolatedColor);
    
    rect(0,i*gradientStripHeight,width,gradientStripHeight+100);  
  } 
 
  //MOON
  fill(255);
  ellipse(860,80,80,80);
  
  //text box
  fill(255,150);
  rect(x,y,w,h,11);
  
  if (going) {
    y = y - 50;
    t2 = t2 - 45;
    t6 = t6 - 50;
    t7 = t7 - 50;
  }
  
  //text
  fill(0,102,153);
  textSize(30);
  String s = "The Mid-Autumn Festival is a traditional date in China, people will celebrate with families and having mooncake. In legends, The Jade Rabbit lives on the Moon Palace and pounds immortal medicine for those living in the heaven. Since shopping online is so popular nowadays, I came up with the story that Jade Rabbit working as a courier to deliver mooncakes to families and a blessing in the end of the game. Thus this is a theme game that people will be able have fun and share the game to families and friends during that date.";
  text(s, t1, t2, t3, t4);
  //textSize(32);
  //text("",t1,t2);
  
  //top box 
  fill(255);
  rect(width/2-100,t7,180,50,11);
  
  //top text
  stroke(0,102,153);
  fill(0,102,153);
  textSize(30);
  text("START",t5, t6);

    //box stroke
  if(mouseX > width/2-190 && mouseX < width/2 +90 && mouseY > t7 - 25 && mouseY < t7 + 25) {
    stroke(244,213,3);
    strokeWeight(8);
    fill(255,0);
    rect(width/2-100,t7,180,50,11);
  }

if (mousePressed) {
  going = true;
     
}

}
}