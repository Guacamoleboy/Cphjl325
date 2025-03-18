public class MultiplicationQuestion extends Question {

    // Attributes

    // ________________________________________________________

    public MultiplicationQuestion(String questionText) {

        super(questionText);
        correctAnswer = rnd_nr1 * rnd_nr2;

    }

    // ________________________________________________________

    @Override
    protected void askQuestion() {

        System.out.println(questionText + rnd_nr1 + " * " + rnd_nr2 + "?");

    }

} // Sub class end
