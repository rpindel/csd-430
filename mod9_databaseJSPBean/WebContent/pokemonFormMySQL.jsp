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
<title>Pokemon Form</title>
<link href="pokemonDB.css" rel="stylesheet" type="text/css">
</head>
<body>

<%
	if(request.getMethod().equals("GET")){
%>
	<h3>Enter the pokemon details belows:</h3>
	<form method='post' action='pokemonFormMySQL.jsp'>
		<label>Pokedex Number</label>
		<input type='text' name='PokedexNumber' size='4' maxlength='4'/>
		<br />
		<label>Name (three digits, cannot be empty)</label>
		<input type='text' name='Name' size='20' maxlength='20'/>
		<br />
		<label>Type 1 (Cannot be empty)</label>
		<input type='text' name='Type1' size='10' maxlength='10'/>
		<br />
		<label>Type 2 (Enter "None" if the pokemon only has one type)</label>
		<input type='text' name='Type2' size='10' maxlength='10'/>
		<br />
		<label>Home Region (Cannot be empty)</label>
		<input type='text' name='HomeRegion' size='10' maxlength='10'/>
		<br />
		<br />
		<input type='submit'>
	</form>
	
<br />
<a href="http://localhost:8080/mod9_databaseJSPBean">Go back to main page</a>

<%
	}
%>

<%
	if(request.getMethod().equals("POST")){
%>
	
		<jsp:useBean id='myDB' class='dbBeans.MyDatabaseBeanMySQL' />

<%

		ResultSet resultSet = null;
	
		String pokedex = request.getParameter("PokedexNumber");
		String name = request.getParameter("Name");
		String type1 = request.getParameter("Type1"); 
		String type2 = request.getParameter("Type2"); 
		String homeRegion = request.getParameter("HomeRegion");
		String SQL = "INSERT INTO pokemon(Pokedex, Name, Type1, Type2, HomeRegion) VALUES('" + pokedex + "','" + name + "','" + type1 + "','" + type2 + "','" + homeRegion + "')";
	
		myDB.putData(SQL);
	
		resultSet = myDB.getResults("SELECT * FROM pokemon");
	
		try {
			out.println("<h2>The 430 mod8 Pokemon Database</h2>");
			out.println("<table border='1' bgcolor='EFC3D2'>");
		
			while (resultSet.next()) {
				out.println("<tr>");
				
				for (int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++) {
					out.println("<td>");
					out.println((resultSet.getString(i)).trim());
					out.println("</td>");
				}
			
				out.println("</tr>");	
			}
		
			out.println("</table>");
		}
		catch(Exception e) {
			out.println("Print out of the database query results failed.");
		}
	
		myDB.closeConnection();
%>

<br />
<a href="http://localhost:8080/mod9_databaseJSPBean/pokemonFormMySQL.jsp">Go back to form</a>

<%		
	}
%>

</body>
</html>