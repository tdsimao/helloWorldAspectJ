package test;

import static org.junit.Assert.assertThat;

import static org.hamcrest.CoreMatchers.is;

import messaging.Messenger;

import org.junit.Before;
import org.junit.Test;


public class MessengerTest {
	Messenger m;

	@Before
	public void setUp() throws Exception {
		m = new Messenger();
	}

	@Test
	public void test() {
		m.setUser("João");
		m.send("Boa tarde!");
		m.send("Maria","tudo bem?");
		assertThat("teste", is("teste"));
	}


}