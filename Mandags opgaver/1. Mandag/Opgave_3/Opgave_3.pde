
/*

Mandags opgave 3
Lavet af Guacamoleboy (cphjl325)
Fan af: Guacamole

*/

public static color orange, backgroundColor, white, black, red, blue, green, yellow;
public static String madeBy = "Guac."; 
public volatile boolean active = true;

public void setup(){
  
  // variables
  
  backgroundColor = color(0, 130, 255);
  orange = color(255, 165, 0);
  white = color(255, 255, 255);
  black = color(0, 0, 0);
  red = color(174, 13, 18);
  blue = color(0, 180, 255);
  green = color(0, 241, 100);
  yellow = color(255, 190, 0);
  
  // Frame setup
  size(900, 600);
  frameRate(60);
  background(backgroundColor);
  
}

public void draw(){
  
  // Made by
  textSize(32);
  fill(black);
  text(madeBy, 750, 550); // Simply made to illustrate how to load Strings in text() instead of using the original ("", X, X); method.
  
}

public void mousePressed(){
  
  active = true; // Allows multiple presses in the window. Without it'll only allow 1 x press and the program won't work anymore. 
  
  if(active){
    noStroke();
    fill(white); // I know that it has to be blue. I changed it to white because the backgroundColor is blue.
    rectMode(CENTER);
    rect(mouseX, mouseY, 5, 5); // When mouse is pressed it'll spawn the rect at mouseX and mouseY coordinates.
    
  } else {
    println("Progam failed for some reason. Find the bug!");
  }
  
}

public void mouseReleased(){
  
  active = false;
  println("Mouse button released. Changing boolean to " + active + ".");
  
}
