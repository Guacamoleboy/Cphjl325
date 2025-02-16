/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 3

*/

Person[] persons = new Person[10]; // An array of 10 persons

public static color black, white;
public static int sumOfNumbers, testInt, count; // Default is 0 so no value added.

public void setup(){

  // Color setup
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  
  // Display setup
  size(900, 600);
  background(black);
  frameRate(60);
  
  // Spawn in the 10 persons using a for-loop
  for (int i = 0; i < persons.length; i++) {
    
     persons[i] = new Person();
     
  }
  
  // Method calling
  increaseAllAges();

  
}

public void draw(){

}

public void increaseAllAges(){ // Method to keep setup() small and readable.

  // Messing with the persons for each array
  for (int i = 0; i < persons.length; i++) {
    
     println("I am a person. My age is: " + persons[i].getAge()); // Original age
     persons[i].increaseAge(); // Calling the age increase
     println("My new age is: " + persons[i].getAge()); // Get the new age

  }

}
