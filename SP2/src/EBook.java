public class EBook extends NetBook {

    public EBook(String title, String literatureType, int availability, int reach, int use, int characters, boolean illustrated){
        super(title, literatureType, availability, reach, use, characters, illustrated);
    }

    @Override
    public double calculatePoints(){

        double d = getPseudoPagesEBook() * findCorrectValue() * ((availability * 5) + (reach * 0.5) + use);

        if(illustrated){
            d *= 1.1; // Adds 10% if illustrated
        }

        return  d;

    }


}
