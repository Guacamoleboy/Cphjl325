import java.util.ArrayList;
import java.util.Scanner;

public class GameMenu{ // Entity class

	private ArrayList <String> actions; // Attribute

	public GameMenu(ArrayList <String> actions){ // Constructor with ArrayList as parameter

		this.actions = actions;

	} // Constructor end

	public void displayMenu(){ // Displaying our menu

		for(String action : actions) {

			System.out.println(action);

		} // For-loop end

	} // displayMenu() end

	public String getAction(){

		System.out.println("\nPlease type a number in order to choose an action..");

		for (String action : actions) { // Displaying

			System.out.println(action);

		} // For-loop end

		System.out.println("\nInput:"); // Better visually for the user

		Scanner scanner = new Scanner(System.in);

		String userInput = scanner.nextLine();

		return userInput;

	} // getAction() end


} // Class end