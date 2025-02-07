
/*

Mandags opgave 1
Lavet af Guacamoleboy (cphjl325)
Fan af: Guacamole

*/

public static color orange, backgroundColor, white, black, red;
public static String madeBy = "Guac."; 

public void setup(){
  
  // variables
  
  backgroundColor = color(0, 130, 255);
  orange = color(255, 165, 0);
  white = color(255, 255, 255);
  black = color(0, 0, 0);
  red = color(255, 0, 0);
  
  // Frame setup
  size(900, 600);
  frameRate(60);
  background(backgroundColor);
  
  // Head
  strokeWeight(5); // Changes the width (weight) of the border
  stroke(white);
  fill(orange);
  ellipse(450, 300, 400, 425); // slighly opal because a face is never fully round
  
  // Eyes
  noStroke();
  fill(white);
  ellipse(525, 250, 75, 75);
  
  noStroke();
  fill(white);
  ellipse(375, 250, 75, 75);
  
  noStroke();
  fill(black);
  ellipse(525, 250, 30, 30);
  
  noStroke();
  fill(black);
  ellipse(375, 250, 30, 30);
  
  // Nose
  fill(black);
  rectMode(CENTER);
  rect(450, 320, 7, 30);
  rect(450, 335, 40, 7);
  
  // Mouth
  noStroke();
  fill(white);
  arc(450, 400, 150, 100, 0, PI);
  
  // Tongue
  fill(red);
  arc(450, 400, 75, 200, 0, PI);
  fill(black);
  rect(450, 450, 2, 100);
  
  // Eyebrows
  noFill();
  strokeWeight(3);
  stroke(black);
  arc(375, 220, 100, 75, PI, TWO_PI); // (x, y, w, h, start angle, end angle)
  
  noFill();
  strokeWeight(3);
  stroke(black);
  arc(525, 220, 100, 75, PI, TWO_PI);
  
  // Made by
  textSize(32);
  fill(black);
  text(madeBy, 700, 500); // Simply made to illustrate how to load Strings in text() instead of using the original ("", X, X); method.
  
}
