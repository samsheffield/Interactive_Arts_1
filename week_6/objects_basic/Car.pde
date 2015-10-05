// Objects are defined in classes.
class Car {
  // The object's properties. These variables belong to each instance of this object which is created.
  float x, y, w, h, speed;

  // Objects are initialized using a constructor method. 
  Car() {
    x = width/2;
    y = random(height);
    w = 120;
    h = 30;
    speed = random(1, 5);
  }

  // Functions belonging to an Object are called methods.
  // Methods define what an Object is able to do.
  void display() {
    // Body
    fill(#FF0000);
    rect(x, y, w, h);

    // Tires
    fill(#888888);
    ellipse(x + 30, y+ 30, 30, 30);
    ellipse(x + 90, y+ 30, 30, 30);
  }

  void move() {
    if (x < width) {
      x += speed;
    }
    else {
     x = -w; 
    }
  }
}