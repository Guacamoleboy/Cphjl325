/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 3
  
  Comments:
  N/A

*/

String[] names = {"Seafret", "Ruth B", "Chelsea Cutler", "Bazzi", "Ruelle"};
String[] songNames = {"Atlantis", "Dandelions", "Men On The Moon", "Young & Alive", "Live Like Legends"};

// ______________________________________________________________

public void setup(){

  // Display
  size(900, 600);
  background(150);
  
  printStrings();
  
}

// ______________________________________________________________

public void draw(){

  // Text

}

// ______________________________________________________________

public void printStrings(){

  for(int i = 0; i < names.length; i++){
  
    println(i+1 + ". " + names[i], "| " + songNames[i]);
    
  }  

}
