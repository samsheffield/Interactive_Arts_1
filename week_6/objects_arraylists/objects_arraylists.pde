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

  // An ArrayList can be iterated in one of two ways...
  
  // Standard for loop EXCEPT! uses size() method instead of length property
 /* for (int i = 0; i < cars.size(); i++){
    Car c = cars.get(i);
    c.move();
    c.display();
  }*/
  
  // Enhanced for loop that works with ArrayLists
  for (Car c : cars) {
    c.move();
    c.display();
  }
}

void mousePressed() {
  // The add() method is used to add new Objects to the ArrayList
  cars.add(new Car(mouseX, mouseY, 5));
}