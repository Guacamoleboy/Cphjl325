/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 1
  
  Comments:
  Added Leap Year calculations for fun.

*/

public static int days = 0;
public static int febDays = 28;
public static double currentYear = 2025;
public static boolean leapYear = false;
public static String month = "Febuary";
public static color black, white, backColorLeap, backColorNotLeap;
public static PFont text;

public void setup(){

  // Colors
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  backColorLeap = color(90, 50, 190);
  backColorNotLeap = color(90, 100, 150);
  
  // Fonts
  text = createFont("Wonderly.otf", 50);
  textFont(text);
  
  // Display
  size(900, 600);
  background(black);
  frameRate(60);
  
  // Method calling
  leapYearCalc();
  switchCaseTask();

}

public void draw(){
  
}

public void leapYearCalc(){ // Calculates Leap Year for a given year
  
    // Leap year calculations
    if(currentYear % 4 == 0){
      
      // Variables
      leapYear = true;
      febDays++;
      println("It's Leap Year! Febuary has " + febDays + " days this year.");
      
      // Display change
      background(backColorLeap);
      textAlign(CENTER, CENTER);
      text("It's Leap Year!!!", width/2, height/2);
      
    } else { 
      
      // Variables
      leapYear = false;
      febDays = 28;
      println("It's not Leap Year this year!");
      
      // Display change
      background(backColorNotLeap);
      textAlign(CENTER, CENTER);
      text("It's not Leap Year :(", width/2, height/2);
      
    }

}

public void switchCaseTask(){ // Task

    // Switch case for adding days to the variable
    switch(month){
        case "January":
          days = 31;
          break;
        case "Febuary": 
          if(leapYear == true){
            febDays = 29;
            break;
          } else {
            febDays = 28;
            break;
          }
        case "March": 
          days = 31;
          break;
        case "April": 
          days = 30;
          break;
        case "May": 
          days = 31;
          break;
        case "June": 
          days = 30;
          break;
        case "July": 
          days = 31;
          break;
        case "August": 
          days = 31;
          break;
        case "September": 
          days = 30;
          break;
        case "October": 
          days = 31;
          break;
        case "November": 
          days = 30;
          break;
        case "December": 
          days = 31;
          break;
     }
     
     // Prints the message.
   if(month == "Febuary"){
     
     println("The month is: " + month + "." + "\nThere are " + febDays + " in this month!");
   
   } else {
   
     println("The month is: " + month + "." + "\nThere are " + days + " in this month!");
   
   }

}
