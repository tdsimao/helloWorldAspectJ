package messaging;

import security.Authenticator;

public class Messenger { 
	private String user;
	//Authenticator authenticator = new Authenticator();
	
	public void send(String s) {
		//authenticator.authenticate();
		System.out.println(s);
	}
	
	public void send(String name, String s) {
		//authenticator.authenticate();
		System.out.println(name +", "+ s);
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
}