/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 2

*/

public static color backgroundColor, orange, green, black, white;
public static int screenWidth = 900;
public static int screenHeight = 600;

public void setup(){

  // Color setup
  backgroundColor = color(100, 149, 237);
  orange = color(255, 195, 0);
  green = color(80, 200, 120);
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  
  // Screen display
  size(900, 600);
  background(orange);

}

public void draw(){
  
}

public void keyPressed(){

  if(key == 'w'){
  
    background(orange);
    fill(black);
    rectMode(CENTER);
    rect(screenWidth/2, screenHeight/2, 200, 200);
    
  } else {
  
    background(green);
    fill(black);
    ellipseMode(CENTER);
    ellipse(screenWidth/2, screenHeight/2, 200, 200);
  
  }

}
