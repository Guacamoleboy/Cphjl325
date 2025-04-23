package game;

public class Adventure {

    // Attributes
    private Map map;
    private Player player;
    private UserInterface ui = new UserInterface();

    // _____________________________________________

    public Adventure() {
        map = new Map();
        map.buildMap();
        player = new Player();
        player.setCurrentRoom(map.getStartRoom());
    }

    // _____________________________________________

    public void startGame() {
        boolean gameRunning = true;
        ui.printWelcome();

        while (gameRunning) {
            String[] commandString = ui.readInput();
            String firstWord = commandString[0];
            String secondWord = "";
            if (commandString.length > 1) {
                secondWord = commandString[1];
            }

            switch (firstWord) {
                case "inv":
                case "invent":
                case "inventory":
                    ui.showInventory(player);
                    break;
                case "look":
                    ui.describeRoom(player.getCurrentRoom());
                    break;
                case "help":
                case "info":
                    ui.showHelp();
                    break;
                case "quit":
                case "exit":
                case "bye":
                    gameRunning = false;
                    ui.printMessage("Thank you for playing Adventure");
                    break;
                case "go":
                    if (secondWord.isEmpty()) {
                        ui.printMessage("You need to enter a direction!");
                        break;
                    }
                    Direction direction = parseCommand(commandString[1]);
                    goCommand(direction);
                    break;
                case "take":
                    if (player.takeItem(secondWord)) {
                        ui.printMessage("You have taken the " + secondWord);
                    } else {
                        ui.printMessage("There is nothing like " + secondWord + " to take around here.");
                    }
                    break;
                case "drop":
                    if (player.dropItem(secondWord)) {
                        ui.printMessage("You have dropped " + secondWord);
                    } else {
                        ui.printMessage("Seems like you don't have " + secondWord + " to drop!");
                    }
                    break;
                case "use":
                    String usedItem = player.useItem(secondWord);
                    if (usedItem != null) {
                        ui.printMessage(usedItem);
                    } else {
                        ui.printMessage(secondWord + " is not a useable item!");
                    }
                    break;
                default:
                    ui.printMessage("I do not understand that command.");
            }
        }
    }

    // _____________________________________________

    public void goCommand(Direction direction) {
        if (goDirection(direction)) {
            Room currentRoom = getCurrentRoom();
            String name = currentRoom.getName();
            String line = "-".repeat(name.length());
            ui.printMessage(line + "\n" + name + "\n" + line);
            ui.describeRoom(currentRoom);
        } else {
            ui.printMessage("You cannot go in that direction");
        }
    }

    // _____________________________________________

    private Direction parseCommand(String word) {
        Direction requestedDirection = null;
        switch (word) {
            case "n", "north":
                requestedDirection = Direction.NORTH;
                break;
            case "s", "south":
                requestedDirection = Direction.SOUTH;
                break;
            case "e", "east":
                requestedDirection = Direction.EAST;
                break;
            case "w", "west":
                requestedDirection = Direction.WEST;
                break;
        }
        return requestedDirection;
    }

    // _____________________________________________

    public boolean goDirection(Direction direction) {
        return player.move(direction);
    }

    // _____________________________________________

    public Room getCurrentRoom() {
        return player.getCurrentRoom();
    }

}
