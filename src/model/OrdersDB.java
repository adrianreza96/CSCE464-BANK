package model;

import java.util.List;

public class OrdersDB {
	public static List<Orders> getOrders(int cID){
		DBAccess db = new DBAccess();
		db.connectMeIn();
		List<Orders> o = db.getOrders(cID);
		db.closeConnection();
		return o;
	}
}
