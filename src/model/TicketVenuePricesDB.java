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
	
	public static TicketVenuePrices getTicketTypesbyPID(int PID){
		DBAccess db = new DBAccess();
		db.connectMeIn();
		TicketVenuePrices t = db.getTicketVenuePricesbyVenuePID(PID);
		db.closeConnection();
		return t;
	}
}
