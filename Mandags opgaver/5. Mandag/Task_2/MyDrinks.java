import java.util.Arrays; // Allows us to use Arrays.toString
import java.util.ArrayList; // Allows us to use Arraylist

public class MyDrinks {

    public static void main(String[] args) {

        ArrayList <String> drinks = new ArrayList <String> (); // Without <String> in new ArrayList it gives "unsafe" error.

        drinks.add("Pepsi Max");
        drinks.add("Coca Cola");
        drinks.add("Dr. Pepper");
        drinks.add("Faxe Kondi");
        drinks.add("Faxe Kondi Booster");
        drinks.add("Monster Energy");

        for(String s : drinks){
            
            System.out.println(s);

        }
          
        
    } // Main Method End

} // Class End