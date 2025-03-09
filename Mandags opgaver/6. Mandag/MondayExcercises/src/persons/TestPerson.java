package persons;

public class TestPerson {

    public static void main(String[] args) {

        Person personOne = new Person(26, "Jonas");
        Person personTwo = new Person(24, "Andreas");

        System.out.println("\nTask 1\n");
        System.out.println("Name: " + personOne.getName() + ". | Age: " + personOne.getAge() + ".");
        System.out.println("Name: " + personTwo.getName() + ". | Age: " + personTwo.getAge() + ".");

        personOne.setAge(12);
        personTwo.setAge(33);
        personOne.setName("Narko");
        personTwo.setName("Man");

        System.out.println("\nTask 2\n");
        System.out.println("Name: " + personOne.getName() + ". | Age: " + personOne.getAge() + ".");
        System.out.println("Name: " + personTwo.getName() + ". | Age: " + personTwo.getAge() + ".");

        System.out.println("\nTask 3\n");
        System.out.println(personOne.toString());
        System.out.println(personTwo.toString());


    } // Main end

} // Client class end