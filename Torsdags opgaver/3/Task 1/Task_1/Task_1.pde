/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 1
  
  Comments:
  N/A

*/

public void setup(){

  // Display
  size(900, 600);
  background(50);

  // Method calling
  //task1B();
  //task1C("Text from setup");
  //task1D("Jonas", 26);

}

public void draw(){

  //

}

public void task1B(){ // Task 1.B
  
  println("Hello from the method!");

}

public String task1C(String inputStr){ // Task 1.C

  println(inputStr);
  return inputStr;

}

public void task1D(String name, int age){ // Task 1.D

  println("My name is " + name + ".\nMy age is " + age + ".");

}
