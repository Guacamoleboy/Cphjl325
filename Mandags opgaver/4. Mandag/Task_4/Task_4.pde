/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 4

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
  averageAge();

  
}

public void draw(){

}

public void increaseAllAges(){ // Method to keep setup() small and readable.

  // Messing with the persons for each array.
  for (int i = 0; i < persons.length; i++) {
    
     println("I am a person. My age is: " + persons[i].getAge()); // Original age.
     persons[i].increaseAge(); // Calling the age increase.
     println("My new age is: " + persons[i].getAge()); // Get the new age.

  }

}

public void averageAge(){ // Method to check average and total.

  int sum = 0; // Setting a start value
  for (int i = 0; i < persons.length; i++) { // Loop untill array (persons) limit is reached.
    
     println(persons[i].getAge()); // Isn't needed. I just like knowing the numbers.
     sum += persons[i].getAge(); // Adds the age to sum untill loop is over.
     
  }
  
  println("\nTotal age was " + sum); // Value sum is now displayed since for-loop is over.
  int average = sum / persons.length; // Calculate the average age. sum / length of array.
  println("\nThe average age is " + average); // Display average age.
  
  

}
