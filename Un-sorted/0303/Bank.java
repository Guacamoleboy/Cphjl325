import java.util.ArrayList; // Import ArrayList from java.util

class Bank{ // Class
	
	ArrayList <Account> accounts;
	String name;

	public Bank(String name){ // Constructor

		accounts = new ArrayList <Account> ();

		this.name = name;

	} // Constructor end

	public void createAccount(String owner, int balance){ // Owner og balance er fra (Accounts.java)

		Account a = new Account(owner, balance);
		this.accounts.add(a);

		//accounts.add(new Account(owner, balance));

	} // createAccount method end

	public void printAccounts(){

		for(Account a : accounts){ // Object -> Random navn -> Vores arraylist

			System.out.println(a.owner + ": " + a.balance);

		} // For-loop

	} // printAccounts method end


} // Class end