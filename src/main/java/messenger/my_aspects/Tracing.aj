package my_aspects;
import messaging.Messenger;
public aspect Tracing {
	private int callDepth = 0;
	
	pointcut trace() 
	: execution(* Messenger.*(..)); 

	before() : trace() {
		print("Before", thisJoinPoint); 
		callDepth++;
	}  
	after() : trace() {
		print("After", thisJoinPoint); 
		callDepth--;
	} 
	private void print(String s, Object o){
		for (int i = 0; i< callDepth; i++){
			System.out.print("    ");
		}
		System.out.println(s + ":" + o);
	}
}
