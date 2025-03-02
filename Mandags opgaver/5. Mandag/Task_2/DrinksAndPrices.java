import java.util.ArrayList;

public class DrinksAndPrices {

    public static void main(String[] args) {

        // ArrayList that holds Drinks objects
        ArrayList<Drinks> myDrinks = new ArrayList<Drinks>();

        // Adding Drinks objects to the list
        myDrinks.add(new Drinks(30, "Pepsi Max"));
        myDrinks.add(new Drinks(40, "Dr. Pepper"));
        myDrinks.add(new Drinks(20, "Coca Cola"));
        myDrinks.add(new Drinks(25, "Faxe Kondi"));

        // Looping through the list and printing each drink's details
        for (Drinks drink : myDrinks) {
            System.out.println("Drink: " + drink.name + ", Price: " + drink.price);
        }

    }
}