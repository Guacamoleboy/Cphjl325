package Task_3;

import java.util.*;

public class ComputerPlayer implements Player{

    // Attributes
    private Random random;

    // __________________________________________________

    public ComputerPlayer(){

        this.random = new Random();

    } // Constructor

    // __________________________________________________

    @Override // Override of super method
    public int guessANumber(int min, int max){

        return random.nextInt((max-min)) + min;

    }

} // subclass end
