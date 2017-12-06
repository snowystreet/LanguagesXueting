//video exercise
//description: the camera capture the video in the same five windows and 
//the size will be change by mouse location,
//the color of the image will also be change base on the location of the mouse

import processing.video.*;

Capture video;

void setup() {
  size(320,240);
  video = new Capture(this, 320,240);
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(255);
  tint(mouseX,mouseY,255);
  translate(width/2,height/2);
  imageMode(CENTER);
  image(video,0,0,mouseX,mouseY);
  image(video,30,30,mouseX,mouseY);
  image(video,-30,-30,mouseX,mouseY);
  image(video,-30, 30, mouseX,mouseY);
  image(video,30,-30,mouseX,mouseY);
}
  