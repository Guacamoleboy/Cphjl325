/*

    Author: CPHJL325 // Jonas Meinert Larsen
    Task 4

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

        // using the instantiated GameMenu class to use the method displayMenu()
        gameMenu.displayMenu();


    }


}