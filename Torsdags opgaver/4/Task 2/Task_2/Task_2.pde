/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 2
  
  Comments:
  N/A

*/

String capitalCityDK = "København";
String randomWord = "jegElskerGuacamole";

// ______________________________________________________________

public void setup(){

  // Display
  size(900, 600);
  background(150);
  
  println(printPartOfWord(capitalCityDK, 0, 3));
  println(task2D(randomWord));
  
}

// ______________________________________________________________

public void draw(){

  // Text

}

public String printPartOfWord(String word, int startIndex, int endIndex){

  if(startIndex < 0 || endIndex < 0){
    
    // Added this to prevent program from crashing
    startIndex = 0;
    endIndex = 0;
    
    println("Error. Enter A Valid Index Span..");
  
  }
  
  return word.substring(startIndex, endIndex);  

}

public String task2D(String word){ // Task 2.D

  return word.substring(word.length()-4, word.length());

}
