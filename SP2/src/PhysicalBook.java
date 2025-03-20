public abstract class PhysicalBook extends Title {

    // Attributes
    protected int copies;

    public PhysicalBook(String title, String literatureType, int copies){
        super(title, literatureType);
        this.copies = copies;
    }

    public abstract double calculatePoints(); // Allows next (Subclass) to have their own calculations

}
