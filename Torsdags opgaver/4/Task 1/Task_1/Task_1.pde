/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 1
  
  Comments:
  N/A

*/

int[] arr = {28, 230, 9, 310, 72};

// ______________________________________________________________

public void setup(){

  // Display
  size(900, 600);
  background(150);
  
  // Print
  println(getRandom()); 

}

// ______________________________________________________________

public void draw(){

  // Text

}

public int getRandom(){

  int randomInt = (int)random(arr.length); // Default random is float, so type-casting that to int. This basically returns 1-5.
  return arr[randomInt]; // This prints the value on the random spot from the number above.

}
