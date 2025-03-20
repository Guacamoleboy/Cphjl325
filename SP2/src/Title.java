public abstract class Title { // Superclass

    // Attributes
    private String title;
    private String literatureType;

    // Constant
    protected final double rate = 0.067574;

    // ______________________CONSTRUCTOR_______________________

    public Title(String title, String literatureType){
        this.title = title;
        this.literatureType = literatureType;
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

    public abstract double calculatePoints(); // @Override in subclass for each unique calculatePoints();

    // ________________________________________________________

    public double findCorrectValue(){
        // Our final double value depending on the input
        double value;

        switch (literatureType) {

            case "billedbog":
                value = 3;
                break;
            case "tegneserie":
                value = 3;
                break;
            case "lyrik":
                value = 6;
                break;
            case "skønlit":
                value = 1.7;
                break;
            default:
                value = 1;
        }

        return value;

    }

} // Superclass end
