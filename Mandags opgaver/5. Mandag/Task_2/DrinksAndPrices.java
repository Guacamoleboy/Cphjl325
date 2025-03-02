import java.util.ArrayList;

public class DrinksAndPrices {

    public static void main(String[] args) {

        ArrayList<Drinks> myDrinks = new ArrayList<Drinks>();

        myDrinks.add(new Drinks(30, "Pepsi Max"));
        myDrinks.add(new Drinks(40, "Dr. Pepper"));
        myDrinks.add(new Drinks(20, "Coca Cola"));
        myDrinks.add(new Drinks(25, "Faxe Kondi"));

        for (Drinks drink : myDrinks) {
            System.out.println("Drink: " + drink.name + ", Price: " + drink.price);
        }

    }
}