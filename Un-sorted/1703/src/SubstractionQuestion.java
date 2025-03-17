public class SubstractionQuestion extends Question{

    // Attributes

    // ________________________________________________________

    public SubstractionQuestion(String questionText) {

        super(questionText);
        correctAnswer = rnd_nr1 - rnd_nr2;

    }

    // ________________________________________________________

    @Override
    protected void askQuestion() {

        System.out.println(questionText + rnd_nr1 + " - " + rnd_nr2 + "?");


    }

} // Sub class end
