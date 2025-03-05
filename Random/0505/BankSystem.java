class BankSystem{
	

    public static void main(String[] args){


    	Bank b = new Bank("Lollandsbanken");
        
 		b.createAccount("Tine", 1000000);
 		b.createAccount("Jesper", 1000000);
 		b.createAccount("Signe", 1000000);
 		b.createAccount("Jon", 1000000);
 		
        System.out.println(b.getName());

        b.printAccounts();

        Account a = b.getAccount("Jon");
        a.deposit(1000000);
        System.out.println(a);
       
        

    }

}