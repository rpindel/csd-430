<!-- 
Robin Pindel
430 mod11/12 Assignment
7/20/2023
Credit to Professor Payne for providing example code in mod8.
 -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create and Populate Tables MySQL</title>
</head>
<body>

	<% 
	
	Connection connection = null;
	Statement statement = null;
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/430mod11?";
		connection = DriverManager.getConnection(url + "user=root&password=mysqltest");
		statement = connection.createStatement();
	}
	catch (Exception e) {
		out.println("<h3> There was an issue connecting to the database.</h3>");
	}
	
	try {
		statement.executeUpdate("DROP TABLE dnd");
		out.println("<p>Table 'dnd' has been dropped successfully.</p>");
	}
	catch (SQLException e) {
		out.println("<p>Table 'dnd' does not exist.</p>");		
	}

	try {
		statement.executeUpdate("CREATE TABLE dnd (Name CHAR(30) NOT NULL PRIMARY KEY, Ancestry CHAR(30) NOT NULL, Strength INT(2) NOT NULL, Dexterity INT(2) NOT NULL, Constitution INT(2) NOT NULL, Intelligence INT(2) NOT NULL, Wisdom INT(2) NOT NULL, Charisma INT(2) NOT NULL)");
		out.println("<p>Table 'dnd' has been created successfully.</p>");
	}
	catch(SQLException e) {
		out.println("<p>Table 'dnd' creation failed.");
	}
	
	try {
		statement.executeUpdate("INSERT INTO dnd (Name, Ancestry, Strength, Dexterity, Constitution, Intelligence, Wisdom, Charisma) VALUES('Blink Maplesworth', 'Halfling', 8, 17, 12, 15, 11, 16)");
		statement.executeUpdate("commit");
		
		out.println("<p>Table 'dnd' has been successfully populated with data.</p>");
	}
	catch(SQLException e) {
		out.println("<p>Table 'dnd' data population has failed.</p>");
	}
	
	try {
		statement.close();
		connection.close();
		out.println("<p>The connection to the database has been successfully closed.</p>");
	}
	catch(SQLException e) {
		out.println("<p>There was an issue closing the connection to the database.</p>");
	}
%>

<br />
<a href="http://localhost:8080/pindel_11">Go back to main page</a>

</body>
</html>