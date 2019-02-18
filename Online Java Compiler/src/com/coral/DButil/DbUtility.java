package com.coral.DButil;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.Statement;

public class DbUtility {
	public static Connection getConnection() {
		Connection con = null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");  //mysql jar added
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javacompiler","root","admin");  

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}