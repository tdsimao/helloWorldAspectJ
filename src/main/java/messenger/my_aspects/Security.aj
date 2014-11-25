package my_aspects;

import messaging.Messenger;
import security.Authenticator;

public aspect Security {                    // declaração do aspecto

	private Authenticator authenticator = new Authenticator();
	
	
	pointcut secureAccess()                 // declaração do ponto de corte 
	: execution(* Messenger.send(..));      // assinatura do ponto de corte

	
	// advice
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
