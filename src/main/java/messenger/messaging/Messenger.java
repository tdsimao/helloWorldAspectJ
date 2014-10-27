package messaging;

import security.Authenticator;

public class Messenger { 
	
	Authenticator authenticator = new Authenticator();
	
	public void send(String s) {
		authenticator.authenticate();
		System.out.println(s);
		
	}
	
	public void send(String name, String s) {
		authenticator.authenticate();
		System.out.println(name +", "+ s);
	}
}