/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 1

*/

public static int startNumber = 0;
public static int maxNumber = 30;
public static color black, white;

public void setup(){

  // Color setup
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  
  // Display setup
  size(900, 600);
  background(black);
  
  // Method calling
  printEven();

}

public void draw(){

  

}

public void printEven(){
  
  
  for(int i = -10; i < 21; i++){
  
    if(i < 0){
    println("Negative value");
    break;
    }
    
    int newI = i % 2;
    
    if(newI == 1){
      
    }
    if(newI == 0){
    println(i);
    }
  
  }

}
