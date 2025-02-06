/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Massive fan of: Guacamole
  Version 1.0
  
  Trying to recreate Flappybirds in Progressing. By creating programs I feel like I'm able to 
  learn things faster.

*/

public static int screenWidth = 600;
public static int screenHeight = 800;
public static int borderX = 10;
public static int borderZeroX = 0;
public static int borderZeroY = 0;
public static int borderY = 10;
public static int frmrate = 60; // DEFAULT
public PImage backgroundImage;
public PImage entryImage;
public PImage birdImage;
public PImage wallTopImage;
public PImage wallBottomImage;
public static color backgroundColor, black, white, textColor, gameBorder;
public static int gameState = 0;
public static int x = -200, y, velocityY = 1;
public static int[] wallX = new int[2];
public static int[] wallY = new int[2];

public void setup(){

  // Variables
  backgroundColor = color(140, 140, 140);
  black = color(0, 0, 0);
  white = color(255, 255,255);
  gameBorder = color(96, 130, 182);
  
  // Images
  imageMode(CENTER);
  backgroundImage = loadImage("flappy_background_update.jpg");
  wallBottomImage = loadImage("flappy_wall.png");
  wallTopImage = loadImage("flappy_wall2.png");
  wallTopImage.resize(300, 300);
  wallBottomImage.resize(300, 300);
  entryImage = loadImage("flappy_background_update.jpg");
  birdImage = loadImage("lil_flap.png");
  birdImage.resize(50, 50);
  
  size(600, 800);
  background(backgroundImage);
  frameRate(60);
  
}

public void draw(){
     
     if(gameState == 0){
     
       imageMode(CORNER);
       image(backgroundImage, x, 0); // Stock background
       image(backgroundImage, x+screenWidth, 0); // Animated frame using the x change value
       image(birdImage, screenWidth/2, y); // Bird
       x -= 6; // Makes the bird go forward
       velocityY += 1;
       y += velocityY;
       
       
       
       
     
     } else {
     
     imageMode(CENTER);
     image(entryImage, screenWidth/2, screenHeight/2); // Setting background to static normal / reset
     
     }
     
}

public void mousePressed(){

    velocityY = -17;

}
