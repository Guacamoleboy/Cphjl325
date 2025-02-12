/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 3
  
  Comments:
  N/A

*/

// Additional
public static int a = 0, b = 0, min = 0, max = 0, x = 0, y = 0, z = 0;

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
  task3A();
  task3B();
  task3C();
  
}
  

public void draw(){
  
}

public void task3A(){ // Task 3.a

  if(a == 10 || b == 10){
  
    println("Great success!");
  
  } else { 
  
    println("Massive fail...");
  
  }
  
}

public void task3B(){ // Task 3.b

  if((min + max) > 10 && (min <= 5 || max <= 5)){
  
    println("Great success!");
  
  } else { 
  
    println("Massive fail...");
  
  }
  
}

public void task3C(){ // Task 3.c
  
  int totalSum = x + y + z;
  
  if(totalSum == 30){
  
     switch(x){
       case 10:
         if(totalSum == 30 && x == 10){
           println("x value is 10. Program failed.");
         }
       break;
       case 20:
         if(totalSum == 30 && x == 20){
           println("x value is 20. Program failed.");
         }
       break;
       case 30:
         if(totalSum == 30 && x == 30){
           println("x value is 30. Program failed.");
         }
       break;
     }
     
     switch(y){
       case 10:
         if(totalSum == 30 && y == 10){
           println("y value is 10. Program failed.");
         }
       break;
       case 20:
         if(totalSum == 30 && y == 20){
           println("y value is 20. Program failed.");
         }
       break;
       case 30:
         if(totalSum == 30 && y == 30){
           println("y value is 30. Program failed.");
         }
       break;
     }
     
     switch(z){
       case 10:
         if(totalSum == 30 && z == 10){
           println("z value is 10. Program failed.");
         }
       break;
       case 20:
         if(totalSum == 30 && z == 20){
           println("z value is 20. Program failed.");
         }
       break;
       case 30:
         if(totalSum == 30 && z == 30){
           println("z value is 30. Program failed.");
         }
       break;
     }
     
     println("Great success!");
    
  } else {
  
    println("Score wasn't 30.. Score was: " + totalSum);
  
  }
  
}
