import java.time.LocalDate;

public class Perishable extends Product { // Subclass

    // Attributes
    protected LocalDate bestBefore;
    protected LocalDate dateNow = LocalDate.now();

    // __________________________________________________

    public Perishable(String name, int price, LocalDate bestBefore){

        super(name, price);
        this.bestBefore = bestBefore; // Local

    } // Contructor

    // __________________________________________________

    @Override // Overrides our super toString method
    public String toString(){

        String s = super.toString(); // Calls our super toString method first and stores in a String
        return s + ".. Product expires: " + this.bestBefore + ".";

        /*

        Could do it like this aswell..
        return "Product name: " + this.name + " | Product price: " + this.price + " | Product expires: " + this.bestBefore + ".";

        */
    }

    // __________________________________________________

    public boolean isAfterBestBefore(){

        return dateNow.isAfter(this.bestBefore); // Checks current date is after bestBefore date

    }

}
