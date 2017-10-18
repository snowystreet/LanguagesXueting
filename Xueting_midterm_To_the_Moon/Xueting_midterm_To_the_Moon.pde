PImage img;
float imgx1 = 460;
float imgy1 = 640;
float eara1 = 486;
float earb1 = 633;
float eara2 = 486;
float earb2 = 633;

void setup() {
  size(540,720);
  noStroke();
  
  //define colors
  int green = color(92,130,146);
  int yellow = color(176,211,202);
  
  int gradientSteps = 100;//how detailed will the gradient be
  int gradientStripHeight = height/gradientSteps;//compute how many strips of the same width we'll need to fill the sketch
  
  for(int i = 0; i < gradientSteps; i++){//for each gradient strip
    float t = map(i,0,gradientSteps,0.0,1.0);//compute i mapped from 0-gradientSteps to 0.0->1.0
    //this value will plug into lerpColor which does the colour interpolation for you
    int interpolatedColor = lerpColor(green,yellow,t);
    //finally, use the colour and draw some boxes 
    fill(interpolatedColor);
    
    rect(0,i*gradientStripHeight,width,gradientStripHeight);
  } 
  
  //MOON
  fill(255);
  ellipse(60,60,60,60);
}

void draw() {
  setLand();
  bunnyimg();

  }

void setLand() {
  int x = 100;
  int y = 110;
  
  //draw 1st land
  fill(97,133,148,80);
  noStroke();
  quad(0,height-y,x,height-y,x+300,height,0,height);
  
  //draw 2nd land
  fill(120,156,164,80);
  noStroke();
  quad(width-x,height-y*2,width,height-y*2,width,height-y,x,height-y);
  quad(x,height-y,width,height-y,width,height,x+300,height);
  
  //draw 3rd land
  fill(158,192,181,80);
  noStroke();
  quad(0,height-y*2,width-x,height-y*2,x,height-y,0,height-y);
  quad(0,height-y*2,width-x,height-y*2,x,height-y*3,0,height-y*3);
  
  //draw 4th land
  fill(179,214,201,80);
  noStroke();
  quad(x,height-y*3,width-x,height-y*4,width,height-y*4,width,height-y*3);
  quad(x,height-y*3,width-x,height-y*2,width,height-y*2,width,height-y*3);
  
  //draw tree1
  fill(255,5);
  noStroke();
  triangle(0,300,0,560,70,560);
  
}
  

void bunnyimg() {
  img = loadImage("bunny1.png");
  
  /*image(img,460,645,38,72);
  int x = 460;
  int y = 645;
if (mousePressed) {
   image(img,x-5,y-5,38,72);*/
   
   image(img,imgx1,imgy1,38,72);
   
   if (imgx1 >= 400 /*&& imgy1 < 720*/  ) {
   imgx1 = imgx1 - 6; 
   } else if (imgx1 < 400 && imgx1 > 96 && imgy1 > 100) {
   imgx1 = imgx1 - 5.8;
   imgy1 = imgy1 - 2;
   /*} else if (imgx1 > 100 && imgx1 < 400 && imgy1 > 400 && imgy1 < 610) {
   imgx1 = imgx1 + 10;
   imgy1 = imgy1 - 2;
   } else if (imgx1 > 100 && imgx1 < 400 && imgy1 > 290 && imgy1 < 410) {
   imgx1 = imgx1 - 5;
   imgy1 = imgy1 - 2; 
   } else if (imgx1 > 100 && imgx1 < 400 && imgy1 > 180 && imgy1 < 290) {
   imgx1 = imgx1 + 5;
   imgy1 = imgy1 - 2; */
   }
   frameRate (12);
   
   //ear1
   translate(eara1,earb1);
   rotate(2.24);
   fill(255);
   ellipse(0,0,34,10);
   
   if (imgx1 >= 400 /*&& imgy1 < 720*/  ) {
   eara1 = eara1 - 5.8;
   } else if (imgx1 < 400 && imgx1 > 96 && imgy1 > 100) {
   eara1 = eara1 - 5.8;
   earb1 = earb1 - 2;
   frameRate(12);
   }
   
   //ear2
  /* translate(eara2,earb2);
   rotate(-2.20);
   fill(255);
   ellipse(11,11,34,10);
   
   if (imgx1 >= 400 /*&& imgy1 < 720  ) {
   eara2 = eara2 - 5.8;
   } else if (imgx1 < 400 && imgx1 > 96 && imgy1 > 100) {
   eara2 = eara2 - 5.8;
   earb2 = earb2 - 2;
   frameRate(12);
   } 
   */
   
   
}

void mouseClicked() {
    fill(255); rect(30, 20, 55, 55, 3, 6, 12, 18);
}