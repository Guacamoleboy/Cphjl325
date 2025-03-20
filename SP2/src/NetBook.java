public abstract class NetBook extends Title {

    // Attributes
    protected int availability;
    protected int reach;
    protected int use;
    protected int characters;
    protected boolean illustrated;

    // ________________________________________________________

    public NetBook(String title, String literatureType, int availability, int reach, int use, int characters, boolean illustrated){
        super(title, literatureType);
        this.availability = availability;
        this.reach = reach;
        this.use = use;
        this.characters = characters;
        this.illustrated = illustrated;
    }

    // ________________________________________________________

    protected double getPseudoPagesEBook(){
        return (characters/1800) + 20;
    }

    // ________________________________________________________

    public int getUseFactor(){
        return this.use;
    }

    // ________________________________________________________

    public abstract double calculatePoints(); // Allows next (Subclass) to have their own calculations

}
