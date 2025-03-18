package Task_3;

import java.util.*;

public class ComputerPlayer implements Player{

    private Random random;

    public ComputerPlayer(){
        this.random = new Random();
    }

    @Override
    public int guessANumber(int min, int max){
        return random.nextInt((max-min)) + min;
    }

}
