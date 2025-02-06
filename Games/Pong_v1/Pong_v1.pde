/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Version 1.0
  Massive fan of: Guacamole!
  
  Still needs:
  
  Collision for the pong boards to fully work. Need to calculate where Y is. Currently works for X.
  If ellipse and pong board == same spot COLLISION. Else point + restart.
  
  Pong boards need to be limited to the boarder. Don't allow them to go past the blue border.

*/

public static int screenWidth = 1280;
public static int screenHeight = 800;
public static int borderX = 10;
public static int borderZeroX = 0;
public static int borderZeroY = 0;
public static int borderY = 10;
public static int ballWidth = 30;
public static int ballHeight = 30;
public static int pongWidth = 20;
public static int pongHeight = 110;
public volatile int ballX = screenWidth/2;
public volatile int ballY = screenHeight/2;
public static int fmrate = 60;
public static int ballSpeedX = 4;
public static int ballSpeedY = 4;
public static color backgroundColor, black, white, orange, textColor, gameBorder, whiteOpacity;
public volatile boolean border = true;
public volatile boolean startScreen = true;
public volatile boolean changeScene = false;
public volatile boolean movingLeft = true;
public volatile boolean movingRight = true;
public volatile boolean movingDown = true;
public volatile boolean movingUp = true;
public volatile int red = 255;
public volatile int green = 255;
public volatile int blue = 255;
public volatile float pongLeftStartX = screenWidth*0.05;
public volatile float pongRightStartX = screenWidth*0.95;
public volatile int pongLeftStartY = screenHeight/2;
public volatile int pongRightStartY = screenHeight/2;
public static int pongResetY = screenHeight/2;
public static int borderBottom = 770;
public static int borderTop = 30;
public static int borderLeft = 0;
public static int borderRight = 1280;
public static int counterRightSide = 0;
public static int counterLeftSide = 0;
public static String playerName = "Player";
public static String enemyName = "Computer";
public static PFont font, scoreFont, userFont;

public void setup(){

  backgroundColor = color(115, 147, 179);
  textColor = color(192, 192, 192); // 50 shades of grey (joke)
  black = color(0, 0 , 0);
  white = color(255, 255, 255);
  whiteOpacity = color(255, 255, 255, 120);
  orange = color(255, 195, 0);
  gameBorder = color(96, 130, 182);
  
  size(1280, 800);
  background(black);
  frameRate(fmrate);

}

public void draw(){
    
   startScreen = true;
  
   if(startScreen){
   
     // Setting the font   
     font = createFont("Wonderly.otf", 50);
     scoreFont = createFont("Boldern.ttf", 50);
     userFont = createFont("Boldern.ttf", 20);
     textFont(font);
     background(black);
     textAlign(CENTER, CENTER);
     fill(textColor);
     text("Welcome to Pong! \n Press any key to continue...", screenWidth/2, screenHeight/2);
     
   }
   
   if(changeScene){
     
     background(black);
     
      // Adding the score. Doesn't support stroke for some reason. It's fine.
     textFont(scoreFont);
     fill(whiteOpacity);
     textAlign(CENTER); // This enables me to use the + and - in the x position of the text. Without it wouldn't line up.
     text(counterLeftSide, (screenWidth/2)-90, 100);
     text(counterRightSide, (screenWidth/2)+90, 100);
     textFont(userFont);
     text(enemyName, (screenWidth/2)+90, 130);
     text(playerName, (screenWidth/2)-90, 130);
     
     // Adding border to make the game look better
     fill(gameBorder);
     noStroke();
     rectMode(CORNER);
     rect(borderZeroX, borderZeroY, screenWidth, screenHeight*0.02);
     rect(borderZeroX, screenHeight*0.98, screenWidth, screenHeight*0.02);
     /*rect(borderZeroX, borderZeroY, screenWidth*0.01, screenHeight);
     rect(screenWidth*0.99, borderZeroY, screenWidth*0.01, screenHeight);*/
     
     // Adding the ball
     fill(red, green, blue);
     noStroke();
     ellipseMode(CENTER); // Default. Just declaring it.
     ellipse(ballX, ballY, ballWidth, ballHeight);
     
     // Adding the "pongs" or whatever they are called
     fill(white);
     noStroke();
     rectMode(CENTER);
     rect(pongLeftStartX, pongRightStartY, pongWidth, pongHeight); // Right (User)
     rect(pongRightStartX, pongLeftStartY, pongWidth, pongHeight); // Left (CPU)
     
     // Calling the center line
     centerLineMethod();
     
     // Changing the direction of the pong (Y-Axis with static X)
     
     if (keyPressed == true && key == 'w'){
         
           pongLeftStartY = pongLeftStartY-5;
         
     }
     
     if (keyPressed == true && keyCode == UP){
         
           pongRightStartY = pongRightStartY-5;
         
     }
     
     if (keyPressed == true && keyCode == DOWN){
         
           pongRightStartY = pongRightStartY+5;
         
     }
     
     if (keyPressed == true && key == 's'){
         
           pongLeftStartY = pongLeftStartY+5;
       
     }
     
     // Changing the directions
     if (movingRight == true){
     
           ballX = ballX + ballSpeedX;
     
     } else {
     
           ballX = ballX - ballSpeedX;
     
     }
     
     if (movingDown == true){
     
           ballY = ballY + ballSpeedY;
     
     } else {
     
           ballY = ballY - ballSpeedY;
           
     }
     
     
     // Y-axis collision
     if(ballY <= borderTop){ // Top border. If ball Y position is less or equal to borderTop = change boolean to true;
     
       movingDown = true;

     }
     
     if(ballY >= borderBottom){ // Bottom border. If ball Y position is less or equal to borderBottom = change boolean to false;
     
       movingDown = false;
     
     }
     
     // X-axis collision
     if(ballX >= borderRight){ // Right border. If ball X position is bigger or equal to borderRight = change boolean to false;   
       
       counterLeftSide++;
        
       // Respawns the ball in the center IF right border is hit
       ballX = screenWidth/2;
       ballY = screenHeight/2;
       //pongLeftStartY = pongResetY;
     
     }
     
     if(ballX <= borderLeft){ // Left border. If ball X position is bigger or equal to borderLeft = change boolean to false;     
       
       counterRightSide++;
       
       // Respawns the ball in the center IF left border is hit
       ballX = screenWidth/2;
       ballY = screenHeight/2;
       //pongLeftStartY = pongResetY;
      
     }
     
     // Collision for the "pong boards" or whatever you want to call them.
     
     //Right
     if(ballX >= 1200){
     
       movingRight = false;
       
     }
     
     //Left
     if(ballX <= 80){
     
       movingRight = true;
       
     }
     
   } 
}

public void centerLineMethod(){

     // Adding the center line
     for(int i = 40; i < screenHeight*0.98; i = i+40){
       
       int centerLine = screenWidth/2;
       fill(whiteOpacity);
       noStroke();
       rect(centerLine, i, 10, 20);
       
     } 

}

public void mousePressed(){

  startScreen = false;
  changeScene = true;

}

public void keyPressed(){

  startScreen = false;
  println("User has pressed: " + key);
  changeScene = true;
  
}
