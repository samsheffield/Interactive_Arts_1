// Create variables to hold instances of the Car Object
Car car1, car2;

void setup() {
  size(600, 600);
  car1 = new Car(100, 100);
  car2 = new Car(300, 300);
  noCursor();
}

void draw() {
  background(0);

  // Use an Object instance's methods and properties using dot notation
  
  // Update and display car1
  car1.update(mouseX, mouseY);
  car1.display();

  // Update and display car2
  car2.update(mouseY, mouseX);
  car2.display();
}