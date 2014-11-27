package my_aspects;
import main.Account;
public aspect ModifyingStructure {
	/*
	 * Inserir métodos e atributos
	 * 
	*/
	private float  Account._balance;
	public void Account.setBalance(float balance){
		_balance = balance;
	}
	public float Account.getBalance(){
		return _balance;
	}
	
	pointcut setCredit(): set(private float Account._balance);
	
}


