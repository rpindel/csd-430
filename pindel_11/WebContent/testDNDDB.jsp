<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DnD Character Form</title>
</head>
<body>

		<jsp:useBean id='myDB' class='dbBeans.MyDatabaseBeanMySQL' />

<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/430mod11?";
		Connection connection = DriverManager.getConnection(url + "user=root&password=mysqltest");
		Statement statement = connection.createStatement();

		String name = "Robin Pindel";
		String anc = "Elf";
		int str = 10;
		int dex = 10;
		int con = 10;
		int intl = 10;
		int wis = 10;
		int cha = 10;
		
		String SQL = "INSERT INTO dnd (Name, Ancestry, Strength, Dexterity, Constitution, Intelligence, Wisdom, Charisma) VALUES('" + name + "','" + anc + "'," + str + "," + dex + "," + con + "," + intl + "," + wis + "," + cha + ")";
		
		out.println("SQL is " + SQL);
		out.println("<br /><br />");
		out.println(url + "user=root&password=mysqltest");

%>


</body>
</html>