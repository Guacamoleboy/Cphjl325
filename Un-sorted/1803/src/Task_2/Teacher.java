package Task_2;

import java.util.ArrayList;

public class Teacher extends Person { // Subclass | Non-abstract as we @Override our abstract super method..

    // Attributes

    protected ArrayList<String> canTeach;
    protected ArrayList<String> currentCourses;

    // _________________________________________________

    public Teacher(String name, ArrayList<String> canTeach, ArrayList<String> currentCourses){

        super(name);
        this.canTeach = canTeach;
        this.currentCourses = currentCourses;

    } // Constructor

    // _________________________________________________

    @Override
    public boolean addCourse(String course){

        if(!canTeach.contains(course)){
            return false;
        }

        if(!currentCourses.contains(course)){
            currentCourses.add(course);
            return true;
        }

        return false;

    }

}
