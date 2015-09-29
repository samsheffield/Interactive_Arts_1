// Two variables to keep track of relative direction of mouse movement
float xDirection, yDirection;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  
  // Compare current & previous mouse positions to get direction
  if (mouseX < pmouseX) {
    println("LEFT");
  } else if (mouseX > pmouseX) {
    println("RIGHT");
  } else {
    println("X IS STILL");
  }

  // Do the same for the y axis
  if (mouseY < pmouseY) {
    println("UP");
  } else if (mouseY > pmouseY) {
    println("DOWN");
  } else {
    println("Y IS STILL");
  }
}