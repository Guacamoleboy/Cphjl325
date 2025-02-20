/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 4
  
  Comments:
  N/A

*/

Datamatik dataInfo = new Datamatik();
Teacher teacherInfo = new Teacher("Tess", 50, true);

public void setup(){

  // Display
  size(900, 600);
  background(50);

  // Class calling
  dataInfo.datamatikSetup();
  teacherInfo.changeName("Tine");

}

public void draw(){

  //

}
