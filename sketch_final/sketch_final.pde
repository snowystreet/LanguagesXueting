import processing.sound.*;
SoundFile song;
Intro myIntro;
Land myLand;
Bunny myBunny;
Dialogue myDialogue;
  
void setup() {
  fullScreen();  
  song = new SoundFile(this,"night-in-cuba_GJ5nMUHu.mp3");
  song.loop();
  myIntro = new Intro();
  myLand = new Land();
  myBunny = new Bunny();
  myDialogue = new Dialogue();
}

void draw() {
  
  myIntro.display();
  myLand.display();
  myDialogue.show();
  myBunny.show();
  
}