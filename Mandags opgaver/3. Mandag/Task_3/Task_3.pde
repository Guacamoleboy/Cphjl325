/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 3

*/

public static color black, white;
public static int sumOfNumbers, testInt; // Default is 0 so no value added.

public void setup(){

  // Color setup
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  
  // Display setup
  size(900, 600);
  background(black);
  frameRate(1);
  
  // Testing return
  println("Sum of numbers before method is called: " + sumOfNumbers);
  
  // Method calling
  sum(5);
  println("Sum of all numbers from 1 to the number was: " + sumOfNumbers);

}

public void draw(){

}

public int sum(int number){ 
  
   for(int i = 0; i < number; i++){
     
     testInt++;
     println(testInt);
     sumOfNumbers += testInt;
   
   }
   
   return sumOfNumbers;
  
}
