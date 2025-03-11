import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Main { // Client class

    public static void main(String[] args) { // Main class

        File file = new File("data/teams.csv");

        try {

            Scanner scan = new Scanner(file);
            scan.nextLine(); // Skips header

            while(scan.hasNextLine()){

                String line = scan.nextLine();
                String[] values = line.split(",");

                // Stores and prints our values
                String groupName = values[0];
                int groupID = Integer.parseInt(values[1].trim()); // trim() is to remove the spacing "   " else it'll fail
                int groupScore = Integer.parseInt(values[2].trim());

                Team t = new Team(groupName, groupID, groupScore);
                System.out.println(t); // Can use t.toString() too.

            } // while end

        } catch (FileNotFoundException e) {

            System.out.println("File not found..");

        } // Try-catch end

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


} // Client class end