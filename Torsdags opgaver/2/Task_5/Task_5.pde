/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 5
  
  Comments:
  N/A

*/

public static boolean weekend = false;

void setup(){
  
  methodOne(); 
  methodTwo(); 
  
}


// The following method has an error in it. Fix the error and run it. 

public void methodOne(){
  
    int i = 1000; // You are not allowed to change this line. 
    int max = 10;
    
    if (i > max)
    {
      String output = "i is greater than " + max + " .";   
      println(output);
    }
   
}

/* 

  Finish the following method so that we can change the number assigned 
  to the weekday and it prints the correct output.  
  
*/

public void methodTwo(){
  
    int weekDay = 0; // 0 = Monday, 6 = Sunday. 
    
    if (weekDay < 5)
    {
      weekend = false;
    }
    else 
    {
      weekend = true;
    }
    
    // Print the name of the weekday here: 
    
    switch(weekDay){
      case 0:
        println("It's Monday!");
        break;
      case 1:
        println("It's Tuesday!");
        break;
      case 2:
        println("It's Wednesday!");  
        break;
      case 3:
        println("It's Thursday!");
        break;
      case 4:
        println("It's Friday & weekend starts now!");
        break;
      case 5:
        println("It's Saturday & weekend!");
        break;
      case 6:
        println("It's Sunday.. :/ New week tomorrow!");
        break;
    }
      
    // Print if it is weekend here:
    
      println("It's weekend today: " + weekend);
  
}
