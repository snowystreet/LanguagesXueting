class Bunny {
PImage img;
float imgx1 = width/2+450;
float imgy1 = height-86;

//float imgx3 = 0;
//float imgy3 = -30;
float eara1 = width/2+486; 
float earb1 = height-94; float e1 = 0;
float eara2 = 8; //300
float earb2 = 10; //623
float eara3 = -18;
float earb3 = 0;
float angle1 = 2.24;
boolean start = false;
int x = 50;
int y = 50;
int w = 100;
int h = 75;

  float xland = 200;
  float yland = 140;
  float h1 = height/2-720;
  float h2 = height/2+720;
  float w1 = width/2-540;
  float w2 = width/2+540;
  float imgx2 = -50;
float imgy2 = 0;
  
  float diam1; float diam2;
float r1 = 820;//
float r2 = 1240;
float mx1 = 930;
int textx1 = 1000; 
int textx2 = 1260;
int rectx1 = 990;
  
void show() {
  img = loadImage("bunny1.png");
   image(img,imgx1,imgy1,50,84);
   
   if (mousePressed && mouseX >r1-diam1 && mouseX < r1+diam1 && mouseY > r2-diam1 && mouseY < r2+diam1) {
   //if (mousePressed && mouseX >x && mouseX < x+w && mouseY > y && mouseY < y+h) {
     start = true; 
}

//start button
//fill(175);
//rect(x,y,w,h);
    diam1 = random(0,20);        
    noStroke();
    fill(233,166,169);
    ellipse(r1,r2,diam1,diam1);
    frameRate(10);
    
    //1st rect
    if(imgx1 <= 940) {
          //rotate(radians(3.2));
    noStroke();
    fill(255,150);
    rect(rectx1,1240,250,28,11);
    
    //1st sentence
    fill(0);
    textSize(14);
    text("Hello! Your mooncake is arriving!", textx1, textx2);
    
    //still ellipse
    noStroke();
    fill(233,166,169);
    ellipse(r1,r2,20,20);
    frameRate(10);
    
     //1st mooncake
     diam2 = random(15,30);
     noStroke();
     fill(247,201,0);
     ellipse(mx1,1260,diam2,diam2); 
     frameRate(10);
    }
    
    //deliver 1st cake
    if(mouseX > 900 && mouseX < 960 && mouseY > 1230 && mouseY < 1290 && mx1 >= 704) {
      mx1 = mx1 - 10;
          //delete 1st sentence&rect
    textx1 = -1000; rectx1 = -1000; 
    } 
       

//body move
   if (start && imgx1 >= w2-xland) {
   imgx1 = imgx1 - 12.5; 
   } else if (imgx1 < w2-xland && imgx1 >= xland && imgy1 > h2-yland-84) {
   imgx1 = imgx1 - 5.8;
   imgy1 = imgy1 - 1.15; 
   }
   frameRate (20);
  
 //ear1() 
   translate(eara1,earb1);
   rotate(angle1);   
   fill(255);
   ellipse(e1,e1,50,14);

   //ear1move
   if (start && imgx1 >= w2-xland) {
    eara1 = eara1 - 12.5;
   } else if (imgx1 < w2-xland && imgx1 >= xland && imgy1 > h2-yland-83.5) {
   eara1 = eara1 - 5.86;
   earb1 = earb1 - 1.1;
   frameRate(20);
   }
   
  //ear2
  //translate(eara2,earb2);
  rotate(-2.3);
   fill(255);
   ellipse(eara2,earb2,50,14);//ellipse(10,11,34,10);
   //ear2move
   if (start && imgx1 >= 400 ) {
   eara2 = eara2 - 0.03;   
   } else if (imgx1 < 400 && imgx1 > 106 && imgy1 > 98) {
   eara2 = eara2 - 0.003;
   earb2 = earb2 - 0.0015;
   frameRate(16);
   }   

   //change bunny direction
   if(mx1 <= 705) {
     imgx1 = imgx2 = -60; eara2 = -50; e1 = 2000; 
      img = loadImage("bunny2.png");
      image(img,imgx2,imgy2,50,84);
     
    //change ear1
    translate(-42,-10);
    rotate(-2.5);   
    fill(255);
    ellipse(0,0,50,14);
   }

//body move
   if (imgx2 >= -100 && imgx2 < 10 && imgy2 >= 10 ) {
   imgx2 = imgx2 + 10; 
   imgy2 = imgy2 - 11; 
   //frameRate (20);
   }  
   


   /*if (imgy1 == h2 - yland - 90) {
    //1st rect
    //rotate(radians(3.2));
    noStroke();
    fill(255,50);
    rect(500,800,20,50);
   } */
}
}