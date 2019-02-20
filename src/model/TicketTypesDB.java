package model;

import java.util.List;

public class TicketTypesDB {
	public static List<TicketTypes> getTicketTypesbyID(int tID){
		DBAccess db = new DBAccess();
		db.connectMeIn();
		List<TicketTypes> t = db.getTicketTypesbyID(tID);
		db.closeConnection();
		return t;
	}
}
