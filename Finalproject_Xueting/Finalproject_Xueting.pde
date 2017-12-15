import processing.sound.*;
SoundFile song;

PImage img;
PImage imgtree;
float imgx1 = 460;
float imgy1 = 640;
float imgx2 = -44;
float imgy2 = 10;
float imgx3 = -400;
float imgy3 = -140;

float imgx4 = -460;
float imgy4 = -120;

float eara1 = 486; 
float earb1 = 633; float e1 = 0;
float eara2 = 8; //300
float earb2 = 10; //623
float eara3 = -18;
float earb3 = 0;
float ex1 = -20; float ey1 = 50; boolean locked = false;
float ex2 = 20; float ey2 = 35;
boolean button1 = false; 
boolean button2 = false;
float diam1; float diam2;
float r1 = -105;//
float r2 = -40;//
float r3 = 95; float r4 = -30;
int rectx1 = 25; int recty1 = 22; int rectw1 =230; int recth1 = 20; int rectt = 8;
int textx1 = 36; int textx2 = -270; int texty2 = 20;
int rectx2 = -280; int recty2 = 7; int rectw2 = 265; int recth2 = 20; int rectt2 = 8;
int textx3 = -120; int rectx4 = -135; int textx5 = -60;
int recty4 = -75; int rectw4 = 220; int recth4 = 20; int rectt4 = 8;
int s1 = 14;
float angle1 = 2.24;
float w = 38; int s2 = 14;

//float rect1 = rect(25,22,180,20,8);


void setup() {
  size(540,720);
  noStroke();
  
    song = new SoundFile(this,"night-in-cuba_GJ5nMUHu.mp3");
  song.loop();
  
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
  interact();
  //interact1();

   }


