boolean jobsDone = true;

// _________________________________________________

void setup()
{
    println(isValueGreaterThanThreshold(10, 5));
    println(isValueGreaterThanThreshold(4, 8));
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}

// _________________________________________________

public boolean isValueGreaterThanThreshold(int value, int threshold) {
  
    if (value > threshold) 
    {
      return true; 
      
    }
    
    return false;
    
}

// _________________________________________________

public boolean isJobDone(){
  
    return jobsDone;
    
}
