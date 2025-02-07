/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 3

*/

public static color backgroundColor, orange, green, black, white;
public static int screenWidth = 900;
public static int screenHeight = 600;
public static boolean lightOn = false;
public static boolean lightOff = false;
public static boolean keyFail = false;
public static PFont font;

public void setup(){

  // Color setup
  backgroundColor = color(100, 149, 237);
  orange = color(255, 195, 0);
  green = color(80, 200, 120);
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  
  // Screen display
  size(900, 600);
  background(backgroundColor);
  
  // Fonts
  font = createFont("Wonderly.otf", 40);
  textFont(font);

}

public void draw(){
 
  
    background(black);
    textAlign(CENTER, CENTER);
    text("T = Turn on lights!\nO = Turn off lights!", screenWidth/2, screenHeight/2);
  
  if(lightOn == true && lightOff == false && keyFail == false){
  
    background(white);
    fill(orange);
    ellipseMode(CENTER); // Default. I like setting default values.
    ellipse(screenWidth/2, screenHeight/2, 100, 100);
  
  } 
  
  if(lightOff == true && lightOn == false){
  
    background(black);
  
  }
  
}

public void keyPressed(){
  
  if(key == 't'){
  
    lightOn = true;
    lightOff = false;
  
  } 
  
  if(key == 'o'){
  
    lightOff = true;
    lightOn = false;
  
  } 

}
