class BankSystem{

	public static void main(String[] args){

		Bank b = new Bank("\nGuac Banken"); // Giver banken et navn (Constructor).

		b.createAccount("Tine", 1000000); // Tilføjer Tine med 1.mio til banken

		System.out.println(b.name); // Printer bank navn

		b.printAccounts(); // Metode fra banken

	}

}