/*public class EAudioBook extends NetBook implements IAudioBook{

    // Attributes
    private int durationInMinutes;

    public EAudioBook(String title, String literatureType, int availabiliy, int reach, int use, int durationInMinutes){

        super(title, literatureType, availabiliy, reach, use);
        this.durationInMinutes = durationInMinutes;

    }

    @Override
    public double calculatePoints(){

        // Final value depending on the input
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

        // Using our value to calculate points
        return (durationInMinutes / 2) * value * pages;

    }


}*/
