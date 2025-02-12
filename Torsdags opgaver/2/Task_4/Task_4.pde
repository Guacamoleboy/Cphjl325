/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 4
  
  Comments:
  N/A

*/

// Additional
public static int start = 10;

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
  //task4A();
  //task4B();
  //task4C();
  //task4D();
  
}
  
public void draw(){
  
}

public void task4A(){ // Task 4.a

  for(int i = 0; i < 21; i++){
  
    if(i < 20){
    println("Number is.. " + i + " Stopping program at 20");
    }
    if(i == 20){
    println("Number is.. " + i);
    }
  
  }
  
}

public void task4B(){ // Task 4.b

  for(int i = 0; i < 21; i++){
  
    int newI = i % 2;
    
    if(newI == 1){
      
    }
    if(newI == 0){
    println("Number is: " + i);
    }
  
  }
  
}

public void task4C(){ // Task 4.c

  for(int takeOff = 10; takeOff >= 0; takeOff--){
  
    println("Current number is: " + takeOff);
    
      if(takeOff == 0){
    
      println("Take Off!!");
    
      }
  
  }
  
  
}

public void task4D(){ // Task 4.d

  for(int takeOff2 = 10; takeOff2 >= 0; takeOff2--){
        
        switch(takeOff2){
          case 10:
            println("10");
            break;
          case 9:
            println("9");
            break;
          case 8:
            println("8");
            break;
          case 7:
            println("7");
            break;
          case 6:
            println("6");
            break;
          case 5:
            println("5");
            break;
          case 4:
            println("4");
            break;
          case 3:
            println("Three...");
            break;
          case 2:
            println("Two..");
            break;
          case 1:
            println("One..");
            break;
          case 0:
            println("Take off!!");
            break;
        }
  
  }
  
}
