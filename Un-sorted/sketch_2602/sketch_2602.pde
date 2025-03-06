/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Date: 26/02
  
  Comments:
  N/A

*/

// Arrays
int[] arr = new int[10]; // 10 x 0 values

// Arraylist
ArrayList <Integer> al = new ArrayList(); // Default is 10. Add value in () to change the default value. <String> <Boolean> <Char> etc.

// Variables
int q;

public void setup(){

  // Display
  size(900, 600);
  background(150);
  
  // Add Array
  arr[1] = 3;
  q = arr[2];
  
  // Add Arraylist
  al.add(1);
  al.add(1, 3); // Spot, value on spot
  
  for(int i = 0; i < 8; i++){ // For-loop for Arraylist al
  
    al.add(i);
    
  }
  
  for(int n = 0; n < al.size(); n++){
  
    /* 
    
    If we didn't add <Integer> in the Arraylist then we would have to add
    <int> to set it to the correct type. See (1).
    
    */
    int value = al.get(n); // (1) <int> al.get(n);
    println("Index: " + n + " Value: " + value);
  
  }
  
  for(Integer k : al){
  
    println(k);
  
  }

}

public void draw(){

  // Something

}
