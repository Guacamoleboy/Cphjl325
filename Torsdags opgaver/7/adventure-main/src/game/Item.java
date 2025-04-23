package game;

public class Item {

    // Attributes
    private String name;
    private String description;
    private String consumable;
    private String note;

    // _____________________________________________

    public Item(String description) {
        this(description,description.substring(description.lastIndexOf(' ')+1));
    }

    // _____________________________________________

    public Item(String description, String name) {
        this.name = name;
        this.description = description;
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

    public String getConsumable(){
        return this.consumable;
    }

    // _____________________________________________

    public String getNote(){
        return this.note;
    }

    // _____________________________________________

    @Override
    public String toString() {
        return description;
    }

}
