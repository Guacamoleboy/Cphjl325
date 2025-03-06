/*

  Author: CPHJL325 // Jonas Meinert Larsen
  Task 1
  
  Comments:
  N/A

*/

// CLass calling
Square ourSquare = new Square(100);
Square mySquare = new Square(50);
Square[] squares = new Square[5];

// Arrays
int[] months = {30, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
String[] groupMembers = {"Du", "Må", "Ikke", "Slå"};
int[] sales = new int[5];

public void setup(){

  // display
  size(900, 600);
  background(150);
  
  // Square spawn
  /*mySquare.display(width/2, height/2);
  ourSquare.display(random(width), random(height));
  
  println("Stort kvadrat area " + ourSquare.getArea() + ".");
  println("Lille kvadrat area " + mySquare.getArea() + ".");*/
  
  //salesMethod();
  //monthMethod();
  //groupMethod();
  squareMethod();
  
}

public void salesMethod(){

  for(int i = 0; i < sales.length; i++){
  
    sales[i] = i+1;
    println(sales[i]);
  
  }

}

public void monthMethod(){

  for(int n: months){
  
     println(n);
  
  }

}

public void groupMethod(){

  for(String n: groupMembers){
  
     println(n);
  
  }

}

public void squareMethod(){

  for(int i = 0; i < squares.length; i++){
  
     mySquare.display(random(width), random(height));
  
  }

}
