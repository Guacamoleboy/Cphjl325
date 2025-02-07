
/*

Mandags opgave 4
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

public void keyPressed(){
  
  background(white);
  
}

public void mousePressed(){
  
  background(orange);
  
}
