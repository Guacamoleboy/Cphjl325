/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Massive fan of: Guacamole
  Version 1.0
  
  TO DO:
  
  1) Add rects with collision. Probably 2-3 rows of rects active at any given time.
  2) Add a game conquered screen! Hint: if counter > MAX_ALLOWED_COUNTER -> DO THIS

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
public static int birdBottom = -50; // Collision for the bird
public static int birdY = screenHeight/2; // Sets the birdY start value to CENTER
public static int velocityY = 1; // Velocity on Y axis. Used for the BIRD.
public PImage backgroundImage, entryImage, birdImage, wallTopImage, wallBottomImage; // Loading the images. Setting the values in setup();
public static color backgroundColor, black, blackOpacity, white, whiteOpacity, textColor, gameBorder; // Loading the colors. Setting the values in setup();
public static boolean startBird = true;
public static boolean failBird = false;
public static boolean resetScreen = false;
public static boolean startScreen = true;
public static boolean gameOn = false;
public static String birdExitScreenMsg = "FAIL!";
public static String gameLoadMsg = "Flappybirds";
public static String gameLoadMsgTwo = "Use spacebar or your mouse to play...";
public static String versionOfGame = "Version 1.0 - By CPHJL325";
public static PFont gameTextFont, gameTextFontTwo, pressToPlay, versionFont, startScreenFont, pressToPlayTwo; // Fonts!

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
     gameTextFontTwo = createFont("Jackpot.ttf", 35);
     pressToPlay = createFont("Wonderly.otf", 40);
     startScreenFont = createFont("Wonderly.otf", 70);
     versionFont = createFont("Wonderly.otf", 20);
     pressToPlayTwo = createFont("Wonderly.otf", 30);
      
     // Images
     imageMode(CENTER);
     backgroundImage = loadImage("flappy_background_update.jpg");
     wallBottomImage = loadImage("bottomPipe.png");
     wallTopImage = loadImage("topPipe.png");
     wallTopImage.resize(300, 300);
     wallBottomImage.resize(300, 300);
     entryImage = loadImage("flappy_background_update.jpg");
     birdImage = loadImage("lil_flap.png");
     birdImage.resize(50, 50);
      
     // Display setup
     size(600, 800);
     background(backgroundImage);
     frameRate(frmrate); // Default
  
}

public void draw(){
     
     // Remember.. Order is important! TOP -> BOTTOM
     startScreen();
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
       
       // Setting values IF this condition is hit
       startBird = false;
       failBird = true;
       scoreCounter = 0;
       birdY = screenHeight/2; // Allows for respawn / game enable again
       
       // Text alignment
       textAlign(CENTER, CENTER);
       
       // Fail font toggle + text
       textFont(gameTextFont);
       text(birdExitScreenMsg, screenWidth/2, (screenHeight/2)-150);
  
       // Score font toggle + text
       textFont(pressToPlay);
       text("Your score was: " + scoreCounter + "\nPress to play again...", screenWidth/2, screenHeight/2);
      
       
     }
     
     if(birdY <= birdBottom){ // If bird exits screen TOP
     
       // Setting values IF this condition is hit
       startBird = false;
       failBird = true;
       birdY = screenHeight/2; // Allows for respawn / game enable again
       
       // Text alignment
       textAlign(CENTER, CENTER);
       
       // Fail font toggle + text
       textFont(gameTextFont);
       text(birdExitScreenMsg, screenWidth/2, (screenHeight/2)-150);
  
       // Score font toggle + text
       textFont(pressToPlay);
       text("Your score was: " + scoreCounter + "\nPress to play again...", screenWidth/2, screenHeight/2);
       
 
     }

}

public void gameActive(){

     if(gameState == 0 && startBird == true && gameOn == true){
     
       startScreen = false;  
       scoreCounter = 0; // Resets the score counter so a new round can start
       
       // Animated background going right to left
       imageMode(CORNER);
       image(backgroundImage, backgroundX, backgroundY); // First moved background
       image(backgroundImage, backgroundX+screenWidth, backgroundY); // Merged moved background
       
       // Animated bird going up and down with birdY value that changes by mousePressed
       imageMode(CENTER);
       image(birdImage, screenWidth/2, birdY); // Bird animated
       
       backgroundX = backgroundX -3; // Makes the bird go forward
       velocityY += 1; // Increases drop velocity Y-axis
       birdY += velocityY; // Update bird Y position given the mousePressed amount of times.
       textAlign(CORNER);
       textFont(versionFont);
       text(versionOfGame, screenWidth*0.60, screenHeight*0.98);
       
           if(backgroundX < -screenWidth){ // Basically resets the animated background to 0 (restart to corner) but merged.
             
             backgroundX = 0;
           
           }
   
     } 
     
     if(gameState == 1){ // If gameState = 1 do THIS. gamestate 1 is the game isn't active state.
         
       // Variables being set
       startScreen = false;    
       velocityY = 0;
       birdY = screenHeight/2;
         
       // Image of the bird
       imageMode(CENTER);
       image(entryImage, screenWidth/2, screenHeight/2); // Setting background to static normal / reset
       birdImageLoad();
         
       // Text being added (Version 1.0)
       textAlign(CORNER);
       textFont(versionFont);
       text(versionOfGame, screenWidth*0.60, screenHeight*0.98);
     }

}

public void startScreen(){

    if(startScreen == true){
    
      // sets the background to NOT move
      imageMode(CENTER);
      image(entryImage, screenWidth/2, screenHeight/2); // Setting background to static normal / reset
      
      // Text settings for startScreen
      textFont(gameTextFontTwo);
      textAlign(CENTER, CENTER);
      text(gameLoadMsg, screenWidth/2, (screenHeight/2)-150);
      textFont(pressToPlayTwo);
      text(gameLoadMsgTwo, screenWidth/2, (screenHeight/2)-50);
      textFont(versionFont);
      text(versionOfGame, screenWidth/2, (screenHeight/2)+150);
      
    }

}

public void birdImageLoad(){ // Does what you think it does

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
