/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 1

*/

Person personOne;
Person personTwo;

public static color black, white;
public static int sumOfNumbers, testInt; // Default is 0 so no value added.

public void setup(){

  // Color setup
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  
  // Display setup
  size(900, 600);
  background(black);
  frameRate(60);
  
  // Spawn in our class
  personOne = new Person();
  personTwo = new Person();
  
  // Outputting whatever we need from our class. In this case it's a console text.
  personOne.printPersonOne();
  personTwo.printPersonTwo();
  
}

public void draw(){

}
