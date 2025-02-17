/*

  Author: CPH-JL325 // Jonas Meinert Larsen
  Version 1.0

*/

// Class
Misc misc = new Misc();
Group groupAdd = new Group();
Animation animationAdd = new Animation();

// variables here
public static boolean changeScreen, startScreen, endScreen;
public static color backgroundColor, mapBackgroundColor, rectEndColorOne, rectEndColorTwo, text, white, black, blackShadow, whiteText;
public static PFont font2, font, fontOutline, quote, quoteOutline, groupTextFont;
public static int mapRectX, mapRectY, mapRectWidth, mapRectHeight, mapRectWidthFixed, mapRectHeightFixed;

// _________________________________________________________________________________________________________

public void setup(){
  
  // Map dimensions
  mapRectX = 50;
  mapRectY = 100;
  mapRectWidth = 900;
  mapRectHeight = 550;
  mapRectWidthFixed = (mapRectWidth/2)+mapRectX;
  mapRectHeightFixed = (mapRectHeight/2)+mapRectY;
  
  // Adds the colors
  white = color(255, 255, 255);
  whiteText = color(237, 234, 222); // Bone
  black = color(0, 0, 0);
  blackShadow = color(0, 0, 0, 210);
  rectEndColorOne = color(204, 85, 0); 
  rectEndColorTwo = color(160, 82, 45);
  text = color(54, 69, 79);
  backgroundColor = color(255, 172, 28); // Orange
  mapBackgroundColor = color(240, 128, 0); // Tangerine
  
  // Sets the booleans
  startScreen = true;
  changeScreen = false;
  endScreen = false;
  
  // Fonts        
  font2 = createFont("Daydream.ttf", 15);   
  font = createFont("Wonderly.otf", 50);
  fontOutline = createFont("Wonderly.otf", 50.3); // Casts a slight shadow
  quote = createFont("Butler_Bold.otf", 40);
  groupTextFont = createFont("Butler_Bold.otf", 25);
  quoteOutline = createFont("Butler_Bold.otf", 40.1); // Casts a slight shadow
          
  // Display
  size(1000, 700);
  background(backgroundColor);
  frameRate(60); // Default
  
  // Smoothens the shapes
  smooth();
  
}

// _________________________________________________________________________________________________________

public void draw(){
  
      if (startScreen){
          
          textFont(fontOutline);
          textAlign(CENTER, CENTER);
          fill(black);
          text("Welcome to the group showcase" + "\n" + "Press a key to continue.." , 500, 350);
          textFont(font);
          fill(whiteText);
          text("Welcome to the group showcase" + "\n" + "Press a key to continue.." , 500, 350);
          
      } 
  
       if (changeScreen){
          
          // Changing the scene by overwriting the old scene
          background(backgroundColor);         
          fill(mapBackgroundColor);    
          strokeWeight(3);
          stroke(black);
          rectMode(CORNER);
          rect(mapRectX, mapRectY, mapRectWidth, mapRectHeight);
          
          // Text above Groups
          textFont(quoteOutline);
          fill(black);
          text("Nunca es tarde para aprender", width/2, mapRectY-50);
          fill(whiteText);
          textFont(quote);
          text("Nunca es tarde para aprender", width/2, mapRectY-50);
          
          misc.centerLine(); // Center line spawn
          groupAdd.groupSpawn(); // Rects
          groupAdd.textSpawn(); // Text in rects
          groupAdd.groupTextSpawn(); // Text above groups
          groupAdd.rectEndSpawn(); // End rects
          groupAdd.flagSpawn(); // Flag in rects
          
          // Animations
          animationAdd.mapAnimation(); // Cool little animation for fun
          
       }
}

// _________________________________________________________________________________________________________

public void mousePressed(){
  
  startScreen = false;
  println("Mouse has been pressed. Changing value to false.");
  changeScreen = true;
  
}

// _________________________________________________________________________________________________________

public void keyPressed(){
  
  startScreen = false;
  println("Key has been pressed. Changing value to false.");
  changeScreen = true;
  
}
