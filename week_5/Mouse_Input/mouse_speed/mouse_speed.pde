// Variable to hold distance between previous mouse position & current one
float distance;

void setup(){
  size(600, 600);
}

void draw(){
  background(255);
  
  // pmouse variables hold previous mouse positions
  line(mouseX, mouseY, pmouseX, pmouseY);
  
  // dist() is used to get the numeric distance between two sets of points
  distance = dist(mouseX, mouseY, pmouseX, pmouseY);
  println(distance);
}