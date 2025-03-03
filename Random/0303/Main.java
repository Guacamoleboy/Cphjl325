import java.util.Arrays; // Allows us to use Arrays.toString
import java.util.ArrayList; // Allows us to use Arraylist
import java.util.Scanner;

public class Main
{

    public static void main(String[] args)
    {

        /*System.out.println("Hello World 1: " + args[0]);
        System.out.println("Hello World 2: " + args[1]);*/

        Scanner scanner = new Scanner(System.in); // New object from the class Scanner

        System.out.println("Tast din alder herunder");
        String age = scanner.nextLine(); // Scans next int and stores it in age
       
        // scanner.nextLine(); // To fix scanner bug where it skips the 2nd input line and exits the program

        int ageInt;

        try{

            ageInt = Integer.parseInt(age); // Laver String om til int og gemmer værdien

        } catch (NumberFormatException e) { // Kunne kaldes exception, men her specificerer vi den

            System.out.println(e.getMessage()); // Printer vores error message fra vores object "e"
            ageInt = 24;

        }
        

        System.out.println("Tast dit navn herunder");
        String name = scanner.nextLine(); // Scans next String and saves it as name

        System.out.println("\nDit navn er: " + name + " og din alder er: " + ageInt);       
        
    } // Main Method End

} // Class End