float x = 300;
float y = 300;
float d = 100;

float x2 = 300;
float y2 = 300;
float d2 = 100;

void setup(){
  size(600, 600);
  frameRate(10);
}

void draw(){
  //background(255);

  fill(random(100, 255), 255, 255, random(255));
  ellipse(x, y, d, d);
  x += random(-10, 10);
  y += random(-10, 10);
  
  stroke(255,0,0, 100);
  ellipse(x2, y2, d2, d2);
  x2 = random(width);
  y2 = random(height);
  
}

