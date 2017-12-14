class Land {
  PImage imgtree;
  float xland;
  float yland;
  float h1;
  float h2;
  float w1;
  float w2;
     float diam1; //float diam2;
float r1 = 1000;//
float r2 = 1100;
  
  
Land() {
  xland = 200;
  yland = 140;
  h1 = height/2-720;
  h2 = height/2+720;
  w1 = width/2-540;
  w2 = width/2+540;
}

void display() {
  
  //draw 1st land
  fill(97,133,148,30);
  noStroke();
  quad(w1,h2-yland,w1+xland,h2-yland,w2-xland,h2,w1,h2);

  //draw 2nd land
  fill(120,156,164,30);
  noStroke();
  quad(w2-xland,h2-yland*2,w2,h2-yland*2,w2,h2-yland,w1+xland,h2-yland);
  quad(w1+xland,h2-yland,w2,h2-yland,w2,h2,w2-xland,h2);
    
  //draw 3rd land
  fill(158,192,181,80);
  noStroke();
  quad(w1,h2-yland*2,w2-xland,h2-yland*2,w1+xland,h2-yland,w1,h2-yland);
  quad(w1,h2-yland*2,w2-xland,h2-yland*2,w1+xland,h2-yland*3,w1,h2-yland*3);
  
  //draw 4th land
  fill(179,214,201,80);
  noStroke();
  quad(w2-xland,h2-yland*4,w2,h2-yland*4,w2,h2-yland*3,w1+xland,h2-yland*3);
  quad(w1+xland,h2-yland*3,w2-xland,h2-yland*2,w2,h2-yland*2,w2,h2-yland*3);
 
    //diam1 = random(0,20);        
   // noStroke();
    //fill(233,166,169);
   // ellipse(r1,r2,diam1,diam1);
   // frameRate(10);
  
     
  //draw 1st house
  noStroke();
  imgtree = loadImage("tree1.png");
  image(imgtree,702,1065,160,235);
  //triangle(0,xland*4,0,yland*5,xland/2,yland*5);
  
  //draw 2nd house
  noStroke();
  imgtree = loadImage("tree1.png");
  image(imgtree,1750,962,90,200);
  
  //draw 3rd house
  noStroke();
  imgtree = loadImage("tree1.png");
  image(imgtree,702,800,160,235);
  
  //draw 4th house
  noStroke();
  imgtree = loadImage("tree1.png");
  image(imgtree,1750,680,90,200);
  
}
}