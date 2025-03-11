import java.io.File; // java.io.*
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.ArrayList;

public class Main { // Client class

    static ArrayList <Team> teams = new ArrayList<Team>(); // Global scope

    public static void main(String[] args) { // Main class

        //readPresidents();
        teamsMethod();

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
        String header = ""; // Has to have = "" or it won't be initialized

        try {

            Scanner scan = new Scanner(file);
            header = scan.nextLine(); // Skips header

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
                // System.out.println(t); ||| print without ArrayList. Can also use t.toString()
                teams.add(t); // ArrayList add

            } // while end

        } catch (FileNotFoundException e) { // Always try to catch the specific exception!

            System.out.println("File not found..");

        } // Try-catch end

        System.out.println("\nBefore changes:\n");
        for(Team t : teams){ // Print with ArrayList
            System.out.println(t);
        }

        // Sets score
        teams.get(2).setScore(20);
        teams.get(1).setScore(5);
        teams.get(0).setScore(-1);

        System.out.println("\nAfter changes:\n");
        for(Team t : teams){ // Print with ArrayList
            System.out.println(t);
        }

        // Saves data without header
        saveData(header);

    } // teamsMethod end

    // ___________________________________________________________________________

    public static void saveData(String header){ // Saves our data in our .csv file

        try {

            FileWriter writer = new FileWriter("data/teams.csv");

            writer.write(header + "\n"); // Header

            for (Team t : teams){

                writer.write(t.toCSV() + "\n"); // prints correct syntax in CSV format

            }

            writer.close();

        } catch (IOException e){

            System.out.println("Error");

        }

    } // saveData method end

} // Client class end