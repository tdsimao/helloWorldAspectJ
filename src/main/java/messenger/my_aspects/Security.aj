package my_aspects;

import messaging.Messenger;
import security.Authenticator;

public aspect Security {

	private Authenticator authenticator = new Authenticator();

	pointcut secureAccess() 
	: execution(* Messenger.send(..)); 

	before() : secureAccess() {
		System.out.println("Checking and authenticating user"); 
		authenticator.authenticate();
	}  

	
	// get Object reference
	pointcut secureAccess2(Messenger m) 
		: target(m) && execution(* Messenger.send(..));
	
	before(Messenger m) : secureAccess2(m) {
		System.out.println("Authenticating :"+m.getUser());
	}  
}
