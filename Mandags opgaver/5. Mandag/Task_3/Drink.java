class Drinks {

    int price;
    String name;

    Drinks(int drinkPrice, String drinkName) {

        price = drinkPrice;
        name = drinkName;
        
    }

    // Method to print the name and price of the drink
    public void printNameAndPrice(){

        System.out.println("Drink: " + name + ", Price: " + price);

    }

} // Class End