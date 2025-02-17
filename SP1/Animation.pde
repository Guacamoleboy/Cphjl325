public class Animation{
  
  int animationBoxX = 50;
  int animationBoxY = 100;
  int maxBoxGainX = 950;
  int maxBoxGainY = 670;
  boolean loopReturn = false;
  
  // _________________________________________________________________________________________________________
  
  public void flagAnimation(){
  
    
 
  } // flagAnimation method end
  
  // _________________________________________________________________________________________________________
  
  public void mapAnimation(){
    
    strokeWeight(2);
    stroke(black);
    fill(white);
    
    for(int i = 0; i < 1; i++){ // Calls 1 x rect and animates it
      
    rect(animationBoxX, animationBoxY-20, 20, 20);
      
    if(animationBoxX < maxBoxGainX && loopReturn == false){ // Right
      
      animationBoxX++;
      
    }
    
    if(animationBoxX >= maxBoxGainX && loopReturn == false){ // Down
      
      animationBoxY++;
      
    }
    
    if(animationBoxY >= maxBoxGainY){ // Left
      
      loopReturn = true;
      animationBoxX--;
      
    }
    
    if(animationBoxX == 30){ // Up
      
      animationBoxY--;
      
    }
    
    if(animationBoxY == 100 && loopReturn == true){ // Boolean change IF a given thing is true
      
      loopReturn = false;
      
    }
    
    }
  
  } // mapAnimation method end

  // _________________________________________________________________________________________________________

} // Class end
