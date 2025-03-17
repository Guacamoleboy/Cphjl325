public class Notification { // Super-super class

    protected String msg;
    //String appName;

    public Notification(String msg){

        this.msg = msg;

    }

    protected void display(){

        System.out.println(msg);

    }

    public String getMsg(){ // Getter
        return this.msg;
    }



}
