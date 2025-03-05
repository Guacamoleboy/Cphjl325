import java.util.ArrayList;

class Team implements Comparable <Team> {

	private String teamName; 
	private int teamRank; 
	private ArrayList <String> teamMembers;

	public Team(String teamName, int teamRank){ // this. means the attribute variable under class Team{}

		this.teamName = teamName;
		this.teamRank = teamRank; // (2)
		this.teamMembers = new ArrayList<>();

	}

	/*public void setRank(int teamRank){ (2)

		this.teamRank = teamRank;

	}*/

	public String toString(){

		return "Team Name: " + teamName + " | Rank: " + teamRank + " | Members: " + teamMembers + ".";

	}

	public void addPlayer(String nameToAdd){

		teamMembers.add(nameToAdd);

	}

    public int compareTo(Team otherTeam) { // Method to compare ranks
        return Integer.compare(this.teamRank, otherTeam.teamRank); 
    }

}