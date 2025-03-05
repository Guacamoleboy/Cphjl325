class Account{
	private String owner;
	private int balance;
	
	Account(String owner, int balance){
			this.owner = owner;
			this.balance = balance;

	}


	public boolean deposit(int amount){
			this.balance += amount;
			
			/*if(this.balance>0){
				return true;
			}else{
				return false;
			}*/

			return this.balance > 0;


	}

	public void setBalance(int balance){
			this.balance = balance;
	}

 
	public void setOwner(String owner){
		this.owner = owner;
	}

	//Lav også getter til owner og balance
	public String getOwner(){
		return owner;

	}

	public int getBalance(){
		return balance;
	}

    
    @Override
	public String toString(){

      String s = "Kontoens ejer: "+this.owner +" saldo: "+this.balance;
      return s;

	}


}