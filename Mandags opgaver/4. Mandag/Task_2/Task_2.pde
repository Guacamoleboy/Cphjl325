/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 2

*/

Person me;

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
  me = new Person();
  
  // Outputting whatever we need from our class.
  println("My name is " + me.getName());
  println("My age is " + me.getAge());
  me.increaseAge();
  println("My new age is now " + me.getAge());
  
}

public void draw(){

}
