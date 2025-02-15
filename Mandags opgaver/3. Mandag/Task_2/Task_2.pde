/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 2

*/

public static int red, green, blue, x, y;
public static color black, white;

public void setup(){

  // Color setup
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  
  // Display setup
  size(900, 600);
  background(black);
  frameRate(1);
  
  // Method calling
  for(int i = 0; i <= 10; i++){
  
     x = (int)random(width*0.3, width*0.7);
     y = x;
     int randomInt = (int)random(5, 15);
     randomColor();
     numberSquared(randomInt); 
  
  }

}

public void draw(){

  

}

public void numberSquared(int diameter){
  
  int newDiameter = diameter * diameter;
  noStroke();
  fill(red, green, blue);
  ellipse(x, y, newDiameter, newDiameter);
  println("Ellipse x and y were: " + x + " " + y + "\nEllipse diameter was: " + newDiameter + "\nColor combo was: " + red + " " + green + " " + blue);
  
}

public void randomColor(){

     red = (int)random(0, 255);
     green = (int)random(0, 255);
     blue = (int)random(0, 255);

}
