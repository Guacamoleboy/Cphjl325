package Task_3;

/*

     Author: CPHJL325 // Jonas Meinert Larsen
     Task 3

     Comments:
     N/A

*/

import java.util.Random;

public class Main{

    // Attributes

    // __________________________________________________

    public static void main(String[] args){

        int min = 1;
        int max = 100;

        Random random = new Random();
        int tn = random.nextInt((max-min) + 1) + min;

        Player human = new HumanPlayer();
        Player computer = new ComputerPlayer();

        boolean hasAWinner = false;

        while (!hasAWinner){

            int humanGuess = human.guessANumber(min, max);

            if (humanGuess == tn){

                System.out.println("Correct guess.. Number was: " + tn);
                hasAWinner = true;
                break;

            } else if (humanGuess < tn) {

                System.out.println("Too low papi");

            } else {

                System.out.println("Too high papi");

            }

            int computerGuess = computer.guessANumber(min, max);

            System.out.println("Computer has guessed " + computerGuess);

            if (computerGuess == tn){

                System.out.println("Computer guessed correct.. Number was " + tn);
                hasAWinner = true;
                break;

            } else if (computerGuess < tn){

                System.out.println("too low");

            } else {

                System.out.println("too high");

            }

        } // While end

    } // Main end

} // Client class end