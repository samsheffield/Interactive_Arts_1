// Library imports happen in main sketch file
import processing.video.*;
import ddf.minim.*;

// Some Objects, like those shared by other Objects, will be initialized in the main sketch
Minim minim;

// Declare Object variables
Button b1, b2;
SpinningVideo svid1;

void setup() {
  size(600, 600);
  minim = new Minim(this);
  b1 = new Button(200, height/2, 100, "BD.mp3");
  b2 = new Button(400, height/2, 100, "SD.wav");
  svid1 = new SpinningVideo(this, width/2, height/2, 900, 900, "transit.mov");
}

void draw() {
  background(0);

  svid1.display();
  
  b1.update();
  b1.display();

  b2.update();
  b2.display();
}

// Event handler functions must remain in the main sketch
void movieEvent(Movie m) {
  m.read();
}