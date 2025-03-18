package Task_1;

public class Product { // Entity class || Super class

    // Attributes
    protected int price;
    protected String name;

    // __________________________________________________

    public Product(String name, int price){

        this.name = name;
        this.price = price;

    } // Constructor

    // __________________________________________________

    public String toString(){

        return "Product name: " + this.name + " | Product price: " + this.price + ".";

    }

} // Entity class end