void setLand() {
  int xland = 100;
  int yland = 110;
  
  //draw 1st land
  fill(97,133,148,80);
  noStroke();
  quad(0,height-yland,xland,height-yland,xland+300,height,0,height);
  
  //draw 2nd land
  fill(120,156,164,80);
  noStroke();
  quad(width-xland,height-yland*2,width,height-yland*2,width,height-yland,xland,height-yland);
  quad(xland,height-yland,width,height-yland,width,height,xland+300,height);
  
  //draw 3rd land
  fill(158,192,181,80);
  noStroke();
  quad(0,height-yland*2,width-xland,height-yland*2,xland,height-yland,0,height-yland);
  quad(0,height-yland*2,width-xland,height-yland*2,xland,height-yland*3,0,height-yland*3);
  
  //draw 4th land
  fill(179,214,201,80);
  noStroke();
  quad(xland,height-yland*3,width-xland,height-yland*4,width,height-yland*4,width,height-yland*3);
  quad(xland,height-yland*3,width-xland,height-yland*2,width,height-yland*2,width,height-yland*3);
    
  //draw 1st house
  noStroke();
  imgtree = loadImage("tree1.png");
  image(imgtree,-100,360,160,235);
  //triangle(0,xland*4,0,yland*5,xland/2,yland*5);
  
  //draw 2nd house
  noStroke();
  imgtree = loadImage("tree1.png");
  image(imgtree,500,300,90,200);
  
  //draw 3rd house
  noStroke();
  imgtree = loadImage("tree1.png");
  image(imgtree,-100,160,160,235);
  
  //draw 3rd house
  noStroke();
  imgtree = loadImage("tree1.png");
  image(imgtree,500,80,90,200);
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
   } else if (imgx1 < 400 && imgx1 >= 96 && imgy1 > 100) {
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
   frameRate (20);
   
 //ear1() 
   translate(eara1,earb1);
   rotate(angle1);   
   fill(255);
   ellipse(e1,e1,34,10);

   //ear1move
   if (imgx1 >= 400 /*&& imgy1 < 720*/  ) {
    eara1 = eara1 - 5.8;
   } else if (imgx1 < 400 && imgx1 > 96 && imgy1 > 98) {
   eara1 = eara1 - 6;
   earb1 = earb1 - 2;
   frameRate(20);
   
     //ear random
    // if (imgx1 <= 100) {
    // angle1 = random(1.94,2.54);

   
   }
   
  //ear2
  //translate(eara2,earb2);
  rotate(-2.3);
   fill(255);
   ellipse(eara2,earb2,34,10);//ellipse(10,11,34,10);
   //ear2move
   if (imgx1 >= 400 /*&& imgy1 < 720*/  ) {
   eara2 = eara2 - 0.01;   
   } else if (imgx1 < 400 && imgx1 > 106 && imgy1 > 98) {
   eara2 = eara2 - 0.001;
   earb2 = earb2 - 0.001;
   frameRate(16);
   } 
   
     
}


 void interact() {
   if (imgx1 <= 94) {
     //1st rect
    rotate(radians(3.2));
    noStroke();
    fill(255,50);
    rect(rectx1,recty1,rectw1,recth1,rectt);
    
    //1st sentence
    fill(0);
    textSize(s1);
    text("Hello! Your mooncake is arrive!", textx1, textx1);
    
   } 
    if(imgx1 <= 94) {
    
    //button1
    diam1 = random(0,20);        
    noStroke();
    fill(233,166,169);
    ellipse(r1,r2,diam1,diam1);
    frameRate(24);
    //1st mooncake
     //diam2 = random(20,30);
     noStroke();
     fill(247,201,0);
     ellipse(ex1,ey1,20,20);   
    
    }
 
 // if(mouseX > r1-diam/2 && mouseX < r1+diam/2 && mouseY > r2-diam/2 && mouseY < r2+diam/2) {

   if(mouseX > 1 && mouseX < 20 && mouseY > 420 && mouseY < 500) {button1 = !button1; 
  }
   if(button1) {
    //2nd rect
    rotate(radians(1.6));
    noStroke();
    fill(255,50);
    rect(-78,-48,200,20,8);
    
     //mooncake move
     ex1 = ex1 - 15; 
     if( ex1 <= -140) {
       ex1=-200;
     }
    
    //2nd sentence
    rotate(radians(-0.4));
    fill(0);
    textSize(14);
    text("Oh! Thank you so much!",-56,-33);
 
    //delete 1st sentence & 1st rect
    textx1 = 500;
    rectx1 = 0; recty1 = 0; rectw1 =0; recth1 = 0; rectt = 0;
    s1 = 1;
        
  } 
    //button1 color change
    if(ex1 <= -130) {             
    noStroke();
    fill(247,201,0);
    ellipse(r1,r2,20,20);
}
    //change bunny direction
    if(ex1 <= -135) {
      imgx1 = -80; imgy1 = -80;
      img = loadImage("bunny2.png");
      image(img,imgx2,imgy2,w,72);
      
    //ear1
    //translate(eara1,earb1);    
    translate(eara3,earb3);
    rotate(-2.1);   
    fill(255);
    ellipse(0,0,34,10);
    
    //ear2
    translate(-10,-15);
    rotate(-4.1);
    fill(255);
    ellipse(0,0,34,10);
    
    if(ex1 <= -135) {
     eara2 = earb2 = e1 = 500;
    }
    
    if(e1 <= 500 && imgx2 <= 299 /*&& imgy2 >= -30*/){
   imgx2 = imgx2 + 5.8;
   imgy2 = imgy2 - 1.9;
   eara3 = eara3 + 5.6;
   earb3 = earb3 - 1.9;
   frameRate(20);   
    }
    if(imgx2 >= 299 /*&& imgy2 >= -30*/){
      //button2
      diam2 = random(0,20);
      noStroke();
      fill(132,194,50);
      ellipse(95,-30,diam2,diam2);
      frameRate(10);
      
      //2nd mooncake
     noStroke();
     fill(247,201,0);
     ellipse(ex2,ey2,20,20); 
     
    //3nd rect
    rotate(radians(-4));
    noStroke();
    fill(255,50);
    rect(rectx2,recty2,rectw2,20,8);
    
    //3rd word
    fill(0);
    textSize(14);
    text("Hi, please take your mooncake here!",textx2,texty2);
    }
    
   
    //2nd mooncake move
  if(mouseX > 520 && mouseX < 565 && mouseY > 400 && mouseY < 440) {button2 = !button2; 
  }
    
   if(button2) {
     //4th rect
     rotate(radians(-1));
     noStroke();
     fill(255,50);
     rect(rectx4,recty4,rectw4,recth4,rectt4);

     //move 2nd mooncake
     ex2 = ex2 + 15; 
     if (ex2>= 540) {
     ex2 = 700;
     }
     //delete 3rd word 
     
     //remove bunny2
    imgx2 = imgx2 + 15; //imgy2 = imgy2 + 3;
    

     
     textx2 = 500; texty2 = 0; 
     //delete 3rd rect
     rectx2 = 280; recty2 = 7; rectw2 = 0; 
    
    //4th word
    fill(0);
    textSize(s2);
    text("Wow! Thank you very much!",textx3,textx5);

        
    //remove ear2
    //eara3 = eara3 + 5;
   }

    //new yellow button
    if(ex2 >= 160) {
    noStroke();
    fill(247,201,0);
    ellipse(r3+3,r4+10,20,20);
    noLoop();
    }

    if(ex2 >=160) {
    //delete rect4
    rectx4 = -200; recty4 = -200; rectw4 = 0; recth4 = 0; rectt4 = 0;

     //add "bunny3"
     img = loadImage("bunny0.png");
     image(img,imgx3,imgy3,70,98);
     
     noStroke();
     fill(247,201,0);
     rect(-320,-260,360,60,11); 
     
     fill(255);
     textSize(24);
     String s = "Happy Mid-Autumn Festival!";
     text(s,-305, -240, 350,110);

      }
       
         
         
     // if(imgx3 >= -350 && imgx3 < 100) {
     //imgx3 = imgx3 + 0.8;
     }
    }
  
    
    //delete"thank u very much"
    //rotate(radians(-1));
    //textx3 = 0; textx5 = 0; 
      
     //if(ex2 >= 150) {
    //move away "bunny2"
     //imgx2 = -1000;
      //}
  
 //void interact1() {
 //     //add "bunny3"
 //    img = loadImage("bunny0.png");
 //    image(img,imgx4,imgy4,70,96);
     
 //      if(imgx4 >= -460 && imgx4 < 300) {
 //      imgx4 = imgx4 + 1.2;
 //      }

 
 
 



     
 