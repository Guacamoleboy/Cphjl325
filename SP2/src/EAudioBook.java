public class EAudioBook extends NetBook{

    // Attributes
    private int durationInMinutes;

    // ________________________________________________________

    public EAudioBook(String title, String literatureType, int availabiliy, int reach, int use, int characters, int durationInMinutes, boolean illustrated){

        super(title, literatureType, availabiliy, reach, use, characters, illustrated);
        this.durationInMinutes = durationInMinutes;

    }

    // ________________________________________________________

    public double getPseudoPagesEAudioBook(){
        return durationInMinutes / 2;
    }

    // ________________________________________________________

    @Override
    public double calculatePoints(){

        double d = getPseudoPagesEAudioBook() * findCorrectValue() * ((availability * 5) + (reach * 0.5) + use);

        if(illustrated){
            d *= 1.1; // Adds 10% if illustrated
        }

        return  d;

    }


}
