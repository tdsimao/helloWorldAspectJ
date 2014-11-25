package my_aspects;
import some_math.Fibonacci;
import java.util.Hashtable;

public aspect Memoization {
	private Hashtable<Integer, Integer> cache = new Hashtable<Integer, Integer>();
	
	pointcut fib(int n) 
	: execution(int Fibonacci.fib(int)) && args(n); 
	
	int around(int n) : fib(n) {
		Integer result = (Integer)cache.get(new Integer(n));
		if (result == null) {
			int f = proceed(n);
			cache.put(new Integer(n), new Integer(f));
			return f;
		}
		else return result.intValue();
	}  
}
