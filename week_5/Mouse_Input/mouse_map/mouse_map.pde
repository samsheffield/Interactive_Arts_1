// variables to hold mapped ranges
float mappedX, mappedY;

void setup(){
  size(600, 600);
}

void draw(){
  
  // map converts one range of values to another. Arguments: variable, original min, original max, new min, new max.
  mappedX = map(mouseX, 0, width, 0, 255);
  mappedY = map(mouseY, 0, height, 0, 255);
  
  background(mappedX, mappedY, 0);
}