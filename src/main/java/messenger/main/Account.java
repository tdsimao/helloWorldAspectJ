package main;

public class Account {
	private float _balance;
	public Account() {
		_balance = 0;
	}
	public Account(float balance) {
		//this._balance = _balance;
		_balance = balance;
	}
	void credit(float amount){ 
		this._balance += amount;    
	}
}
