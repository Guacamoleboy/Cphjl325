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

        return "Task_1.Product name: " + this.name + " | Task_1.Product price: " + this.price + ".";

    }

} // Entity class end
