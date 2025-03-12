package Task_2;

import java.io.*; // Exception etc
import java.util.*; // ArrayList & Scanner

public class Cafe {

    private ArrayList <String[]> coffeeMenu; // String[] allows us to have ID and typeOfCoffee

    public Cafe(){

        // Empty... Could remove but I like it being here.

    } // Constructor end

    // ___________________________________________________________________

    public void loadMenuData(){

        coffeeMenu = new ArrayList<String[]>();

        File file = new File("docs/coffee.csv");
        String header = ""; // Can't be null

        try {

            Scanner scanner = new Scanner(file);
            header = scanner.nextLine(); // Skips header or "line 1" of our .csv file

            while(scanner.hasNextLine()){

                String line = scanner.nextLine().trim(); // Adds trim() to nextLine()
                String[] output = line.split(","); // Telling where and what we use to seperate values

                // Adding String format {} to our ArrayList coffeeMenu
                coffeeMenu.add(new String[]{output[0], output[1]});

            }

        } catch(FileNotFoundException e){

            System.out.println("File not found..");

        } // Try-catch end

        // Visuals
        System.out.println("\nCoffee menu\n");

        // Prints our coffeeMenu (for-each loop)
        for(String[] coffee : coffeeMenu){
            System.out.println("ID: " + coffee[0] + " | Type of Coffee: " + coffee[1]);
        }

    } // loadMenuData() end

} // Entity class end
