package Task_2;

import java.util.ArrayList;

public class Student extends Person{ // Subclass | Non-abstract as we @Override our abstract super method..

    // Attributes
    protected ArrayList<String> passedCourses;
    protected ArrayList<String> currentCourse;

    public Student(String name, ArrayList<String> passedCourses, ArrayList<String> currentCourse){

        super(name);
        this.passedCourses = passedCourses;
        this.currentCourse = currentCourse;

    } // Constructor

    // _________________________________________________

    @Override
    public boolean addCourse(String course){

        if(passedCourses.contains(course)){
            return false;
        }

        if (!currentCourse.contains(course)){
            currentCourse.add(course);
            return true;
        }

        return false;

    }
}
