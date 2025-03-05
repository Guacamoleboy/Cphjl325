/*

	Author: CPHJL325 // Jonas Meinert Larsen
	Task 1

	Comments:

	Could probably do some for-loops and arrays.

	(1) = Changed so the constructor sets the rank instead of a line of code per rank.

*/

import java.util.ArrayList;
import java.util.Collections;

public class Main{


	public static void main(String[] args){

		Team teamOne = new Team("Team Guac", 5); // (1)
		Team teamTwo = new Team("Team Two", 3);
		Team teamThree = new Team("Team Three", 4);
		Team teamFour = new Team("Team Four", 2);
		Team teamFive = new Team("Team Five", 1);
		Team teamSix = new Team("Team Six", 6);
		
		// teamOne.setRank(5); (1)

		// Adding the players to the teams.
		teamOne.addPlayer("Jonas");
		teamOne.addPlayer("Andreas");

		teamTwo.addPlayer("Ebou");
		teamTwo.addPlayer("Kim");

		teamThree.addPlayer("Sofie");
		teamThree.addPlayer("Yuki");

		teamFour.addPlayer("Urus");
		teamFour.addPlayer("Peru");

		teamFive.addPlayer("Camilla");
		teamFive.addPlayer("Hussain");

		teamSix.addPlayer("Sarah");
		teamSix.addPlayer("Melon");

		// Arraylist named teams which holds the instances

		ArrayList <Team> teams = new ArrayList<Team>();
		teams.add(teamOne);
		teams.add(teamTwo);
		teams.add(teamThree);
		teams.add(teamFour);
		teams.add(teamFive);
		teams.add(teamSix);

		// Sorts from lowest to highest teamRank
      	Collections.sort(teams);

      	// For-loop to print the list
      	for (Team team : teams) {

      		System.out.println(team.toString());

      	}

	}

}