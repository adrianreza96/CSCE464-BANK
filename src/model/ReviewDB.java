package model;

public class ReviewDB {
	public static boolean checkLength(String s) {
		if(s.length() > 255) {
			return false;
		} else {
			return true;
		}
	}
	public static String addReview(Review r) {
		DBAccess db = new DBAccess();
		db.connectMeIn();
		String result = db.addReview(r);
		db.closeConnection();
		return result;
	}
	public static Review getReview(int concertID) {
		DBAccess db = new DBAccess();
		db.connectMeIn();
		Review result = db.getReview(concertID);
		db.closeConnection();
		return result;
	}
}
