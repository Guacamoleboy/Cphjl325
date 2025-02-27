public class Circle{

  int xPos, yPos;
  
  public void drawCircle(int xPos, int yPos, int size){
  
    fill((int)random(255));
    ellipse(xPos, yPos, size, size);
  
  }

} // Class end
