import java.util.*;

public class Author { // Entity class

    // Attributes
    private String name;
    private ArrayList <Title> titles;

    // ______________________CONSTRUCTOR_______________________

    public Author(String name){
        this.name = name;
        this.titles = new ArrayList<>();
    }

    // ________________________________________________________

    public void addTitle(Title title){
        titles.add(title);
    }

    // ________________________________________________________

    public float calculateTotalPay(){

        float total = 0;

        for(Title title : titles){ // for-each loop

            /*
            debug cuz I'm getting incorrect values..
            double debugRoyalty = title.calculateRoyalty();
            System.out.println(title + "Royalty: " + debugRoyalty);
            */

            total += title.calculateRoyalty();
        }

        //System.out.println("Total: " + total); // debug

        return total;
    }

    // ________________________GETTER__________________________

    public String getName(){
        return this.name;
    }

    // ________________________________________________________

    public String toString(){
        return "Author: " + name + " | Titles: " + titles.size();
    }

} // Entity class end
