public class PrintedBook extends PhysicalBook{ // Subclass

    // Attributes
    private int pages;

    // ______________________CONSTRUCTOR_______________________

    public PrintedBook(String title, String literatureType, int copies, int pages){

        super(title, literatureType, copies);
        this.pages = pages;

    } // Constructor

    // ________________________________________________________

    @Override
    public double calculatePoints(){

        // Moved switch-case to Title as its own method.

        // Using our value to calculate points
        return (pages) * findCorrectValue() * copies;

    }

    // ________________________GETTER__________________________

    public int getPages(){
        return this.pages;
    }

    // ________________________SETTER__________________________

    public void setPages(int pages){
        this.pages = pages;
    }

} // Subclass end
