package main;
import messaging.Messenger;
import main.Account;
public class Main {
	public static void main(String[] args) { 
		Messenger m = new Messenger();
		m.send("How are you?");
		m.send("POO","POA is fun!");
		Account a = new Account(10);
		
		a.setBalance(122.0f);
		System.out.println(a.getBalance());
	}
}
