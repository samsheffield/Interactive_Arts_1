//An ArrayList stores a variable number of Objects. 
//This is similar to making an array of objects, but with an ArrayList, items can be easily added and removed

// The type of Object is defined in <> breackets
// Unlike arrays, no initial size is needed
ArrayList<Car> cars = new ArrayList<Car>();

void setup() {
  size(600, 600);
}

void draw() {
  background(0);

  // Enhanced for loop
  for (Car c : cars) {
    c.move();
    c.display();
  }

  // Enhanced loops can not be used to remove Objects from an ArrayList
  // Start from the and of the ArrayList and iterate in reverse. Otherwise, there will be errors!
  for (int i = cars.size()-1; i >= 0; i--) {
    Car c = cars.get(i);
    if (c.finished) {
      cars.remove(i);
    }
  }
  
  println("Cars remaining: " + cars.size());
}

void mousePressed() {
  cars.add(new Car(mouseX, mouseY, 5));
}