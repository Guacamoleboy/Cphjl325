public class SubstractionQuestion extends Question{

    public SubstractionQuestion(String questionText) {

        super(questionText);
        correctAnswer = rnd_nr1 - rnd_nr2;

    }

    @Override
    protected void askQuestion() {

        System.out.println(questionText + rnd_nr1 + " - " + rnd_nr2 + "?");

    }

}
