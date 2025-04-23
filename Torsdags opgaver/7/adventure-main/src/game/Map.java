package game;

public class Map {

    // Attributes
    private Room startRoom;

    // ________________________________

    public void buildMap() {

        Room room1 = new Room("Outside", "forrest outside a cave - the cave-entrance splits in two different directions.");
        Room room2 = new Room("Narrow cave", "narrow cave that seems to bend up and down almost infinitely");
        Room room3 = new Room("Large grotto", "large grotto with an opening very far above where sunlight shines through.");
        Room room4 = new Room("Wet cave", "Unit test fix");
        Room room5 = new Room("5", "noget");
        Room room6 = new Room("6", "noget");
        Room room7 = new Room("7", "noget");
        Room room8 = new Room("8", "noget");
        Room room9 = new Room("9", "noget");
        room1.addItem("an old rusty flashlight");
        room1.addItem("a crinkly paper map with a big X in the middle", "map");
        room3.addItem("a wicker bird cage");

        room1.setEastRoom(room2);
        room1.setSouthRoom(room4);
        room2.setEastRoom(room3);
        room3.setSouthRoom(room6);
        room6.setSouthRoom(room9);
        room9.setWestRoom(room8);
        room8.setWestRoom(room7);
        room8.setNorthRoom(room5);
        room7.setNorthRoom(room4);
        room4.setNorthRoom(room1);

        startRoom = room1;
    }

    public Room getStartRoom() {
        return startRoom;
    }

}
