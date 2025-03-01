/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 8
  
  Comments:
  Forgot to output the sorted array into a new array which is what the task was about.
  Fixed by adding 2 lines.

*/

int[] listOfInt = {1, 3, 90, 5, 4, 3, 2, 6, 77, 66, 41, 1, 150};
int[] listOfIntSorted;


// ______________________________________________________________

public void setup(){

  // Display
  size(900, 600);
  background(150);
  
  sortingMethod();
  
}

// ______________________________________________________________

public void draw(){

  // Text

}

// ______________________________________________________________

public void sortingMethod(){

   listOfIntSorted = sort(listOfInt); // Assigns it to a new array
   println(listOfIntSorted);

}
