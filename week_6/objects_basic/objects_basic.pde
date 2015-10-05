// Create variables to hold instances of the Car Object
Car car1, car2;

void setup() {
  size(600, 600);
  
  // Instantiate the Car Object instances. This calls the Object's constructor method
  car1 = new Car();
  car2 = new Car();
}

void draw() {
  background(0);
  
  // Use an Object instance's methods and properties using dot notation
  
  // Move and display car1
  car1.move();
  car1.display();
  
  // Move and display car2
  car2.move();
  car2.display();
}