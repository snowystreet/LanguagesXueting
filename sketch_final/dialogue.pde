class Dialogue {
PImage img;
float imgx1 = width/2+450;
float imgy1 = height-86;
float imgx2 = -44;
float imgy2 = 10;
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
  
float diam1; //float diam2;
float r1 = 820;//
float r2 = 1240;
  
int rectx1 = 25; int recty1 = 22; int rectw1 =230; int recth1 = 20; int rectt = 8;
int textx1 = 36; int textx2 = -270; int texty2 = 20;
int rectx2 = -280; int recty2 = 7; int rectw2 = 265; int recth2 = 20; int rectt2 = 8;
  
  void show() {
   //button1
    /*diam1 = random(0,20);        
    noStroke();
    fill(233,166,169);
    ellipse(r1,r2,diam1,diam1);
    frameRate(10);*/
    
   if (imgx1 <= 1200) {
    //1st rect
    //rotate(radians(3.2));
    noStroke();
    fill(255,50);
    rect(500,800,20,50);
     }
}

}