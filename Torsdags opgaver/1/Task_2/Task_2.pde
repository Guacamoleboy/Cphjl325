/* 

  Author: CPHJL325 / Jonas Meinert Larsen
  School Email: cph-jl325@cphbusiness.dk

*/

// Skriv den rette datatype og et passende variabelnavn foran denne værdi: String teacherName= "Tess Løvgreen"

String teacherName = "Tess Løvgreen";
int daysInAYear = 365;
String capitalCityOfDenmark = "København";
boolean something1 = true;
int times = 60*24;
double decimal = 22.12;
boolean something2 = false;
double decimalTwo = 2.2 + 33;
char s = 'S';
String textPlusName = "Hej, jeg hedder "+teacherName;
int frames = 60; // default value but I like declaring it
color backgroundColor, black, white;

public void setup(){
   
   // Adding colors
   backgroundColor = color(115, 147, 179);
   black = color(0, 0, 0); // Could've done 0 as grey scale. I like keeping everything RGB so I'll do it like this
   white = color(255, 255, 255); // Could've done 255 as grey scale.
   
   // Setting up the display
   size(900, 600);
   background(backgroundColor);
   frameRate(frames);
   noLoop();

}

public void draw(){
  
  
   // Testing the variables  
   println(times);  
   println(daysInAYear);  
   println(decimalTwo); 
   println(s);  
   println(textPlusName);
   println(something2);

}
