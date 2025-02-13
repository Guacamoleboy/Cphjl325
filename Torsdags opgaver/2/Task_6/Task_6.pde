/*

  Author: CPHJL325 / Jonas Meinert Larsen
  Task 6
  
  Comments:
  N/A

*/

// Additional
public static int time = 1;

// Default
public static color black, white, backgroundTraffic, light1, light2, light3;

public void setup(){

  // Colors
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  backgroundTraffic = color(129, 133, 137);
  
  // Display
  size(900, 600);
  background(black);
  frameRate(3);
  
}
  
public void draw(){
  
  task6();
  
}


public void task6(){ // Task 6

  time++;

  if(time <= 5){
  
    light1 = color(255, 0, 0);
    light2 = color(128, 128, 128);
    light3 = color(128, 128, 128);
  
  }
  
  if(time <= 10 && time > 5){
  
    light1 = color(255, 0, 0);
    light2 = color(255, 191, 0);
    light3 = color(128, 128, 128);
  
  }
  
  if(time <= 20 && time > 10){
  
    light1 = color(128, 128, 128);
    light2 = color(128, 128, 128);
    light3 = color(0, 255, 0);
  
  }
  
  if(time >= 20){
  
    time = 1;
  
  }

  fill(backgroundTraffic);
  stroke(white);
  strokeWeight(5);
  rectMode(CENTER);
  rect(width/2, height/2, 300, 500);
  
  fill(light1);
  ellipse(width/2, height/4, 100, 100);
  fill(light2);
  ellipse(width/2, height/2, 100, 100);
  fill(light3);
  ellipse(width/2, height/1.3, 100, 100);
  
}
