class Drinks { // Class

    int price; // Attributes
    String name;

    Drinks(int price, String name) { // Constructor with parameter

        this.price = price;
        this.name = name;
        
    } // Constructor end

    // Method to print the name and price of the drink
    public void printNameAndPrice(){

        System.out.println("Drink: " + name + ", Price: " + price);

    }

} // Class End