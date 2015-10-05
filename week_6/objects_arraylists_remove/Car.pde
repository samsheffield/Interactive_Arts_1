// Objects are defined in classes
class Car {

  // The object's properties. These variables belong to each instance of this object which is created.
  float x, y, speed;

  boolean finished;

  // Objects are initialized using a constructor method. 
  Car(float _x, float _y, float _speed) {
    x = _x;
    y = _y;
    speed = _speed;
  }

  // Functions belonging to an Object are called methods.
  // Methods define what an Object is able to do.

  void move() {
    if (x < width) {
      x += speed;
    } else {
      finished = true;
    }
  }

  void display() {
    // Body
    fill(#FF0000);
    rect(x, y, 120, 30);

    // Wheels
    fill(#888888);
    ellipse(x+30, y+30, 30, 30);
    ellipse(x+90, y+30, 30, 30);
  }
  
}