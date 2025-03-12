/*

    Author: CPHJL325 // Jonas Meinert Larsen
    Task 1

    Comments:
    N/A

*/

// Package
package Task_1;

// Util
import java.util.ArrayList;

public class Main { // Client class

    // Global

    public static void main(String[] args) {

    // Arraylist being added using our Class as <> input
    ArrayList <Customer> customers = new ArrayList<Customer>();

    // Adding our new customers..
    customers.add(new Customer("Jonas", "Larsen", "Guacamoleboy"));
    customers.add(new Customer("Andreas", "Rovelt", "Rovelt123"));
    customers.add(new Customer("Dennis", "Larsen", "Fartmachine2000"));

    // Print our getter for ID value 1
    System.out.println("\nID: " + customers.get(1).getID() + " | Firstname: " + customers.get(1).getFirstName());

    // Calling our static method to print our customers using our array in a for-each loop
    System.out.println("\nBefore changes\n");
    printCustomers(customers);

    // Try our setter with ID value 2
    customers.get(2).setNewName("Tess", "Løvgreen", "Lærer");

    // After changes
    System.out.println("\nAfter changes\n");
    printCustomers(customers);

    } // Main end

    public static void printCustomers(ArrayList <Customer> customers){

        for(Customer c : customers){
            System.out.println(c);
        }

    }

} // Client class end