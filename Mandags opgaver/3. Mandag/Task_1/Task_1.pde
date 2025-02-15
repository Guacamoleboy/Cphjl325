/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 1

*/

public static color black, white;

public void setup(){

  // Color setup
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  
  // Display setup
  size(900, 600);
  background(black);
  
  // Method calling
  printEven(20); // Use the () to insert any values you'd like.

}

public void draw(){

  

}

public void printEven(int maxNumber){
  
  // Checks for negative numbers
  if(maxNumber < 0){
    println("Negative value");
    }
  
  // Function to calculate even numbers
  for(int i = 0; i <= maxNumber; i++){
    
    int newI = i % 2;
    
    if(newI == 1){
      
    }
    if(newI == 0){
    println(i);
    }
  
  }

}
