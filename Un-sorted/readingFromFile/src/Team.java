public class Team {

    private String name;
    private int groupID;
    private int score;

    public Team(String name, int groupID, int score){

        this.name = name;
        this.groupID = groupID;
        this.score = score;

    } // Constructor end

    @Override
    public String toString(){ // Prints out our groups
        return "Name of group: " + name + " ID: " + groupID + " Score: " + score;
    }



} // Entity class end
