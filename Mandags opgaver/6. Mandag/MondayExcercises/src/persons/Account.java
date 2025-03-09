package persons;

public class Account {

    private double balance;

    public Account(double balance, double amount) {

        this.balance = balance;

    }

    public void withdraw(double amount) {
        this.balance -= amount;
    }

    public void deposit(double amount) {
        this.balance += amount;
    }

    double getBalance() {
        return balance;
    }

} // Entity class end
