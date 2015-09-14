// && and ||

void setup() {
  size (600, 600);
}

void draw() {
  // && (AND) allows you to combine conditions
  // If both conditions are met...
  if (mouseX > width/2 && mouseY > height/2) {
    background(0);
  }
  else {
    background(255);
  }
  
  // || (OR) allows you to check if one condition is met
  // If one condition is met...
  if ((mouseX < 100) || (mouseX > width-100)) { // Parentheses can be used around each condition for clarity
    ellipse(300, 300, 20, 20);
  }
  else {
    ellipse(300, 300, 200, 200);
  }
  
  
}