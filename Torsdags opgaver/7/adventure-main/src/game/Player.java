package game;

import java.util.ArrayList;
import java.util.List;

public class Player {

    // Attributes
    private Room currentRoom;
    private ArrayList<Item> inventory;

    // _____________________________________________

    public Player() {
        inventory = new ArrayList<>();
    }

    // _____________________________________________

    public Room getCurrentRoom() {
        return currentRoom;
    }

    // _____________________________________________

    public void setCurrentRoom(Room startRoom) {
        this.currentRoom = startRoom;
    }

    // _____________________________________________

    public boolean move(Direction direction) {
        Room requestedRoom = null;

        switch (direction) {
            case NORTH:
                requestedRoom = currentRoom.getNorthRoom();
                break;
            case SOUTH:
                requestedRoom = currentRoom.getSouthRoom();
                break;
            case EAST:
                requestedRoom = currentRoom.getEastRoom();
                break;
            case WEST:
                requestedRoom = currentRoom.getWestRoom();
                break;
        }

        if (requestedRoom != null){
            setCurrentRoom(requestedRoom);
            return true;
        }

        return false;
    }

    // _____________________________________________

    public List<Item> getInventory() {
        return inventory;
    }

    // _____________________________________________

    public boolean takeItem(String itemName) {

        Item pickupFromRoom = currentRoom.findItem(itemName);

        if (pickupFromRoom != null) {
            inventory.add(pickupFromRoom);
            currentRoom.removeItem(pickupFromRoom);
            return true;
        }

        return false;

    }

    public boolean dropItem(String itemName) {
        Item item = findItem(itemName);
        if (item != null) {
            currentRoom.addItem(item.getDescription(), item.getName());
            inventory.remove(item);
            return true;
        }
        return false;
    }

    public String useItem(String itemName) {
        Item item = findItem(itemName);
        String message = null;
        if (item != null) {
            if (item.getConsumable() != null) {
                switch (item.getConsumable()) {
                    case "EAT":
                        message = "You ate: " + item.getName();
                        break;
                    case "DRINK":
                        message = "You drank: " + item.getName();
                        break;
                    case "READ":
                        return item.getNote(); //No item should be removed
                    case "default":
                        message = "ERROR!";
                        break;
                }
            }
            inventory.remove(item);
        }
        return message;
    }

    private Item findItem(String itemName) {
        for (Item item : inventory) {
            if (item.getName().equals(itemName)) {
                return item;
            }
        }
        return null;
    }

}
