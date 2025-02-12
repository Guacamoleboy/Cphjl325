/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 2
  
  Comments:
  N/A

*/

// Additional
public static String myName = "Jonas Meinert Larsen";
public static int myAge = 26;
public static boolean myMood = false;
public static String myMoodInText = "don't";

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
  taskTwo();
  
}
  

public void draw(){
  
}

public void taskTwo(){

    if(myMood == false){
    
    myMoodInText = "don't";
    println("Hi. My name is " + myName + ".\nI am " + myAge + " years old.\nI " + myMoodInText + " clap my hands.");
  
  } else {
    
    println("Hi. My name is " + myName + ".\nI am " + myAge + " years old.");
  
  }

}
