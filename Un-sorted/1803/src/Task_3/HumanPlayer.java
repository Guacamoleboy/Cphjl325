package Task_3;

import java.util.Scanner;

public class HumanPlayer implements Player {

    private Scanner scanner;

    public HumanPlayer(){
        this.scanner = new Scanner(System.in);
    }

    @Override
    public int guessANumber(int min, int max){
        int guess;

        do{
            System.out.println("Enter a number from " + min + " to " + max + "..");
            while(!scanner.hasNextInt()){
                System.out.println("Invalid");
                scanner.next();
            }
            guess = scanner.nextInt();
        } while (guess < min || guess > max);

        return guess;
    }


}
