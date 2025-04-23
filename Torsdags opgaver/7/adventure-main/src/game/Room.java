package game;

import java.util.ArrayList;

public class Room {

    // Attributes
    private Room northRoom;
    private Room eastRoom;
    private Room southRoom;
    private Room westRoom;

    private String name;
    private String description;
    private ArrayList<Item> items;

    // _____________________________________________

    public Room(String name, String description) {
        this.name = name;
        this.description = description;
        items = new ArrayList<>();
    }

    // _____________________________________________

    public void addItem(Item item) {
        items.add(item);
    }

    // _____________________________________________

    public void addItem(String description) {
        this.addItem(new Item(description));
    }

    // _____________________________________________

    public void addItem(String description, String name) {
        this.addItem(new Item(description, name));
    }

    // _____________________________________________

    public Room getNorthRoom() {
        return this.northRoom;
    }

    // _____________________________________________

    public void setNorthRoom(Room northRoom) {
       this.northRoom = northRoom;
    }

    // _____________________________________________

    public Room getEastRoom() {
        return this.eastRoom;
    }

    // _____________________________________________

    public void setEastRoom(Room eastRoom) {
        this.eastRoom = eastRoom;
    }

    // _____________________________________________

    public Room getSouthRoom() {
        return this.southRoom;
    }

    // _____________________________________________

    public void setSouthRoom(Room southRoom) {
       this.southRoom = southRoom;
    }

    // _____________________________________________

    public Room getWestRoom() {
        return this.westRoom;
    }

    // _____________________________________________

    public void setWestRoom(Room westRoom) {
        this.westRoom = westRoom;
    }

    // _____________________________________________

    public String getName() {
        return name;
    }

    // _____________________________________________

    public String getDescription() {
        return description;
    }

    // _____________________________________________

    public void removeItem(Item item) {
        if (item != null) {
            items.remove(item);
        }
    }

    // _____________________________________________

    public Item findItem(String itemName) {
        for (Item item : items) {
            if (item.getName().equalsIgnoreCase(itemName)) {
                return item;
            }
        }
        return null;
    }

    // _____________________________________________

    public ArrayList<Item> getItems() {
        return items;
    }

}
