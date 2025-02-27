/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 6
  
  Comments:
  N/A

*/

int[][] board = new int[8][8];
int sideLength = 40, colors;

// ______________________________________________________________

public void setup(){

  // Display
  size(320, 320); // sideLength * 8 = (320, 320)
  background(150);
  
  drawChess();
  
}

// ______________________________________________________________

public void draw(){

  // Text

}

// ______________________________________________________________

public void drawChess(){
  
  for (int i = 0; i < board.length; i++) {
    
    for (int n = 0; n < board[i].length; n++) {
      
      board[i][n] = (i + n) % 2; // Modulus of i + n
      
      colors =  board[i][n] == 0 ? 0 : 255; // i + n % 2 = true : false
   
      // Display
      fill(colors);
      rect(i*sideLength, n*sideLength, sideLength, sideLength);
      
    } // For-loop 2 end
    
  } // For-loop 1 end

  
 
} // drawChess method end
