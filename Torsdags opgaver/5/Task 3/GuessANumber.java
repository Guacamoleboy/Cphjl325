/*

    Author: CPHJL325 // Jonas Meinert Larsen
    Task 3

    Comments:

    N/A

*/


import java.util.Random;
import java.util.Scanner;  

public class GuessANumber {

    private static int rnd_number;
	
    public static void main(String[] args) {
        // pick a random number
        Random random = new Random();
        rnd_number = random.nextInt(100) + 1;
        System.out.println( "\nI'm thinking of a number between 1 and 100 (including both).");
	    System.out.println( "Can you guess what it is?...\n");
        System.out.println( "____________________________");
        makeAGuess();
    }


    private static void makeAGuess(){

        /*
	    
        Task
        _________

        Create a Scanner object   	 
        use hasNextDouble to check if input is numeric, 
        if so...
	    Read user input
        Compare it with the random number
        Let the user know the result of the comparison
        Let the user try again by calling this method recursively
        Help the user by revealing wether the guess was lower or higher than the target number
        if input was not numeric show an error message and call this method recursively

        */

        Scanner scanner = new Scanner(System.in);

        System.out.println("Please enter a guess:");

        if(scanner.hasNextInt()){ // Double if-statement

            int userGuess = scanner.nextInt(); // int before next if statement.

            if(userGuess < rnd_number){

                System.out.println("Sorry. Your guess was too low. Please try again.");
                makeAGuess(); // Recursion

            } else if (userGuess > rnd_number){

                System.out.println("Your guess was higher than the random number.. Please try again..");
                makeAGuess(); // Recursion

            } else {

                System.out.println("Yay! You guessed the number.. Good job (nerd)");

            }

        } else { // If invalid do this

            System.out.println("Invalid guess...");
            scanner.next(); 
            makeAGuess(); // Recursion

        }

    }
        
}
