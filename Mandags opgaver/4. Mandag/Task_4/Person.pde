public class Person{ // Class // Klasse

  public String name;
  public int age;
  
  Person(){ // Constructor // Konstruktør
  
     name = "Jonas";
     age = (int)random(1, 99); // Random to display more distributes numbers
  
  }
  
    void printPerson(){ // Function // Method
    
      println("Hi. I'm Person One. My name is " + name + ". My age is " + age + ".");
      
    }
    
    String getName(){ // Returns the Name
    
      return name;
    
    }
    
    int getAge(){ // Returns the Age
    
      return age;
    
    }
    
    void increaseAge(){ // Increases the age if called
    
      age++;
    
    }
  
}
