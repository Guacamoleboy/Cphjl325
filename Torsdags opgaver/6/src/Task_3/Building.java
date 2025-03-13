package Task_3;

import java.util.ArrayList;

public class Building { // Entity class

    private ArrayList <Room> rooms;
    private int numberOfFloors;

    public Building(ArrayList <Room> rooms, int numberOfFloors){

        this.rooms = rooms;
        this.numberOfFloors = numberOfFloors;

    } // Constructor end

    // ___________________________________________________________________

    public ArrayList <Room> getRooms(){ // Getter
        return rooms;
    }

    // ___________________________________________________________________

    public int getNumberOfFloors(){ // Getter
        return numberOfFloors;
    }

    // ___________________________________________________________________

    public void setRooms(ArrayList <Room> rooms){ // Setter
        this.rooms = rooms;
    }

    // ___________________________________________________________________

    public void setNumberOfFloors(int n){ // Setter
        this.numberOfFloors = n;
    }




} // Entity class end
