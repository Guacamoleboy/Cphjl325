public class AdditionQuestion extends Question{

    protected int correctAnswer;

    public AdditionQuestion(String questionText) {

        super(questionText);
        correctAnswer = rnd_nr1 + rnd_nr2;

    }

    protected void askQuestion() {

        System.out.println(questionText + rnd_nr1 + " + " + rnd_nr2 + "?");

    }

}
