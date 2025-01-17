package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Driver {
	
	public static void main(String[] args) {
		
		//INSTANTIATE DRIVER
		Driver driver = new Driver();
		try {
			//1. GET CONNECTION TO DATABASE
			Connection myConn = driver.db_connect();
			
			//2.CREATE A STATEMENT
			Statement myStmt = myConn.createStatement();
			
			//3.EXECUTE QUERY
			ResultSet myRs = myStmt.executeQuery("SELECT * FROM world.city");
			
			//4.PROCESS THE RESULT SET
			driver.db_printConsole(myRs);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/** Connect to MySQL database */
	public Connection db_connect() {
		try {
			//1. GET CONNECTION TO DATABASE
			Class.forName("com.mysql.jdbc.Driver");

            String url1 = "jdbc:mysql://localhost:3306";
            String user = "root";
            String password = "Tespis1979";

			Connection myConn = DriverManager.getConnection(url1, user, password);
			if (myConn != null) {
				System.out.println("Connected to the database!!!");
			}
			return myConn;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/** Print to Console the result of the QUERY */
	public void db_printConsole(ResultSet myRs) {
		
		try {
			boolean flagRed = true;
			while (myRs.next()) {
				String resultQuery = "";
				resultQuery += "Name = " + myRs.getString("Name") + " => ";
				resultQuery += "CountryCode = " + myRs.getString("CountryCode");
				
				//CHANGE COLOR
				if (flagRed) {
					System.err.println(resultQuery);
					flagRed = false;
					Thread.sleep(250);
				} else {
					System.out.println(resultQuery);
					flagRed = true;
					Thread.sleep(250);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
