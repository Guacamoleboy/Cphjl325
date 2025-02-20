/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 6
  
  Comments:
  N/A

*/

public void setup(){

  // Display
  size(900, 600);
  background(50);

  // Method calling
  divisible(2);

}

// ________________________________________________________________

public void draw(){

  //

}

// ________________________________________________________________

public void divisible(int n){

  for(int i = 1; i <= 100; i++){
    
  int isDivisible = i % n;
  
  if(isDivisible == 0){
    
    println(i);
  
  }

  } // For loop end
  
} // divisible method end
