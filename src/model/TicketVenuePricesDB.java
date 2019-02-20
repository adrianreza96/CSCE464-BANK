package model;

import java.util.List;

public class TicketVenuePricesDB {
	public static List<TicketVenuePrices> getTicketTypesbyID(int tID){
		DBAccess db = new DBAccess();
		db.connectMeIn();
		List<TicketVenuePrices> t = db.getTicketVenuePricesbyVenueID(tID);
		db.closeConnection();
		return t;
	}
}
