import java.lang.*;
import java.util.*;

public class Question { // Super class

    protected String questionText;
    protected Random r1 = new Random();
    protected Random r2 = new Random(); // Sets new random
    protected Scanner s = new Scanner(System.in); // Toggles the Scanner
    protected int correctAnswer;
    protected int userAnswer;
    protected int rnd_nr1;
    protected int rnd_nr2;

    // ________________________________________________________

    public Question(String questionText){

        this.questionText = questionText;
        rnd_nr1 = r1.nextInt(100) + 1; // random number 1
        rnd_nr2 = r2.nextInt(100) + 1; // random number 2

    }

    // ________________________________________________________

    protected void askQuestion() { // Super constructor

        // Not used. We override it under each own class.
        System.out.println();

    }

    // ________________________________________________________

    private void evaluate(){

        System.out.println("What is the correct answer?");
        userAnswer = s.nextInt(); // waits for user input

        // Checks if our userAnswer == correctAnswer. If not -> do THIS
        if(userAnswer == correctAnswer){ // if-else statement

            System.out.println("Correct (nerd)");

        } else {

            System.out.println("Wrong.. Faking noob.");

        } // else end

    }

    // ________________________________________________________

    public void runQuestion(){
        askQuestion();
        evaluate();
    }


} // Super class end
