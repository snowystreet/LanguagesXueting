Bunny myBunny;
Mooncake[] mooncakes = new Mooncake[100];

void setup() {
  size(500,600);
  
  //Initialize Bunny Object
  myBunny = new Bunny();
  
  //Initialize the constructor with a for loop
  for(int i=0; i<mooncakes.length;i++) {
    mooncakes[i]= new Mooncake(int(random(width)), int (random(height)),65);
  }
}

void draw() {
  background();
  //Operate Bunny object.
  myBunny.move();
  myBunny.display();
    for(int i=0; i<mooncakes.length; i++) {
    mooncakes[i].display();
    mooncakes[i].fall();
   
    }
}

void background() {
    noStroke();
  
  //define colors
  int green = color(55,64,121);//92,130,146 81,52,124
  int yellow = color(135,197,206);//176,211,202 195,151,208
  
  int gradientSteps = 100;//how detailed will the gradient be
  int gradientStripHeight = height/gradientSteps;//compute how many strips of the same width we'll need to fill the sketch
  
  for(int i = 0; i < gradientSteps; i++) {//for each gradient strip
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