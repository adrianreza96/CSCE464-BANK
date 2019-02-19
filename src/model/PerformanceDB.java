package model;

import java.sql.Date;
import java.util.List;

public class PerformanceDB {
	public static List<Performance> getPerformance(Date d){
		DBAccess db = new DBAccess();
		db.connectMeIn();
		List<Performance> c = db.getPerformance(d);
		db.closeConnection();
		return c;
	}
}
