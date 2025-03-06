public class Group{ // Class

  // Arrays
  String[] countries = {"Russia", "Saudi Arabia", "Egypt", "Uruguay", "France", "Australia", "Peru", "Denmark", "Portugal", "Spain", "Morocco", "Iran", "Argentina", "Iceland", "Croatia", "Nigeria"};
  
  String[] flagNames = {"russiaFlag.png", "saudiFlag.png", "egyptFlag.png", "uruguayFlag.png", "franceFlag.png", "australiaFlag.png", "peruFlag.png", "denmarkFlag.png",
                    "portFlag.png", "spainFlag.png", "moroccoFlag.png", "iranFlag.png", "argentinaFlag.png", "icelandFlag.png", "croatiaFlag.png", "nigeriaFlag.png"};
                    
  String[] groups = {"Group A", "Group B", "Group C", "Group D"};
  
  // Variables
  int gapOne, gapTwo, gapThree, gapFour;
  
  // _________________________________________________________________________________________________________
  
  public void groupSpawn(){

  // Non-loop
  noStroke();
  rectMode(CORNER);
  fill(white);
  gapOne = 0;
  gapTwo = 0;
  
  // Loop
  for(int i = 0; i < 8; i++){
    
    if(i <= 3){   
      
      rect(75, (150+gapOne), 400, 40);
      rect((width/2 + mapRectX/2), (150+gapOne), 400, 40);
      gapOne += 50;
      
    } 
    
    if(i > 3 && i <= 7){
    
      rect(75, (425+gapTwo), 400, 40);
      rect((width/2 + mapRectX/2), (425+gapTwo), 400, 40);
      gapTwo += 50;
    
    }
  
  } // for-loop end

  } // groupSpawn method end
  
  // _________________________________________________________________________________________________________
  
  public void groupTextSpawn(){

  // Non-loop
  fill(whiteText);
  textFont(groupTextFont);
  
  // Loop
  for(int i = 0; i < 4; i++){
    
    switch(i){
     case 0:
       text(groups[i], 275, 125);
       break;
     case 1:
       text(groups[i], 725, 125);
       break;
     case 2:
       text(groups[i], 275, 400);
       break;
     case 3:
       text(groups[i], 725, 400);
       break;
    }
  
  } // for-loop

  } // groupTextSpawn end
  
  // _________________________________________________________________________________________________________
  
  public void textSpawn(){

  // Non-loop
  textFont(font2);
  fill(text);
  gapOne = 0;
  gapTwo = 0;
  gapThree = 0;
  gapFour = 0;
  
  // Loop
  for(int i = 0; i < 16; i++){
    
    if(i <= 3){   
      
      text(countries[i], 275, (165+gapOne));
      gapOne += 50;
      
    } 
    
    if(i > 3 && i <= 7){
   
      text(countries[i], 725, (165+gapTwo));
      gapTwo += 50;
    
    }
    
    if(i > 7 && i <= 11){
    
      text(countries[i], 275, (440+gapThree));
      gapThree += 50;
    
    }
    
    if(i > 11 && i <= 15){
    
      text(countries[i], 725, (440+gapFour));
      gapFour += 50;
    
    }
  
  } // for-loop end

  } // textSpawn method end
  
  // _________________________________________________________________________________________________________
  
  public void flagSpawn(){

  // Non-loop
  gapOne = 0;
  gapTwo = 0;
  gapThree = 0;
  gapFour = 0;
  // Loop
  for(int i = 0; i < flagNames.length; i++){
    
    PImage img = loadImage(flagNames[i]);
    img.resize(60, 40);
    
    switch(i){
     case 0:
       image(img, 75, 150);
       gapOne += 50;
       break;
     case 1:
       image(img, 75, 150+gapOne);
       gapOne += 50;
       break;
     case 2:
       image(img, 75, 150+gapOne);
       gapOne += 50;
       break;
     case 3:
       image(img, 75, 150+gapOne);
       gapOne += 50;
       break;
     case 4:
       image(img, (width/2 + mapRectX/2), 150+gapTwo);
       gapTwo += 50;
       break;
     case 5:
       image(img, (width/2 + mapRectX/2), 150+gapTwo);
       gapTwo += 50;
       break;
     case 6:
       image(img, (width/2 + mapRectX/2), 150+gapTwo);
       gapTwo += 50;
       break;
     case 7:
       image(img, (width/2 + mapRectX/2), 150+gapTwo);
       gapTwo += 50;
       break;
     case 8:
       image(img, 75, 425+gapThree);
       gapThree += 50;
       break;
     case 9:
       image(img, 75, 425+gapThree);
       gapThree += 50;
       break;
     case 10:
       image(img, 75, 425+gapThree);
       gapThree += 50;
       break;
     case 11:
       image(img, 75, 425+gapThree);
       gapThree += 50;
       break;
     case 12:
       image(img, (width/2 + mapRectX/2), 425+gapFour);
       gapFour += 50;
       break;
     case 13:
       image(img, (width/2 + mapRectX/2), 425+gapFour);
       gapFour += 50;
       break;
     case 14:
       image(img, (width/2 + mapRectX/2), 425+gapFour);
       gapFour += 50;
       break;
     case 15:
       image(img, (width/2 + mapRectX/2), 425+gapFour);
       gapFour += 50;
       break;
    
    } // Switch case end
    
  
  } // for-loop end

  } // flagSpawn method end
  
  public void rectEndSpawn(){

  // Non-loop
  noStroke();
  rectMode(CORNER);
  gapOne = 0;
  gapTwo = 0;
  gapThree = 0;
  gapFour = 0;
  
  for(int i = 0; i < 16; i++){
    
    if(i <= 3){   
      
      fill(rectEndColorOne);
      rect(455, (150+gapOne), 20, 40);
      gapOne += 50;
      
    } 
    
    if(i > 3 && i <= 7){
  
      fill(rectEndColorOne);
      rect(905, (150+gapTwo), 20, 40);
      gapTwo += 50;
    
    }
    
    if(i > 7 && i <= 11){
      
      fill(rectEndColorTwo);
      rect(455, (425+gapThree), 20, 40);
      gapThree += 50;
    
    }
    
    if(i > 11 && i <= 15){
      
      fill(rectEndColorTwo);
      rect(905, (425+gapFour), 20, 40);
      gapFour += 50;
    
    }
  
  } // for-loop end

  } // rectEndSpawn method end

} // Class end
