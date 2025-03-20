public class AudioBook extends PhysicalBook { // Subclass

    // Attributes
    private int durationInMinutes;

    // ______________________CONSTRUCTOR_______________________

    public AudioBook(String title, String literatureType, int copies, int durationInMinutes){
        super(title, literatureType, copies);
        this.durationInMinutes = durationInMinutes;
    }

    // ________________________________________________________

    @Override
    public double calculatePoints(){

        // Moved switch-case to Title as its own method.

        // Using our value to calculate points
        return (durationInMinutes / 2) * findCorrectValue() * copies;

    } // Method end

} // Subclass end
