/* 

  Author: CPHJL325 / Jonas Meinert Larsen
  School Email: cph-jl325@cphbusiness.dk

*/

int circleSize, x, y, counter, rowCounter, red, green, blue, whiteUsingInt;
int numberOfCircles = 30;
int frames = 60; // default value but I like declaring it
color backgroundColor, black, white;

void setup(){
  
   // Adding colors
   backgroundColor = color(115, 147, 179);
   black = color(0, 0, 0); // Could've done 0 as grey scale. I like keeping everything RGB so I'll do it like this
   white = color(255, 255, 255); // Could've done 255 as grey scale.
   
   // Int colors
   red = 255;
   green = 255;
   blue = 255;
   whiteUsingInt = color(red, green, blue); // Not sure I'm understanding exactly what you want me to do here, Tess.
   
   // Counter values
   counter = 0;
   rowCounter = 0;
   
   // Setting up the display
   size(900, 600);
   background(backgroundColor);
   frameRate(frames);
  
   circleSize = width/numberOfCircles;
   fill(whiteUsingInt);
   ellipseMode(CORNER);
  
}

void draw(){
 
   x = circleSize*counter;
   y = circleSize*rowCounter;
   
   // Un-comment this line after completing step 6.a 
   // fill(red,green,blue);
   
   stroke(5);
   fill(red, green, blue);
   ellipse(x, y, circleSize, circleSize);
  
   // Explaining conditional assignments. 
   // First part before the ?-mark, is a conditional. 
   // If this is true, the value after the ?-mark will be assigned. 
   // If not, the last value will.
   counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
   rowCounter =  counter==0 ? rowCounter+1:rowCounter;
  
   // Explaining the modulus operator
   // Modulus is what is left when you divide one int with another int.
   // 1 % 3 = 1 (3 people can't share 1 apple without cutting it, so 1 apple is left)
   // 2 % 3 = 2
   // 3 % 3 = 0
 
   //Add the code for 6.c here
   
   red = counter==0 ? (int)random(255):red;
   green = counter==0 ? (int)random(255):green;
   blue = counter==0 ? (int)random(255):blue;
   
}
