/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 7
  
  Comments:
  N/A

*/

// Additional
public static int input = 20;

// Default
public static color black, white, backColorLeap, backColorNotLeap;

public void setup(){

  // Colors
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  backColorLeap = color(90, 50, 190);
  backColorNotLeap = color(90, 100, 150);
  
  // Display
  size(900, 600);
  background(black);
  frameRate(60);
  
  // Method calling
  task7A();
  task7B();
}
  
public void draw(){
  
}

public void task7A(){ // Task 7.a

  // While input is bigger of equal to 0 do THIS.
  while(input > 0){
    
    if(input == 6){ // If input is equal to 6 we need this though..
      
      println("Six");
      
    } else { // If it's not six.. Then we will just print as normal.
      
      println(input);
    
    }
    
    // Removing 1 from input till we reach 0
    input--;
    
  }
  
}

public void task7B(){ // Task 7.b

  // If input value is under 0 do THIS.
  if(input < 0){
    
    println("Minus number.. Enter a valid number please.");
    
  }
  
}
