import java.util.*;

public class Main { // Client class

    public static void main(String[] args) {

        ArrayList <Question> questions = new ArrayList <Question> ();

        questions.add(new SubstractionQuestion("What is "));
        questions.add(new AdditionQuestion("What is "));
        questions.add(new MultiplicationQuestion("What is "));

        for(Question q : questions){

            q.runQuestion();
            System.out.println(); // Empty line

        }

    } // Main end

} // Client class end