public class AdditionQuestion extends Question{

    // Attributes

    // ________________________________________________________

    public AdditionQuestion(String questionText) {

        super(questionText);
        correctAnswer = rnd_nr1 + rnd_nr2;

    }

    @Override
    protected void askQuestion() {

        System.out.println(questionText + rnd_nr1 + " + " + rnd_nr2 + "?");

    }

} // Sub class end
