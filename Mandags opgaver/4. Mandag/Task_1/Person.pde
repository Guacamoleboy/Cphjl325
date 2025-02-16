public class Person{ // Class // Klasse

  public String nameOne, nameTwo;
  public int ageOne, ageTwo;
  
  Person(){ // Constructor // Konstruktør
  
     nameOne = "Jonas";
     ageOne = 26;
     nameTwo = "Makan";
     ageTwo = 25;
  
  }
  
    void printPersonOne(){ // Function // Method
    
      println("Hi. I'm Person One. My name is " + nameOne + ". My age is " + ageOne + ".");
      
    }
    
    void printPersonTwo(){
    
      println("Hi. I'm Person Two. My name is " + nameTwo + ". My age is " + ageTwo + ".");
      
    }
  
}
