/*

    Author: CPHJL325 // Jonas Meinert Larsen
    SP2
    Version 1.0

    Comments:

    1) Changed int literatureTypePoints to String literatureType and made it protected.
       It makes no sense having it as int. Private would require that method which was in the Plumel.
       I feel like this makes more sense. Simply to calculate points in the subclass and load from there.

    2) Instead of making the convertLiteratureType() method I've simply added the values as attributes
       to title. They are static and will not change. For that reason there's no reason NOT to make them
       an attribute. This also allows me to calculate points under each subclass.

*/

public class LibraryRoyalityCalculator { // Client class

    // Global attriutes

    // ________________________________________________________

    public static void main(String[] args) {

        Author authorOlga = new Author("Olga Ravn"); // debug
        Author authorJonas = new Author("Jonas Larsen");

        // Adds titles
        AudioBook audioBookOne = new AudioBook("Livet som narkoman", "skønlit", 140, 192); // debug
        AudioBook audioBookTwo = new AudioBook("Java er livet", "fagbog", 600, 520);
        PrintedBook paperBookOne = new PrintedBook("Se min hule", "skønlit", 140, 166); // debug
        PrintedBook paperBookTwo = new PrintedBook("HTML kan noget..", "fagbog", 700, 400);

        // Add to our authors..
        authorOlga.addTitle(audioBookOne); // debug
        authorOlga.addTitle(paperBookOne); // debug
        authorJonas.addTitle(audioBookTwo);
        authorJonas.addTitle(paperBookTwo);

        System.out.println("\nTotal royalties to Olga Ravn: " + authorOlga.calculateTotalPay()); // debug
        System.out.println();
        System.out.println("Total royalties to Jonas Larsen: " + authorJonas.calculateTotalPay());

    } // Main end

} // Client class end