import java.util.*;

public class Main { // Client class

    public static void main(String[] args) {

        ArrayList <Question> questions = new ArrayList <Question> ();

        Question q1 = new SubstractionQuestion("Hvad er ");
        Question q2 = new AdditionQuestion("Hvad er ");
        Question q3 = new MultiplicationQuestion("Hvad er ");

        questions.add(q1);
        questions.add(q2);
        questions.add(q3);

        for(Question q : questions){

            System.out.println(q);

        }




    } // Main end

} // Client class end