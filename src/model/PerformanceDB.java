package model;

import java.sql.Date;
import java.util.List;

public class PerformanceDB {
	public static List<Performance> getPerformancebyDate(Date d){
		DBAccess db = new DBAccess();
		db.connectMeIn();
		List<Performance> c = db.getPerformancebyDate(d);
		db.closeConnection();
		return c;
	}
	public static List<Performance> getPerformancebyID(int pID){
		DBAccess db = new DBAccess();
		db.connectMeIn();
		List<Performance> c = db.getPerformancebyID(pID);
		db.closeConnection();
		return c;
	}
}
