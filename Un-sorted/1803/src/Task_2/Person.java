package Task_2;

public abstract class Person { // Superclass

    // Attributes
    protected String name;

    // _________________________________________________

    public Person(String name){

        this.name = name;

    } // Constructor end

    // ___________________GETTER________________________

    public String getName(){
        return this.name;
    }

    // ___________________SETTER________________________

    public void setName(String newName){
        this.name = newName;
    }

    // _________________________________________________

    public abstract boolean addCourse(String course); // dummy

} // Entity class end
