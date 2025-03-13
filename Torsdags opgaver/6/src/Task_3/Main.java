/*

    Author: CPHJL325 // Jonas Meinert Larsen
    Task 3

    Comments:
    N/A

*/

// Package
package Task_3;

// Util
import java.util.*;

public class Main { // Client class

    // Global

    public static void main(String[] args) {

        // Adding 3 new rooms
        Room roomOne = new Room(5, 10);
        Room roomTwo = new Room(10, 5);
        Room roomThree = new Room(50, 24);

        // Adds our rooms to a collection (ArrayList)
        ArrayList<Room> rooms = new ArrayList<Room>();
        rooms.add(roomOne);
        rooms.add(roomTwo);
        rooms.add(roomThree);

        // Adds our building
        Building building = new Building(rooms, rooms.size());
        Building testBuilding = new Building(rooms, 10); // Abnormal as floors > rooms

        // Visual
        System.out.println("\nBuilding information:\n");

        // Testing output
        System.out.println("Total lamps: " + countLampsInBuilding(building));
        System.out.println("Total windows: " + countWindowsInBuilding(building));
        System.out.println("Total rooms: " + countRoomsInBuilding(building));
        System.out.println("Normal building: " + isNormal(building));
        //System.out.println("Test system: " + isNormal(testBuilding));

    } // Main end

    // ___________________________________________________________________

    public static int countLampsInBuilding(Building building){

        int totalNumberOfLamps = 0; // Needs 0 or it'll fail

        for (Room room : building.getRooms()){
            totalNumberOfLamps += room.getNumberOfLamps();
        }

        return totalNumberOfLamps;

    }

    // ___________________________________________________________________

    public static int countWindowsInBuilding(Building building){

        int totalNumberOfWindows = 0; // Needs 0 or it'll fail

        for (Room room : building.getRooms()){
            totalNumberOfWindows += room.getNumberOfWindows();
        }

        return totalNumberOfWindows;

    }

    // ___________________________________________________________________

    public static int countRoomsInBuilding(Building building){

        return building.getRooms().size(); // Size of our room ArrayList

    }

    // ___________________________________________________________________

    public static boolean isNormal(Building building){

        // Checks for abnormal / normal buildings
        int numberOfFloors = building.getNumberOfFloors();
        int numberOfRooms = building.getRooms().size();

        return numberOfFloors <= numberOfRooms;

    }

} // Client class end