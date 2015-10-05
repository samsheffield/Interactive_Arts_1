// Objects are defined in classes.
class Car {
  // The object's properties. These variables belong to each instance of this object which is created.
  float x, y, w, h;

  // An object's instances can be given arguments when created.
  // The argument names must differ from any of the object's properties.
  // Object's are initialized using a constructor method. 

  Car(float startx, float starty) {
    // Set the x and y properties to the startx and starty arguments so that they can be used throughout object code.
    x = startx;
    y = starty;
    w = 120;
    h = 30;
  }

  // Custom functions (also called "methods") can be used to pass variables from the main sketch into the object instance.
  void update(float newx, float newy) {
    x = newx;
    y = newy;
  }

  // Functions belonging to an Object are called methods.
  // Methods define what an Object is able to do.
  void display() {
    // Body
    fill(#FF0000);
    rect(x, y, 120, 30);

    // Tires
    fill(#888888);
    ellipse(x + 30, y+ 30, 30, 30);
    ellipse(x + 90, y+ 30, 30, 30);
  }
}