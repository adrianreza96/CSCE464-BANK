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
}
