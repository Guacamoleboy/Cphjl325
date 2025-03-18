package Task_1;

/*

     Author: CPHJL325 // Jonas Meinert Larsen
     Task 1

     Comments:
     N/A

*/

import java.time.LocalDate;

public class Main { // Client class

    // Global attributes

    // __________________________________________________

    public static void main(String[] args) {

        // Objects spawn

        // Non-perishable
        Product product1 = new Product("T-shirt", 100);
        Product product2 = new Product("Din mor", 5);

        // LocalDate.parse is needed in order to call our LocalDate from Perishable. String format isnt enough.
        // Perishable
        Product product3 = new Perishable("Pepsi Max", 12, LocalDate.parse("2027-06-25"));

        System.out.println("\n" + product1); // Calls the toString method by default.
        System.out.println(product2);
        System.out.println(product3); // Calls the Overriden toString method in Perishable.java

        // Can't call methods of subclasses if they are not in the superclass. We need this for it to work.
        if(product3 instanceof Perishable){

            Perishable p = (Perishable) product3;
            System.out.println("\nDate now is: " + p.dateNow + " | Product expires: " + p.bestBefore + ".. | Is the date after best before? " + p.isAfterBestBefore());

        } // Downcasting our Perishable in order to print out the true/false method

    } // Main end

} // Client class end