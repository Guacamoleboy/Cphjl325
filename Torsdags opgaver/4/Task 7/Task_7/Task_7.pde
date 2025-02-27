/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 7
  
  Comments:
  N/A

*/

// ArrayList will debug to "null" instead of "0" as [] does.

ArrayList <Integer> listInt = new ArrayList(3); // Default value is 10.
ArrayList <String> listStr = new ArrayList(3);
ArrayList <Boolean> listBoo = new ArrayList(3);

String randomWord = "Guacamole";

// ______________________________________________________________

public void setup(){

  // Display
  size(900, 600);
  background(150);
  
  // Method calling
  addToArraylist();
  
  int s = sumOfInt(listInt);
  println("\nSum of list: " + s);
  
  int a = averageInt(listInt);
  println("\nAverage int: " + a);
  
}

// ______________________________________________________________

public void draw(){

  // Text

}

// ______________________________________________________________

public void addToArraylist(){

  for(int i = 0; i < 3; i++){
  
    listInt.add(i+1); // Int add
    
    String randomStr = randomWord.substring(0, (int)random(randomWord.length()+1)); // Random from a given string. Without +1 it could do 0,0 which would display nothing.
    listStr.add(randomStr);
    
    boolean randomValue = i % 2 == 0 ? true : false; // Modulus to change true || false
    listBoo.add(randomValue);
    
    println(listInt.get(i), listStr.get(i), listBoo.get(i)); // Print
  
  } // For-loop end

} // Method end

// ______________________________________________________________

public int sumOfInt(ArrayList <Integer> listInt){
  
  int sum = 0;
  for(Integer i : listInt){
  
    sum += i;
    
  }
  
  return sum;

}

// ______________________________________________________________

public int averageInt(ArrayList <Integer> listInt){

  int sum = 0;
  for(Integer i : listInt){
  
    sum += i;
    
  }
  
  return sum/listInt.size();

}
