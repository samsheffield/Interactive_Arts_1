// Create an array that holds the type of Object
Car[] cars = new Car[50];

void setup(){
  size(600, 600);
  
  // Fill the array with a for loop
  for(int i=0;i< cars.length;i++){
    cars[i] = new Car(random(-100, width), random(height), random(20)+1);
  }
  
  // Or set by hand...
  cars[cars.length-1] = new Car(width/2, height/2, 0);
}

void draw(){
  background(0);
  
  // Use a for loop to iterate through every Car instance in the cars array
  for(int i=0;i< cars.length;i++){
    // Call methods for each Car instance from cars[]
    cars[i].move();
    cars[i].display();
  }
  
}