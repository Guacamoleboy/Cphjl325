public class Teacher{

  String name;
  int age;
  boolean isFemale;
  
  Teacher(String tmpName, int tmpAge, boolean tmpIsFemale){
    
    name = tmpName;
    age = tmpAge;
    isFemale = tmpIsFemale;
    
  }
  
  public void changeName(String newName){
  
    println("Name before change " + name);
    name = newName;
    println("Name after change " + name);
    
    /*
    
    Somehow forgot to set name = newName. That's why this is changed after deadline.
    Not sure how that happened but yea.. In case you're wondering.
    
    */
  
  }


}
