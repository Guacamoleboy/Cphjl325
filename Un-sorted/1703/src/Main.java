import java.util.*; // * means the entire library using the .util

public class Main { // Client class

    public static void main(String[] args) {

        // ArrayList that holds objects of type <Question>
        ArrayList <Question> questions = new ArrayList <Question> ();

        // Adds our question to our ArrayList
        questions.add(new SubstractionQuestion("What is "));
        questions.add(new AdditionQuestion("What is "));
        questions.add(new MultiplicationQuestion("What is "));

        // For-each loop to go through our ArrayList of objects <Question>
        for(Question q : questions){

            q.runQuestion();

            System.out.println(); // Empty line

        } // for-each end

    } // Main end

} // Client class end