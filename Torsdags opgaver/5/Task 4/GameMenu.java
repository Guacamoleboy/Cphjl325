import java.util.ArrayList;

public class GameMenu{ // Entity class


	private ArrayList <String> actions; // Attribute

	public GameMenu(ArrayList <String> actions){ // Constructor with ArrayList as parameter

		this.actions = actions;

	}

	public void displayMenu(){ // Displaying our menu

		for(String action : actions) {

			System.out.println(action);

		}

	}


}