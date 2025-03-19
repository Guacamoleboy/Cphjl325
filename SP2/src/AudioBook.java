public class AudioBook extends Title { // Subclass

    // Attributes
    private int durationInMinutes;

    // ______________________CONSTRUCTOR_______________________

    public AudioBook(String title, String literatureType, int copies, int durationInMinutes){
        super(title, literatureType, copies);
        this.durationInMinutes = durationInMinutes;
    }

    // ________________________________________________________

    @Override
    protected double calculatePoints(){

        double value;

        switch (literatureType) {

            case "billedbog":
                value = billedbog;
                break;
            case "tegneserie":
                value = tegneserie;
                break;
            case "lyrik":
                value = lyrik;
                break;
            case "skønlit":
                value = skønlit;
                break;
            default:
                value = fagbog;
        } // Switch-case end

        return (durationInMinutes / 2) * value * copies;

    } // Method end

} // Subclass end
