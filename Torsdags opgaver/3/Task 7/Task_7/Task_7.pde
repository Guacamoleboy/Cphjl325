/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 7
  
  Comments:
  N/A

*/

public void setup(){

  // Display
  size(900, 600);
  background(50);

  // Method calling
  recursion(10);

}

// ________________________________________________________________

public void draw(){

  //

}

// ________________________________________________________________

public void recursion(int n){

  println(n);
   n--;
   if (n > 0) {
     recursion(n);
   }
  
} // recursion method end
