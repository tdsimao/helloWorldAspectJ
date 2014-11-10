package first_aspect;
import messaging.Messenger;
import security.Authenticator;

public aspect FirstAspect {
	private Authenticator authenticator = new Authenticator();
	pointcut secureAccess() 
		: execution(* Messenger.send(..)); 
	 before() : secureAccess() { 
		 System.out.println("Checking and authenticating user"); 
		 authenticator.authenticate(); 
	 } 
}
