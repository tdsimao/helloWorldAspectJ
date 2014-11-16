package my_aspects;
import messaging.Messenger;

public aspect Tracing {
	pointcut trace() 
	: execution(* Messenger.*(..)); 

	before() : trace() {
		System.out.println("entry:" + thisJoinPoint);
	}  
	after() : trace() {
		System.out.println("exit:" + thisJoinPoint); 
	} 
}
