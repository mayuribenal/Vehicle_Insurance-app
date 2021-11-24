package com.vrs.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionUtil {

	private static Connection con = null;
	private static ConnectionUtil util = null;
	
	private ConnectionUtil() {}
	
	public static ConnectionUtil getInstance() {
		if(null == util) {
			util = new ConnectionUtil();
		}
		return util;
	}
	
	public static Connection getConnection() 
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vrs_db", "root", "");
		} 
		catch (Exception e)
		{
			System.err.println("Error getting DB connection." + e);
		}
		return con;
	}
	
	public static void closeConnection(Connection con) 
	{
		try 
		{
			if(null != con) {
				//con.commit();
				con.close();
			}
		}
		catch (Exception e) 
		{
			System.err.println("Error closing DB connection." + e);
		}
	}
}
