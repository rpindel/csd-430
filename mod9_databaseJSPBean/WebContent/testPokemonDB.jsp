<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pokemon Form</title>
</head>
<body>

		<jsp:useBean id='myDB' class='dbBeans.MyDatabaseBeanMySQL' />

<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/430mod8?";
		Connection connection = DriverManager.getConnection(url + "user=root&password=mysqltest");
		Statement statement = connection.createStatement();

		int pokedex = 493;
		String name = "Arceus";
		String type1 = "Normal";
		String type2 = ""; 
		String homeRegion = "Sinnoh";
		
		String SQL = "INSERT INTO pokemon(Pokedex, Name, Type1, Type2, HomeRegion) VALUES(" + pokedex + ",'" + name + 		"','" + type1 + "','" + type2 + "','" + homeRegion + "')";
		
		out.println("SQL is " + SQL);
		out.println("<br /><br />");
		out.println(url + "user=root&password=mysqltest");

%>


</body>
</html>