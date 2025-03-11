import java.io.File; // java.io.*
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Main { // Client class

    public static void main(String[] args) { // Main class



    } // Main class end

    // ___________________________________________________________________________

    public static void readPresidents(){

        File file = new File("data/data.csv");

        try {

            Scanner scan = new Scanner(file);
            scan.nextLine(); // Like flush.. Skips the header of our .csv file.

            /*
            Scanner userscan = new Scanner(System.in);
            String userinput = userscan.nextLine();
            */

            while(scan.hasNextLine()){ // While loop for our file
                String line = scan.nextLine();
                String[] values = line.split(","); // values[0], values[1], values[2]
                String country = values[0];
                String capital = values[1];
                String party = values[2];

                System.out.println("Number: " + country + " | Surname: " + capital + " | Party: " + party);

            }

        } catch (FileNotFoundException e) { // Der kan være flere catch på samme try-catch.

            System.out.println("File not found..");

        } // try-catch end

    } // readPresidents method end

    // ___________________________________________________________________________

    public static void teamsMethod(){

        File file = new File("data/teams.csv"); // data/ is just our folder

        try {

            Scanner scan = new Scanner(file);
            scan.nextLine(); // Skips header

            while(scan.hasNextLine()){

                // Splits our .cvs into an array
                String line = scan.nextLine();
                String[] values = line.split(",");

                // Stores our values
                String groupName = values[0];
                int groupID = Integer.parseInt(values[1].trim()); // trim() is to remove the spacing "   " else it'll fail
                int groupScore = Integer.parseInt(values[2].trim());

                // Creates and prints our values
                Team t = new Team(groupName, groupID, groupScore);
                System.out.println(t); // Can use t.toString() too.

            } // while end

        } catch (FileNotFoundException e) { // Always try to catch the specific exception!

            System.out.println("File not found..");

        } // Try-catch end

    } // teamsMethod end

} // Client class end