//Title: Aotoumatic Piano
//By Xueting
//Description: This is a reactive sound sketch
//By using the Processing sound library, I made want to make an automatic piano 
//that can constitute different possibilities of melody.

import processing.sound.*;

SoundFile[] file;
//define the number of sounds
int sounds = 7;
//Create an array of values of the octaves.
float[] octave = {0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0};
//positions
int [] px = {0, 85, 170, 255, 340, 425, 510};
//integer
int trigger;
//the playsound array
int[] playSound = {2,1,1,2,1,1,2};


void setup() {
  size(595, 400);
  background(255);
  //make an array of soundfiles
  file = new SoundFile[sounds];
  
  //load 7 soundfiles
  for (int i = 0; i < sounds; i++) {
    file[i] = new SoundFile(this,(i+1) + ".mp3");
  }
  
  //trigger for random sequencer
  trigger = millis();
  

}

void draw() {
  
  if (millis() > trigger) {
    background(0);
    
    for (int i = 0; i < sounds; i++) {
      if(playSound[i] == 1) {
        float rate;
        fill(int(random(255)),int(random(255)),int(random(255)));
        noStroke();
        //Rec
        rect(px[i], 100, 50, 180);
        
        rate = octave[int(random(0,7))];
        file[i].play(rate, 0.5);
      }
      //play in different order
      playSound[i] = int(random(0,7));
    }
    //create a new triggertime 
    trigger = millis() + int(random(200,100));
  }
  
}

        
  