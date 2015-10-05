class Button {
  
  // Some Objects can be declared inside of classes. These are specific to each instance
  AudioSample sound;
  float x, y, d;

  // Check if sound has been played
  boolean isTriggered;

  Button(float _x, float _y, float _d, String _sound) {
    // Create an Object instance in the constructor for use in this Object
    sound = minim.loadSample(_sound, 512);
    x = _x;
    y = _y;
    d = _d;
  }

  void update() {
    // Check if hovering over button
    if (dist(mouseX, mouseY, x, y) < d/2) { 
      // If mouse is pressed
      if (mousePressed) {
        // Check if sound is already playing
        if (isTriggered == false) {
          
          // Disable extra input to only play sound once per click
          isTriggered = true;
          
          // Play sound
          sound.trigger();
        }
      } 
      // If the mouse is released, reset the trigger so that it can be played again.
      else {
        isTriggered = false;
      }
    }
  }

  void display() {
    ellipse(x, y, d, d);
  }
}