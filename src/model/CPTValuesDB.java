package model;

public class CPTValuesDB {
	
	public CPTValues getCPTData(int pID) {
		DBAccess db = new DBAccess();
		db.connectMeIn();
		CPTValues cpt = new CPTValues();
		cpt.setC(db.getConcertBypID(pID));
		cpt.setP(db.getPerformancebyID(pID));
		cpt.setT(db.getTicketVenuePricesbyVenuePID(pID));
		db.closeConnection();
		return cpt;
	}
	
}

