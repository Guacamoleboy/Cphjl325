import java.lang.*;
import java.util.*;

public class Question { // Super super class

    protected String questionText;
    protected Random r1 = new Random();
    protected Random r2 = new Random();
    protected Scanner s = new Scanner(System.in);
    protected int correctAnswer;
    protected int userAnswer;
    protected int rnd_nr1;
    protected int rnd_nr2;

    public Question(String questionText){

        this.questionText = questionText;
        rnd_nr1 = r1.nextInt(100) + 1;
        rnd_nr2 = r2.nextInt(100) + 1;

    }

    protected void askQuestion() { // super super constructor

        // Prints our question to the user
        System.out.println("What is the correct answer?");
        userAnswer = s.nextInt();

    }

    private void evaluate(){

    // Checks if our userAnswer == correctAnswer. If not -> do THIS
    if(userAnswer == correctAnswer){ // if-else statement

        System.out.println("Correct");

    } else {

        System.out.println("Wrong.. You suck.");

    } // else end

    }


} // Super super class end
