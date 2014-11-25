


package test;

import static org.junit.Assert.assertThat;
import static org.hamcrest.CoreMatchers.is;

import some_math.Fibonacci;

import org.junit.Before;
import org.junit.Test;


public class FibonacciTest {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		assertThat(Fibonacci.fib(0), is(0));
		assertThat(Fibonacci.fib(1), is(1));
		assertThat(Fibonacci.fib(2), is(1));
		assertThat(Fibonacci.fib(3), is(2));
		assertThat(Fibonacci.fib(4), is(3));
		assertThat(Fibonacci.fib(5), is(5));
		assertThat(Fibonacci.fib(6), is(8));
		assertThat(Fibonacci.fib(7), is(13));
		assertThat(Fibonacci.fib(8), is(21));
		assertThat(Fibonacci.fib(9), is(34));
		Fibonacci.fib(30);
	}

	@Test
	public void test2() {
		int n = 38;
		int fib = Fibonacci.fib(n);
		System.out.println("Fib("+n+"):" + fib);
		assertThat(1, is(1));
	}


}
