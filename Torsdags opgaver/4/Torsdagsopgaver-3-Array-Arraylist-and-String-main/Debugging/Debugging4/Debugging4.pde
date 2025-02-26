boolean jobsDone = true;

void setup()
{
    if (isJobDone())
    {
        println("Job's done!"); 
        
    } else {
    
      println("Job's not done!");
    
    }
}

boolean isJobDone()
{
    return jobsDone;    
}
