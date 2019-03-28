package model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Bank {
	private CreditCards card;
	private String name;
	private BankDB bankDB;

	public Bank(long ccNum) {
		super();
		bankDB = new BankDB();
		this.card = bankDB.getCard(ccNum);
		this.name = this.card.getCardHolderName();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public void updateBalance() {
		//updates object's balance
		this.card = this.bankDB.getCard(this.card.getCreditCardNumber());
	}
	public boolean chargeUser(double amount) {
		if( (this.card.getBalance() - amount) > 0) {
			BankDB.updateBalance(this.card.getId(), amount); //updates database balance
			updateBalance(); 
			return true;
		}
		return false;
	}
	
	public CreditCards getCard() {
		return card;
	}

	public void setCard(CreditCards card) {
		this.card = card;
	}
}
