<!-- 
Robin Pindel
Module 6 ebookshop files with comments
6/25/2023

This file is another JDBC test of the connection from Eclipse to the ebookshop eshop shop MySQL database.
The results from the select * from books query are again output into a table format.
The difference between this file and jdbctest.jsp is that the details for the DB connection: DB name, username, 
and password are parameterized.  The raw values are held in web.xml under WEB-INF and this JSP calls for 
them from there.  This would be a more preferred method for storing DB connection credentials in code.  

Reference - Edited after Download from:
Apress. (n.d.-b). beginning-jakarta-ee-web-dev/ch04_code/mysql at master · 
Apress/beginning-jakarta-ee-web-dev. GitHub. 
https://github.com/Apress/beginning-jakarta-ee-web-dev/tree/master/ch04_code/mysql
-->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>JDBC test</title>
</head>
<body>
	<%
	String dbName = application.getInitParameter("dbName");
	String dbUser = application.getInitParameter("dbUser");
	String dbPass = application.getInitParameter("dbPass");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(dbName, dbUser, dbPass);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from books");
	%>
	<table border="1">
		<%
		ResultSetMetaData resMetaData = rs.getMetaData();
		int nCols = resMetaData.getColumnCount();
		%>
		<tr>
			<%
				for (int kCol = 1; kCol <= nCols; kCol++) {
				out.print("<td><b>" + resMetaData.getColumnName(kCol) + "</b></td>");
			}
			%>
		</tr>
		<%
			while (rs.next()) {
		%><tr>
			<%
				for (int kCol = 1; kCol <= nCols; kCol++) {
				out.print("<td>" + rs.getString(kCol) + "</td>");
			}
			%>
		</tr>
		<%
			}
		%>
	</table>
	<%
  conn.close();
  %>
</body>
</html>