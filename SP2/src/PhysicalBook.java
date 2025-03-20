public abstract class PhysicalBook extends Title {

    // Attributes
    protected int copies;

    // ________________________________________________________

    public PhysicalBook(String title, String literatureType, int copies){
        super(title, literatureType);
        this.copies = copies;
    }

    // ________________________________________________________

    public abstract double calculatePoints(); // Allows next (Subclass) to have their own calculations

}
