/*

    Author: CPHJL325 // Jonas Meinert Larsen
    Task 5

    Comments:

    N/A

*/

import java.util.ArrayList;

public class Main{ // Client class

    public static void main(String[] args){

        ArrayList <String> actions = new ArrayList <String> ();

        // Adding the Strings to the ArrayList
        actions.add("\n1) Start game");
        actions.add("2) Resume game");
        actions.add("3) Pause game");
        actions.add("4) End game");

        // Instantiating the GameMenu class with our actions as argument
        GameMenu gameMenu = new GameMenu(actions);

        String user = gameMenu.getAction();

        // Try-catch for user-input.
        int actionNumber;

        try{

            actionNumber = Integer.parseInt(user);

        } catch (NumberFormatException e) {

            System.out.println("Invalid input.");
            return;

        }

        // Method calling
        doAction(actionNumber);


    } // Main end

    public static void doAction(int action){

        switch(action){

        case 1:
            System.out.println("Starting the game now");
            break;
        case 2:
            System.out.println("Fetching previously saved game data");
            break;
        case 3:
            System.out.println("Game paused");
            break;
        case 4:
            System.out.println("Ending game");
            break;
        default:
            System.out.println("Invalid");
            break;

        } // Switch-case end

    } // doAction() end

} // Class end