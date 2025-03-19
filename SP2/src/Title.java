public abstract class Title { // Superclass

    // Attributes
    private String title;
    protected String literatureType; // Changed from private to protected
    protected int copies;

    // Constant values. Not adding a switch-case as calculateLiteratureType. It seems dumb.
    protected double rate = 0.067574;
    protected final int billedbog = 3;
    protected final int tegneserie = 3;
    protected final int lyrik = 6;
    protected final double skønlit = 1.7;
    protected final int fagbog = 1;

    // ______________________CONSTRUCTOR_______________________

    public Title(String title, String literatureType, int copies){

        this.title = title;
        this.literatureType = literatureType;
        this.copies = copies;

    }

    // ________________________________________________________

    public double calculateRoyalty(){
        return calculatePoints() * rate;
    }

    // ________________________GETTER__________________________

    public String getTitle(){
        return this.title;
    }

    // ________________________SETTER__________________________

    public void setTitle(String title){
        this.title = title;
    }

    // ________________________________________________________

    protected abstract double calculatePoints(); // @Override in subclass for each unique calculatePoints();


} // Superclass end
