/*

    Author: CPHJL325 // Jonas Meinert Larsen
    SP2
    Version 2.0

    Comments:

    1) Bit confusing Plumel Diagram but we've talked about that.

    2) The formula / formulatext under SP2 was wrong. Reach and availability was swapped.

    3) Not sure what u meant with getPseudoCopies. I assume you mean pages. I've done it like that atleast.

    4) Didn't add the interface. Made it without.


*/

public class LibraryRoyalityCalculator { // Client class

    // Global attriutes

    // ________________________________________________________

    public static void main(String[] args) {

        // Create authors
        Author authorOlga = new Author("Olga Ravn"); // debug
        Author authorJonas = new Author("Jonas Larsen");
        Author authorKim = new Author("Kim Ged");
        Author authorDraco = new Author("Draco Malfoy");

        // Adds titles
        AudioBook audioBookOne = new AudioBook("Livet som en ged", "skønlit", 140, 192); // debug
        AudioBook audioBookTwo = new AudioBook("Java er livet", "fagbog", 600, 520);
        PrintedBook paperBookOne = new PrintedBook("Se min hule", "skønlit", 140, 166); // debug
        PrintedBook paperBookTwo = new PrintedBook("HTML kan noget..", "fagbog", 700, 400);
        EAudioBook eAudioBookOne = new EAudioBook("Se min fod", "fagbog", 500, 100, 11, 360000, 1000, false);
        EAudioBook eAudioBookTwo = new EAudioBook("Se min tå", "skønlit", 60, 50, 6, 200000, 3000, true);
        EBook eBookOne = new EBook("L", "fagbog", 30, 50, 100, 60000, true);
        EBook eBookTwo = new EBook("W", "billedbog", 30, 50, 100, 60000, true);

        // Add to our authors..
        authorOlga.addTitle(audioBookOne); // debug
        authorOlga.addTitle(paperBookOne); // debug
        authorJonas.addTitle(audioBookTwo);
        authorJonas.addTitle(paperBookTwo);
        authorKim.addTitle(eAudioBookOne);
        authorKim.addTitle(eBookOne);
        authorDraco.addTitle(eAudioBookTwo);
        authorDraco.addTitle(eBookTwo);

        // Output
        System.out.println("\nTotal royalties to Olga Ravn: " + authorOlga.calculateTotalPay()); // debug
        System.out.println();
        System.out.println("Total royalties to Jonas Larsen: " + authorJonas.calculateTotalPay());
        System.out.println();
        System.out.println("Total royalties to Kim Ged: " + authorKim.calculateTotalPay());
        System.out.println();
        System.out.println("Total royalties to Draco Malfoy: " + authorDraco.calculateTotalPay());

    } // Main end

} // Client class end