package model;

import java.util.List;

public class BankDB {

	public static void updateBalance(int cID, double cost) {
		DBAccess db = new DBAccess();
		db.connectMeIn();
		db.updateBalance(cID, cost);
		db.closeConnection();
	}

	public static CreditCards getCard(long ccNum) {
		DBAccess db = new DBAccess();
		db.connectMeIn();
		CreditCards c = db.getCreditCardByCreditCardNumber(ccNum);
		db.closeConnection();
		return c;
	}
}
