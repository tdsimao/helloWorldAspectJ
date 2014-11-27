package my_aspects;
import main.Account;
import security.Authenticator;
public aspect Example {
	pointcut creditExecution():
		execution(void Account.credit(float));

	private Authenticator authenticator = new Authenticator();

	before() : creditExecution() {
		authenticator.authenticate();
	}  
	after() : creditExecution() {
		System.out.println("credit finished");
	}  
}


