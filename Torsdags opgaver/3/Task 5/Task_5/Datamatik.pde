public class Datamatik{

Teacher myTeacher;
Student myStudent;
Student myStudent2;

  Datamatik(){
  
  
  
  } // Constructor end

  public void datamatikSetup(){
    
    myStudent = new Student("Jonas", 26, false, "Vinter 2025");
    myStudent2 = new Student("Andreas", 24, false, "Vinter 2025");
    
    boolean sameTeam = isClassmates(myStudent, myStudent2);
    
    if(sameTeam){
      
      println(myStudent.name + " and " + myStudent2.name + " are on the same team!");
      
    } else {
    
      println(myStudent.name + " and " + myStudent2.name + " are NOT the same team!");
      
    }
    
  }
  
  // __________________________________________________________________________________
  
  public boolean isClassmates(Student myStudent, Student myStudent2){
  
    return (myStudent.datamatikerTeam == myStudent2.datamatikerTeam);
  
  }
  
  // __________________________________________________________________________________
  
} // Class end
