public class Datamatik{

Teacher myTeacher;
Student myStudent;
Student myStudent2;

public void datamatikSetup(){

  myTeacher = new Teacher("Tess", 20, true);
  myStudent = new Student("Jonas", 26, false, "Vinter 2025");
  myStudent2 = new Student("Andreas", 24, false, "Vinter 2025");
  
  println("My teachers name is " + myTeacher.name + ".");
  println("Student name " + myStudent.name + ". We are from team " + myStudent.datamatikerTeam + ".");
  println("Student two name " + myStudent2.name + ". We are from team " + myStudent2.datamatikerTeam + ".");
  
}

}
