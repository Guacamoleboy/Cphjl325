public class PrintedBook extends Title{ // Subclass

    // Attributes
    private final int pages;

    // ______________________CONSTRUCTOR_______________________

    public PrintedBook(String title, String literatureType, int copies, int pages){

        super(title, literatureType, copies);
        this.pages = pages;

    } // Constructor

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
        }

        return (pages) * value * copies;

    }

    // ________________________GETTER__________________________

    public int getPages(){
        return this.pages;
    }

} // Subclass end
