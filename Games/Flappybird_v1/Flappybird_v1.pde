/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Massive fan of: Guacamole
  Version 1.0
  
  Trying to recreate Flappybirds in Progressing. By creating programs I feel like I'm able to 
  learn things faster
  
  TO DO:
  
  1) Figure out why background merges after X-amount of distance moved
  2) Make start screen for when game is loaded first time
  3) Make restart IF MIN or MAX Y value has been passed
  4) Add rects with collision. Probably 2-3 rows of rects active at any given time.
  5) Add a game conquered screen! (nerds lol)
  

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
public static int birdBottom = -50;
public static int screenX = -1, birdY = screenHeight/2, velocityY = 1;
public static int[] wallX = new int[2];
public static int[] wallY = new int[2];
public static boolean startBird = true;
public static boolean failBird = false;

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
     
     if(gameState == 0 && startBird == true){
     
       imageMode(CORNER);
       image(backgroundImage, screenX, 0); // Stock background
       image(backgroundImage, screenX+screenWidth, 0); // Animated frame using the x change value
       imageMode(CENTER);
       image(birdImage, screenWidth/2, birdY); // Bird. Spawns CENTER, CENTER. Need it to ONLY start moving when mousePressed or keyPressed == spacebar
       screenX -= 4; // Makes the bird go forward
       velocityY += 1; // Increases drop velocity Y-axis
       birdY += velocityY; // Update bird Y position given the mousePressed amount of times.
     
     } else { // if startBird == false DO THIS. Basically make the player press mousePressed to activate game once again. This is the restart screen.
     
     velocityY = 0;
     birdY = screenHeight/2;
     imageMode(CENTER);
     image(entryImage, screenWidth/2, screenHeight/2); // Setting background to static normal / reset
     image(birdImage, screenWidth/2, birdY);
     
     }
     
     birdExitBoundaries();
     
}

public void mousePressed(){

    velocityY = -16; // Velocity gain per mouse press.

}

public void birdExitBoundaries(){

     if(birdY >= screenHeight){ // If bird exits screen BOTTOM
     
       startBird = false;
       failBird = true;
     
     }
     
     if(birdY <= birdBottom){ // If bird exits screen TOP
     
       startBird = false;
       failBird = true;
     
     }

}
