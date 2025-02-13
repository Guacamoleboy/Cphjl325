/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 8
  
  Comments:
  N/A

*/

int min = 0;
int max = 100;

size(900, 600);
frameRate(60);

while(min < max){
  
  min++;
  
  int randomNumberRed = (int)random(0, 255);
  int randomNumberGreen = (int)random(0, 255);
  int randomNumberBlue = (int)random(0, 255);
  int randomX = (int)random(0, 900);
  int randomY = (int)random(0, 600);
  int randomSize = (int)random(50, 200); // Ellipse so both width and height should be the same to make a square.

  fill(randomNumberRed, randomNumberGreen, randomNumberBlue);
  strokeWeight(3);
  ellipse(randomX, randomY, randomSize, randomSize);
  
  if(min >= max){
    println("Max reached. Stopping ellipse spawning.");
  }
  
}
