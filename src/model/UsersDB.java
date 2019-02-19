package model;

import model.DBAccess;
import model.Users;

public class UsersDB {
	public static void registerUser(Users aUser) {
       	DBAccess db = new DBAccess();
       	db.connectMeIn();
       	db.addSingleUser(aUser);
       	db.closeConnection();
    }
    
    public boolean validateUserByUsername(String aUserName) {
    	    boolean userExists = false;
       	DBAccess db = new DBAccess();
       	db.connectMeIn();
       	userExists = db.findUserByUsername(aUserName);
       	db.closeConnection();
       	
       	return userExists;
    }
    
    public boolean validateUserByPassword(String password) {
	    boolean passwordMatches = false;
   	    DBAccess db = new DBAccess();
   	    db.connectMeIn();
   	    passwordMatches = db.findUserByPassword(password);
   	    db.closeConnection();
   	
   	    return passwordMatches;
    }
    
    
    public Users getUser(String aUserName) {   
	   	DBAccess db = new DBAccess();
	   	db.connectMeIn();
	   	Users aUser = db.returnUserByUsername(aUserName);
	   	db.closeConnection();
	   	
	   	return aUser;
    }
}
