/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 4
  
  Comments:
  You wrote "square" in the task. Assuming you mean an ellipse instead of rect since the Class is called Circle.

*/

Circle[] cl = new Circle[10];

// ______________________________________________________________

public void setup(){

  // Display
  size(900, 600);
  background(150);
  
  for(int i = 0; i < cl.length; i++){
    
    cl[i] = new Circle(); // Without this line we're getting nullPointerException
    
    cl[i].drawCircle((int)random(50, width-50), (int)random(50, height-50), (int)random(0, 200));
  
  }
  
}

// ______________________________________________________________

public void draw(){

  // Text

}
