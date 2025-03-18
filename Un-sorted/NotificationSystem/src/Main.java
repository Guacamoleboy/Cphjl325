import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {

        ArrayList <Notification> notifications = new ArrayList<>();

        Notification n1 = new Notification("God morgen");
        //n1.display();

        // Can call notification while making it a new Alert();
        Notification n2 = new Alert("Pas på", 5);
        //n2.display();

        notifications.add(n1);
        notifications.add(n2);

        for(Notification n : notifications){

            if(n instanceof Alert a){

                //System.out.println(a.weight);
                n.display();

            }

        }

    }
}