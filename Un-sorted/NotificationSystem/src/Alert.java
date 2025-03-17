import java.awt.*;

public class Alert extends Notification { //

    String msg;
    int weight;

    public Alert(String msg, int weight){

        // Når vi siger super, så kalder vi den constructor fra super klassen
        super(msg);
        this.weight = weight;

    }

    @Override // @ Sign means Annotation
    protected void display(){

        System.out.println("NB."); // Foran alle alerts
        Toolkit.getDefaultToolkit().beep(); // Makes a "beep" sound..
        super.display();

    }

}
