boolean happy = true;

public void setup(){
   
   // Task 2.a
   if (isPersonHappy())
   {
     println("I clap my hands\n");
   }
   else
   {
     println("I don't clap my hands\n"); 
   }
   
   // Task 2.b
   println(task2B(1, 8) + "\n");
   
   // Task 2.c
   println(task2C("text changed to uppercase\n"));
   
   // Task 2.d
   println(task2D("Text"));
   
  
   
   
} // Setup end

// ______________________________________________________________________

public boolean isPersonHappy(){
  // fill out what is missing here: 
  return happy;
}

// ______________________________________________________________________

public int task2B(int a, int b){
  
  return a + b;

}

// ______________________________________________________________________

public String task2C(String textStr){

  return textStr.toUpperCase();

}

// ______________________________________________________________________

public boolean task2D(String textInput){

  return Character.isUpperCase(textInput.charAt(0));
  
}

// ______________________________________________________________________
