/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 1

*/

public static color backgroundColor, orange, green;
public static int screenWidth = 900;
public static int screenHeight = 600;

public void setup(){

  // Color setup
  backgroundColor = color(100, 149, 237);
  orange = color(255, 195, 0);
  green = color(80, 200, 120);
  
  // Screen display
  size(900, 600);
  background(backgroundColor);

}

public void draw(){

  if(mouseX >= screenWidth/2){
  
    background(orange);
    
  } else {
  
    background(green);
  
  }
  

}
