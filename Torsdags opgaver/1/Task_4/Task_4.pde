/* 

  Author: CPHJL325 / Jonas Meinert Larsen
  School Email: cph-jl325@cphbusiness.dk

*/

String address = "Hillerød";
int twoNumbers = 10+10;
int division = 8/2;
String messageForUser = "Hi there.. This is a message for you - and only you!";
int frames = 60; // default value but I like declaring it
color backgroundColor, black, white;

public void setup(){
   
   // Adding colors
   backgroundColor = color(115, 147, 179);
   black = color(0, 0, 0); // Could've done 0 as grey scale. I like keeping everything RGB so I'll do it like this
   white = color(255, 255, 255); // Could've done 255 as grey scale.
   
   // Setting up the display
   size(900, 600);
   background(backgroundColor);
   frameRate(frames);
   noLoop();

}

public void draw(){
  
  // Testing the variables
  println("Values before change\n" + "Address: " + address);
  println("Value of two numbers: " + twoNumbers);
  println("Value of division: " + division);
  println("Message for a user: " + messageForUser + "\n" + "\nValues after change");
  
  String newAddress = "Copenhagen";
  int newTwoNumbers = 20+20;
  int newDivision = 70/5;
  String newMessageForUser = "This is the new updated message";
  
  println("Address: " + newAddress);
  println("Value of two numbers: " + newTwoNumbers);
  println("Value of division: " + newDivision);
  println("Message for a user: " + newMessageForUser);

}
