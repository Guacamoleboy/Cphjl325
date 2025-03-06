import java.util.ArrayList;

class Bank{
	
	private ArrayList<Account> accounts;
    private String name;


    public Bank(String name){
 		accounts = new ArrayList<>();
 		this.name = name;
    }


   public Account getAccount(String owner){

        for(Account a :accounts){
           String name = a.getOwner();
           if( name.equals(owner)){
                return a;
           }
        }
        return null;

   }

    public void createAccount(String owner, int balance){

     	Account a = new Account(owner, balance);
      // System.out.println("count: "+Account.count);
     	///PLACER KONTOEN I LISTEN MED KONTi
     	this.accounts.add(a);

    }

    public void printAccounts(){

    	for(Account a: accounts){

    		System.out.println(a);

    	}

    }

    public String getName(){
        return this.name;
    }


    


}