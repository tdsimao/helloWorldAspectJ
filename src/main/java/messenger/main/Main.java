package main;
import messaging.Messenger;
public class Main {
	public static void main(String[] args) { 
		Messenger m = new Messenger();
		m.send("How are you?");
		m.send("POO","POA is fun!");
	}
}
