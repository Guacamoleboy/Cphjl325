public class Square{ // Class

  int sideLength, xPos, yPos;

  Square(int tmpLength){ // Constructor
  
    sideLength = tmpLength;
  
  } // Constructor end
  
  public int getArea(){ // getArea method
  
  int area = sideLength * sideLength;
  return area;
  
  } // Method end
  
  public void display(float x, float y){ // Display method
  
    rect(x, y, sideLength, sideLength);
  
  }
  
  


} // Class end
