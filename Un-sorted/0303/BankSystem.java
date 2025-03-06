class BankSystem{

	public static void main(String[] args){

		Bank b = new Bank("\nGuac Banken\n"); // Giver banken et navn (Constructor).

		b.createAccount("Tine", 1000000); // Tilføjer Tine med 1.mio til banken
		b.createAccount("Tess", 500000);
		b.createAccount("Andreas", 2);
		b.createAccount("Jonas", 60000000);
		b.createAccount("Momen", 50);
		b.createAccount("Ebou", 9999);
		b.createAccount("Makan", 777);

		System.out.println(b.name); // Printer bank navn
		System.out.println("-------------"); // Line under bank navn

		b.printAccounts(); // Metode fra banken

	} // Main method end

} // Class end