int count1, count2;
float diameter1 = 20;
float diameter2 = 40;

void setup(){
  size(600, 600);
}

void draw(){
  background(255);
  
  // while() continues to run code as long as condition is still true
  while(count1 < 10){
    rect(count1 * diameter1, 100, diameter1, diameter1);
    count1++; // Add to count
  }
  
  // Reset count to run while() next loop
  count1 = 0;
  
    // while() continues to run code as long as condition is still true
  while(count2 < 10){
    rect(count2 * diameter2, 200, diameter2, diameter2);
    count2++; // Add to count
  }
  
  // Reset count to run while() next loop
  count2 = 0;
  
}