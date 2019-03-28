package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//import org.apache.log4j.Logger;

public class DBAccess {
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement ps = null;	
	
	
	// JDBC driver name and database URL
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://cse.unl.edu:3306/aschlichtm"; 
	//final String DB_URL = "jdbc:mysql://cse.unl.edu:3306/CSE_LOGIN";
	
	

	//  Database credentials
	static final String USER = "aschlichtm"; // Replace with your CSE_LOGIN
	static final String PASS = "LM6-dy";   // Replace with your CSE MySQL_PASSWORD


	// <---------------Connection------------------>
	public void connectMeIn() {
		try{
			//Register the JDBC driver
			Class.forName("com.mysql.jdbc.Driver");			
		}catch(ClassNotFoundException e){
			System.err.println(e);
			System.exit (-1);
		}
		try {
			 //Open a connection
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
		} catch (SQLException e){
			//log.error("SQL Error: ", e);
			e.printStackTrace();
		}
	}
	
	
	public void closeConnection(){
		try {
			conn.close();
		} catch (SQLException e) {
			//log.error("SQL Error: ", e);
		}
	}

	public CreditCards getCreditCardByCreditCardNumber(long ccNumber){
		CreditCards CreditHolder = new CreditCards();
		String SQL = "SELECT * from creditcards WHERE CreditCardNumber='"+ccNumber+"'";
	    Statement stat;
		try {
			stat = conn.createStatement();
			ResultSet rs = stat.executeQuery(SQL);
			while (rs.next()){
				CreditHolder.setId(rs.getInt("Id"));
				CreditHolder.setCardHolderName(rs.getString("CardHolderName"));
				CreditHolder.setBalance(rs.getDouble("Balance"));
				CreditHolder.setCardType(rs.getString("CardType"));
				CreditHolder.setUserId(rs.getInt("UserId"));
				CreditHolder.setCVV(rs.getInt("CVV"));
				CreditHolder.setExpirationDate(rs.getDate("ExpirationDate"));
				CreditHolder.setCreditCardNumber(rs.getLong("CreditCardNumber"));
		    }
			
		    stat.close();
		        
		} catch (SQLException e) {
			//log.error("SQL Error: ", e);
			e.printStackTrace();
		}
		return CreditHolder;
	}
	
	public void updateBalance(int cID, double cost){
		String SQL = "SELECT Balance from creditcards WHERE UserId='"+cID+"'";
	    Statement stat;
	    Double balance;
		try {
			stat = conn.createStatement();
			ResultSet rs = stat.executeQuery(SQL);
			rs.next();
			balance = rs.getDouble("Balance");
			balance = balance - cost;
			SQL = "UPDATE creditcards SET Balance='"+ balance+"' WHERE UserId='"+cID+"'";
			stat.executeUpdate(SQL);
		    stat.close();
		        
		} catch (SQLException e) {
			//log.error("SQL Error: ", e);
			e.printStackTrace();
		}
	}
	
	public List<CreditCards> getCreditCards(int cID){
		List<CreditCards>  c = new ArrayList<CreditCards>();
		String SQL = "SELECT * from creditcards WHERE UserId='"+cID+"'";
	    Statement stat;
		try {
			stat = conn.createStatement();
			ResultSet rs = stat.executeQuery(SQL);
			while (rs.next()){
				CreditCards CreditHolder = new CreditCards();
				CreditHolder.setId(rs.getInt("Id"));
				CreditHolder.setCardHolderName(rs.getString("CardHolderName"));
				CreditHolder.setBalance(rs.getDouble("Balance"));
				CreditHolder.setCardType(rs.getString("CardType"));
				CreditHolder.setUserId(rs.getInt("UserId"));
				CreditHolder.setCVV(rs.getInt("CVV"));
				CreditHolder.setExpirationDate(rs.getDate("ExpirationDate"));
				c.add(CreditHolder);
		    }
			
		    stat.close();
		        
		} catch (SQLException e) {
			//log.error("SQL Error: ", e);
			e.printStackTrace();
		}
		return c;
	}
}
