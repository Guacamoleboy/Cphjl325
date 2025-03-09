public class Cinema {
    String[][] seats;

    // Række 0, sæde 0 er altid reserveret til direktøren og skal derfor have værdien X
    // Sæder, der ikke er reserveret, har værdien "O"

    public Cinema(int rows, int seats) {
        this.seats = new String[rows][seats];

        for(int i = 0; i < rows; i++){ // (2) Kører vores array igennem
            for(int j = 0; j < seats; j++){
                this.seats[i][j] = "0";
            }
        }

        this.seats[0][0] = "X"; // (1) Moved down after initializing
    }

    public int getRows() {

        return seats.length;

    }

    public int getSeats() {
        return seats[0].length;
    }

    // If the seat is not yet reserved, it's value is O.
    // In that case, change the value to X and return true.
    // If the seat is already reserved, return false.

    public boolean reserve(int row, int seat) {

        if (seats[row][seat].equals("O")) {
            seats[row][seat] = "X";
            return false;
        }

        return true;
    }

    public boolean cancelReservation(int row, int seat) {

        if (seats[row][seat].equals("X")) { // (3) Stort X
            seats[row][seat] = "O";
            return false;
        }

        return true;
    }

    public String toString() {

        String result = ""; // (4) It was null

        for (int i = 0; i < seats.length; i++) {
            result += "|";

            for (int j = 0; j < seats[i].length; j++) {

                result += (seats[i][j] != null ? seats[i][j] : "0") + "|";

            }

            result += "\n";

        }

        return result;
    }
}
