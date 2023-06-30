<!-- 
Robin Pindel
430 mod8 Assignment
6/29/2023
Credit to Professor Payne for providing example code.
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
		String url = "jdbc:mysql://localhost:3306/430mod8?";
		connection = DriverManager.getConnection(url + "user=root&password=mysqltest");
		statement = connection.createStatement();
	}
	catch (Exception e) {
		out.println("<h3> There was an issue connecting to the database.</h3>");
	}
	
	try {
		statement.executeUpdate("DROP TABLE pokemon");
		out.println("<p>Table 'pokemon' has been dropped successfully.</p>");
	}
	catch (SQLException e) {
		out.println("<p>Table 'pokemon' does not exist.</p>");		
	}

	try {
		statement.executeUpdate("CREATE TABLE pokemon (Pokedex CHAR(4) NOT NULL PRIMARY KEY, Name CHAR(20) NOT NULL, Type1 		CHAR(10) NOT NULL, Type2 CHAR(10) NULL, HomeRegion CHAR(10) NOT NULL)");
		out.println("<p>Table 'pokemon' has been created successfully.</p>");
	}
	catch(SQLException e) {
		out.println("<p>Table 'pokemon' creation failed.");
	}
	
	try {
		statement.executeUpdate("INSERT INTO pokemon(Pokedex, Name, Type1, Type2, HomeRegion) VALUES(116, 'Horsea', 		'Water', 'None', 'Kanto')");
		statement.executeUpdate("INSERT INTO pokemon(Pokedex, Name, Type1, Type2, HomeRegion) VALUES(151, 'Mew', 		'Psychic', 'None', 'Kanto')");
		statement.executeUpdate("INSERT INTO pokemon(Pokedex, Name, Type1, Type2, HomeRegion) VALUES(390, 'Chimchar', 		'Fire', 'None', 'Sinnoh')");
		statement.executeUpdate("INSERT INTO pokemon(Pokedex, Name, Type1, Type2, HomeRegion) VALUES(399, 'Bidoof', 		'Normal', 'None', 'Sinnoh')");
		statement.executeUpdate("commit");
		
		out.println("<p>Table 'pokemon' has been successfully populated with data.</p>");
	}
	catch(SQLException e) {
		out.println("<p>Table 'pokemon' data population has failed.</p>");
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
<a href="http://localhost:8080/mod9_databaseJSPBean">Go back to main page</a>

</body>
</html>