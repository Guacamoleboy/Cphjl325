
/*

Mandags opgave 2
Lavet af Guacamoleboy (cphjl325)
Fan af: Guacamole

*/

public static color orange, backgroundColor, white, black, red, blue, green, yellow;
public static String madeBy = "Guac."; 

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
  
  // Size and border of the flag
  fill(red);
  strokeWeight(3);
  stroke(black);
  rectMode(CENTER);
  rect(450, 300, 500, 350);
  
  // Colors and shapes of the flag
  fill(yellow);
  noStroke();
  rectMode(CENTER);
  rect(451, 300, 497.5, 150);
  
  // Flag pole
  rectMode(CENTER);
  noStroke();
  fill(black);
  rect(185, 350, 30, 550);
  
  fill(black);
  noStroke();
  arc(185, 100, 60, 60, PI, TWO_PI); // (x, y, w, h, start angle, end angle)
  
  // Crown image load
  PImage spainImg;
  spainImg = loadImage("spainFlag.png");
  spainImg.resize(225, 150);
  image(spainImg, 200, 220);
  
  // Made by
  textSize(32);
  fill(black);
  text(madeBy, 750, 550); // Simply made to illustrate how to load Strings in text() instead of using the original ("", X, X); method.
  
}
