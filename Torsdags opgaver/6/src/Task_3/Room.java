package Task_3;

public class Room { // Entity class

    private int numberOfLamps;
    private int numberOfWindows;

    public Room(int numberOfLamps, int numberOfWindows){

        this.numberOfLamps = numberOfLamps;
        this.numberOfWindows = numberOfWindows;

    } // Constructor end

    // ___________________________________________________________________

    public int getNumberOfLamps(){ // Getter
        return numberOfLamps;
    }

    // ___________________________________________________________________

    public int getNumberOfWindows(){ // Getter
        return numberOfWindows;
    }

    // ___________________________________________________________________

    public void setNumberOfLamps(int n){ // Setter
        this.numberOfLamps = n;
    }

    // ___________________________________________________________________

    public void setNumberOfWindows(int n){ // Setter
        this.numberOfWindows = n;
    }

} // Entity class end
