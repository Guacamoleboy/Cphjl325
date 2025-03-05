/*

	Author: CPHJL325 // Jonas Meinert Larsen
	Task 2

	Comments:

	N/A

*/

import java.util.Scanner;

public class Main{
	
	public static void main(String[] args){

	int ageTillRetirement = 67;

	Scanner scanner = new Scanner(System.in);

	System.out.println("Please type your name:");
	String name = scanner.nextLine();

	System.out.println("Please type your age:");
	int age = scanner.nextInt();

	int ageLeft = ageTillRetirement - age;

	// Output
	System.out.println("Hello, " + name + ". You are " + age + " years old.. You have " + ageLeft + " left untill retirement.");

	}

}