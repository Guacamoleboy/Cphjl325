package Task_1;

public class Customer { // Entity class

    private String firstName;
    private String lastName;
    private String username;
    private int id;
    private static int counter;

    public Customer(String firstName, String lastName, String username){

        this.firstName = firstName;
        this.lastName = lastName;
        this.username = username;
        this.id = counter++; // static variable being called

    } // Constructor end

    // ___________________________________________________________________

    @Override
    public String toString(){
        return "Firstname: " + this.firstName + " | Lastname: " + this.lastName + " | Username: " + this.username + " | ID: " + this.id + ".";
    }

    // ___________________________________________________________________

    public void setNewName(String newFirstName, String newLastName, String newUsername){ // Setter.. ID stays the same
        this.firstName = newFirstName;
        this.lastName = newLastName;
        this.username = newUsername;
    }

    // ___________________________________________________________________

    public String getFirstName(){
        return this.firstName;
    }

    // ___________________________________________________________________

    public String getLastName(){
        return this.lastName;
    }

    // ___________________________________________________________________

    public String getUsername(){
        return this.username;
    }

    // ___________________________________________________________________

    public int getID(){
        return this.id;
    }

} // Entity class end
