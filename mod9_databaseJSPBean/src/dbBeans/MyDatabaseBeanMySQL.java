/*
Robin Pindel
430 mod8 Assignment
6/29/2023
Credit to Professor Payne for providing example code.
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
			String url = "jdbc:mysql://localhost:3306/430mod8?";
			connection = DriverManager.getConnection(url + "user=root&password=mysqltest");
			statement = connection.createStatement();
		}
		catch(SQLException e) {
		}
		try {
			statement.executeUpdate(SQL);
			statement.executeUpdate("commit");
			System.out.println("Form data successfully inserted into 'pokemon' table.");
		}
		catch(SQLException e) {
			System.out.println("Form data failed to insert into 'pokemon' table.");
		}
	}
	
	
	public ResultSet getResults(String SQL) throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/430mod8?";
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
