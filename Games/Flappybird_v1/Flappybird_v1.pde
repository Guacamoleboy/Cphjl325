/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Massive fan of: Guacamole
  Version 1.0
  
  Trying to recreate Flappybirds in Progressing. By creating programs I feel like I'm able to 
  learn things faster
  
  TO DO:
  
  1) Figure out why background merges after X-amount of distance moved (DONE)
  2) Make start screen for when game is loaded first time
  3) Make restart IF MIN or MAX Y value has been passed
  4) Add rects with collision. Probably 2-3 rows of rects active at any given time.
  5) Add a game conquered screen!

*/

public static int screenWidth = 600;
public static int screenHeight = 800;
public static int backgroundX = 0; // background X position. Used for animating the background.
public static int backgroundY = 0; // background Y position. Used for animating the background.
public static int borderX = 10;
public static int borderZeroX = 0;
public static int borderZeroY = 0;
public static int borderY = 10;
public static int frmrate = 60; // DEFAULT
public static int scoreCounter = 0;
public static int gameState = 0;
public static int birdBottom = -50;
public static int birdY = screenHeight/2; // Sets the birdY start value to CENTER
public static int velocityY = 1; // Velocity on Y axis. Used for the BIRD.
public PImage backgroundImage, entryImage, birdImage, wallTopImage, wallBottomImage;
public static color backgroundColor, black, blackOpacity, white, whiteOpacity, textColor, gameBorder;
public static boolean startBird = true;
public static boolean failBird = false;
public static boolean resetScreen = false;
public static boolean startScreen = true;
public static boolean gameOn = false;
public static String birdExitScreenMsg = "FAIL!";
public static String versionOfGame = "Version 1.0 - By CPHJL325";
public static PFont gameTextFont, pressToPlay, versionFont;

public void setup(){

  // Colors added
  backgroundColor = color(140, 140, 140);
  black = color(0, 0, 0);
  white = color(255, 255,255);
  gameBorder = color(96, 130, 182);
  whiteOpacity = color(255, 255, 255, 150);
  blackOpacity = color(40, 40, 40, 200);
  
  // Setting up the font used
  gameTextFont = createFont("Jackpot.ttf", 45);
  pressToPlay = createFont("Wonderly.otf", 40);
  versionFont = createFont("Wonderly.otf", 20);
  
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
  frameRate(frmrate); // Default
  
}

public void draw(){
     
     gameActive();
     birdExitBoundaries();
     
}

public void mousePressed(){

    gameState = 0;
    startBird = true;
    gameOn = true;
    velocityY = -16; // Velocity gain per mouse press.

}

public void birdExitBoundaries(){

     if(birdY >= screenHeight){ // If bird exits screen BOTTOM
       
       fill(white);
       startBird = false;
       failBird = true;
       
       // Fail font toggle + text
       textFont(gameTextFont);
       textAlign(CENTER, CENTER);
       text(birdExitScreenMsg, screenWidth/2, (screenHeight/2)-150);
  
       // Score font toggle + text
       textFont(pressToPlay);
       text("Your score was: " + scoreCounter + "\nPress to play again...", screenWidth/2, screenHeight/2);
       
     }
     
     if(birdY <= birdBottom){ // If bird exits screen TOP
     
       startBird = false;
       failBird = true;
       
       // Fail font toggle + text
       textFont(gameTextFont);
       textAlign(CENTER, CENTER);
       text(birdExitScreenMsg, screenWidth/2, (screenHeight/2)-150);
  
       // Score font toggle + text
       textFont(pressToPlay);
       text("Your score was: " + scoreCounter + "\nPress to play again...", screenWidth/2, screenHeight/2);
 
     }

}

public void gameActive(){

if(gameState == 0 && startBird == true && gameOn == true){
     
     imageMode(CORNER);
     image(backgroundImage, backgroundX, backgroundY); // First moved background
     image(backgroundImage, backgroundX+screenWidth, backgroundY); // Merged moved background
     imageMode(CENTER);
     image(birdImage, screenWidth/2, birdY); // Bird animated
     backgroundX = backgroundX -3; // Makes the bird go forward
     velocityY += 1; // Increases drop velocity Y-axis
     birdY += velocityY; // Update bird Y position given the mousePressed amount of times.
     textFont(versionFont);
     text(versionOfGame, screenWidth*0.60, screenHeight*0.98);
     
         if(backgroundX < -screenWidth){ // Basically resets the animated background to 0 (restart to corner) but merged.
           
           backgroundX = 0;
         
         }
   
     } 
     
     if(gameState == 1){
         
         velocityY = 0;
         birdY = screenHeight/2;
         imageMode(CENTER);
         image(entryImage, screenWidth/2, screenHeight/2); // Setting background to static normal / reset
         birdImageLoad();
     }

}

public void startScreen(){

    if(startScreen == true){
    
      textAlign(CENTER, CENTER);
      text("Something", screenWidth/2, screenHeight/2);
      
    }

}

public void birdImageLoad(){

     image(birdImage, screenWidth/2, birdY);

}

public void keyPressed(){
  
  if(key == ' '){ // Allow spacebar to be used (Laptop users)
     
        gameState = 0;
        startBird = true;
        gameOn = true;
        velocityY = -16; // Velocity gain per mouse press.
     
     }

}
