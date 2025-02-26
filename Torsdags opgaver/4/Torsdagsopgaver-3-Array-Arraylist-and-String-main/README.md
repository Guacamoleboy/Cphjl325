### Exercises with String, ArrayList and arrays


I dette opgavesæt kan det være nødvendigt at slå op hvordan klasserne [String]( https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/lang/String.html) og [ArrayList](https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/util/ArrayList.html) bruges:


Opgaverne skal ligesom sidste uge, afleveres på moodle, via et link til jeres github repo. 

## Task 1: Pick a random number from an array

1.a Add the following array as a global variable: int[] arr = { 28, 230, 9, 310,72}

1.b. Write a method, <code>getRandom()</code> that returns a random element from the above array.

1.c Add a setup method, from where you will call <code>getRandom()</code>.


---

## Task 2: print et udsnit af et ord

I denne opgave skal du bruge substring metoden fra klassen String. Substring metoden kan man bruge hvis man skal bruge et udsnit af en tekststreng. fx. de tre første bogstaver.(Læs om [substring metoden] (https://beginnersbook.com/2013/12/java-string-substring-method-example/). 

2.a Lav en metode, printPartOfWord(), med tre parametre 
1. ordet der skal findes et udsnit af. 
2. start-index: tallet for det sted udsnittet skal starte 
3. slut-index: tallet for det sted udsnittet skal slutte

Ex: argumenterne "København", 0 og 3  skal give outputtet "Køb". 

2.b Kald metoden fra setup() med passende argumenter og se om den virker. 

2.d Find ud af hvordan du skal ændre kaldet for at få de sidste 4 bogstaver i en hvilken som helst string.

2.e Tjek hvad der sker hvis man kalder metoden med negative værdier. Eller hvor start-index er højere end  end slut index. Nu skal du sikre at metoden giver en passende besked, hvis man kommer til at kalde den med sådanne "forkerte" argumenter.


---

## Task 3: Working with String arrays
In this task you will print out data from two different arrays.

3.a Declare and initialize a String array which we will use to hold the names of five top rappers (or any musical artists of your liking).

3.b Write a for-loop or a for-each loop that prints each name in the array. The output must look like a numbered list.
```
1. Grandmaster Flash
2. Run DMC
...
```

3.c Declare and initialize another String array which we will use to correspondingly hold the hits of the 5 artists in the former array.

3.d Look at the printing statement in step 3.b. Add code that will change the output to something similar to this:
```
1. Grandmaster Flash : "The Message"
2. Run DMC  : "Walk This Way"
...
```

---

## Task 4: Circle objects in array 

4.a Start a sketch and add a setup function, (set the size of the canvas).

4.b Add an array to the sketch that will be holding 10 Circle instances. (Circle being a datatype that you have not yet added)

4.c Write a class called Circle with the attributes (fields) xposition and yposition. 

4.d Add a constructor to the Circle class with parametres for xposition and yposition.

4.e Test the class by creating one Circle object from the <code>setup</code> function. 

4.f Add a method to the Circle class called <code>display()</code>, that will draw a sqare at the position given by the two arguments the instance was created with (xposition and yposition). 

4.g Test the <code>display()</code> -method  by calling it on the instance you created in step 4.e.
<details>
  <summary>Hint</summary>
  <code>circle.display();</code>
</details>

4.h In the sketch main tab, declare an array in global scope called <code>circles</code>.

4.i In the setup function, instead of instantiating only 1 Circle object we need 10. Therefor, use a loop to create the instances. In the call to the constructor, give each instance unique position values, so that they will not be placed at exactly the same spot (experimentation is encouraged).

4.j Add the instances to the <code>circles</code> array. You may do this after instantiation or simultaneously.

4.k Add a method to the Circle class, called move, that adds a value to the x-position and a value to the y-position of the object, then draws the circle again. The values should be passed as parameters into the method.

4.l Test the new method by adding a for-each loop to the draw function, where move is called on each element of the array of Circles. 

4.m OPTIONAL: Add a new class that draws something more complicated than a circle. It too should have a constructor, display and a move method. See if you can make it behave in roughly the same way as the circles.

---

## Task 5: Debugging
In the directory above named "Debugging", there are 10 different small sketches, each of which containing some kind of error. For each of the sketches, try to run it firstly, then have a look at the output and afterwards fix the error. You're done with the sketch, once it prints "Job's done". 

---

## Task 6: Draw a chess board using a nested for loop and a double int array. 
In this task you will create an integer array with 2 dimensions, that holds values of 0, 1, 0, 1, etc. The instructions below will help you get started. 

6.a Create a double int called board[][] with the length of 8 in both arrays. 

6.b In setup() create a double for loop that loops through the board and alternates between assigning the value of 0 and 1 (e.g. board[x][y] = 0;). 
<details>
  <summary>Hint</summary>
  <p>use the modulus operator</p>
</details>


6.c In draw() create a double for loop that loops through the board and draws a rect for each element with the sideLength of 40 (e.g. rect(x * sideLength, y * sideLength, sideLength, sideLength); )

6.d Before drawing the rect in the previous step, add a fill() statement, that fills with the value of 0 if the board[x][y] == 0 and  255 if the the board[x][y] == 1.

---


## Task 7: ArrayList 

- 7.a Create three ArrayLists that can hold the following types and assign at least 3 different values to each of them: 
  - Integer
  - String 
  - Boolean 
  
  <details>
  <summary>Hint</summary>
  <p>ArrayLists can not contain primitive types such as int or boolean. But we can use the Java classes Integer and Boolean instead. We can still add numbers and truth-values to the ArrayLists (for example 17 or false) and we can read the elements from the ArrayList() via <code>get()</code> as ints and booleans. </p>
</details>

- 7.b Write a method that takes an ArrayList of Strings as parameter and prints each String.

 <details>
  <summary>Hint</summary>
  <p>The method-signature might look similar to this:<code>void printList(ArrayList<\String\> listToPrint) </code> </p>
</details>

- 7.c Write a method that receives an ArrayList of Integers as a parameter and returns the sum of all elements in the array.

 <details>
  <summary>Hint</summary>
  <p>The method-signature might look similar to this:<code>int printList(ArrayList<\Integer\> listToPrint) </code> </p>
</details>

- 7.d Write a method that receives an ArrayList of Integers as a parameter and returns the average value. 

---




## Task 8: (optional) sorting arrays
Consider how you could write a method that takes an array (not an ArrayList) of integers as a parameter and returns a new array of the ints sorted from lowest to highest value.



# Other exercises (optional)
If you got stuck or if you finished the above, following are 3 links to exercises, where there is something for all levels.

https://codingbat.com/java 

https://www.codecademy.com/catalog/language/java 
 
https://www.hackerrank.com/domains/java 

https://edabit.com/ 

https://www.programiz.com/java-programming 
