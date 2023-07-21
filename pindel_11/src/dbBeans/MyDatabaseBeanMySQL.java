/*
Robin Pindel
430 mod11/12 Assignment
7/20/2023
Credit to Professor Payne for providing example code in mod8.
*/


package dbBeans;

import java.sql.*;

public class MyDatabaseBeanMySQL implements java.io.Serializable {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	public MyDatabaseBeanMySQL() {
	}
	
	public void putData(String SQL) throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/430mod11?";
			connection = DriverManager.getConnection(url + "user=root&password=mysqltest");
			statement = connection.createStatement();
		}
		catch(SQLException e) {
		}
		try {
			statement.executeUpdate(SQL);
			statement.executeUpdate("commit");
			System.out.println("Form data successfully inserted into 'dnd' table.");
		}
		catch(SQLException e) {
			System.out.println("Form data failed to insert into 'dnd' table.");
		}
	}
	
	
	public ResultSet getResults(String SQL) throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/430mod11?";
			connection = DriverManager.getConnection(url + "user=root&password=mysqltest");
			statement = connection.createStatement();
		}
		catch(SQLException e) {
		}
		try {
			resultSet = statement.executeQuery(SQL);
		}
		catch(SQLException e) {
		}
		return resultSet;
	}
	
	public void closeConnection() {
		try {
			statement.close();
			connection.close();
		}
		catch(SQLException e) {
		}
	}
}
