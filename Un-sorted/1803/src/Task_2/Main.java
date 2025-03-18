package Task_2;

/*

     Author: CPHJL325 // Jonas Meinert Larsen
     Task 2

     Comments:
     N/A

*/

import java.util.ArrayList;

public class Main{ // Client class

    // Global attributes

    // _________________________________________________

    public static void main(String[] args){

        // ArrayLists
        ArrayList<Person> persons = new ArrayList<>();
        ArrayList<String> passedCoursesJava = new ArrayList<>();
        ArrayList<String> passedCoursesHTML = new ArrayList<>();
        ArrayList<String> currentCoursesTess = new ArrayList<>();
        ArrayList<String> currentCoursesTine = new ArrayList<>();
        ArrayList<String> canTeachTine = new ArrayList<>();
        ArrayList<String> canTeachTess = new ArrayList<>();
        ArrayList<String> currentCoursesT1 = new ArrayList<>();
        ArrayList<String> currentCoursesT2 = new ArrayList<>();

        // Add default
        passedCoursesJava.add("Java 1.0");
        passedCoursesHTML.add("HTML");
        canTeachTess.add("Java 1.0");
        canTeachTine.add("HTML");

        persons.add(new Student("Jonas", passedCoursesJava, currentCoursesTess));
        persons.add(new Student("Kim", passedCoursesHTML, currentCoursesTine));
        persons.add(new Teacher("Tess", canTeachTess, currentCoursesTess));
        persons.add(new Teacher("Tine", canTeachTine, currentCoursesTine));

        for (Person person : persons){ // For-each loop

            boolean add = person.addCourse("Java 1.0"); // Adds Java 1.0 to all persons

            if(!add){ // if false == do this

                if(person instanceof Student){ // downcast to check Student.java

                    System.out.println(person.getName() + " has already passed..");

                } else if (person instanceof Teacher) { // downcast to check Teacher.java

                    System.out.println(person.getName() + " can't teach this..");

                } // if-else if end

            } // if-else end

        } // for-each loop end

    } // Main end

} // Client class end