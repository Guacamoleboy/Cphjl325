public class Team { // Entity class

    private String name;
    private int groupID;
    private int score;

    // ___________________________________________________________________________

    public Team(String name, int groupID, int score){ // Constructor

        this.name = name;
        this.groupID = groupID;
        this.score = score;

    } // Constructor end

    // ___________________________________________________________________________

    @Override
    public String toString(){ // Prints out our groups

        return "Name of group: " + name + " ID: " + groupID + " Score: " + score;

    } // toString end

    // ___________________________________________________________________________

    public void setScore(int points){

        this.score += point;

    }

} // Entity class end
