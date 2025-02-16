public class Person{ // Class // Klasse

  public String name;
  public int age;
  
  Person(){ // Constructor // Konstruktør
  
     name = "Jonas";
     age = (int)random(1, 99);
  
  }
  
    void printPerson(){ // Function // Method
    
      println("Hi. I'm Person One. My name is " + name + ". My age is " + age + ".");
      
    }
    
    String getName(){
    
      return name;
    
    }
    
    int getAge(){
    
      return age;
    
    }
    
    void increaseAge(){
    
      age++;
    
    }
  
}
