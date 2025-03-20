public class PrintedBook extends Title{ // Subclass

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

        // Our final double value depending on the input
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

        // Using our value to calculate points
        return (pages) * value * copies;

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
