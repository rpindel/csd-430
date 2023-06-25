<!-- 
Robin Pindel
Module 6 ebookshop files with comments
6/25/2023

This file is a JDBC test of the connection from Eclipse to the ebookshop eshop shop MySQL database.
The results from the select * from books query are output into a table format.
The details for the DB connection: DB name, username, and password are contained in clear text in the JSP file.

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
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "mysqltest");
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