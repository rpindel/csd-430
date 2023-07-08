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
	<table class="entry">
    	<form method='post' action='pokemonFormMySQL.jsp'>
        	<tr>
            	<td>
                <label for="PokedexNumber">Pokedex Number</label>
            	</td>
            	<td><input type="text" name="PokedexNumber" size='4' maxlength='4' />
            	</td>
        	</tr>
        	<tr>
            	<td><label for="Name">Pokemon Name</label>
            	</td>
            	<td><input type="text" name="Name" size='20' maxlength='20' />
            	</td>
        	</tr>
        	<tr>
            	<td><label for="Type1">Type 1 (Cannot be empty)</label>
            	</td>
            	<td><input type="text" name="Type1" size='10' maxlength='10'/>
            	</td>
        	</tr>
        	<tr>
            	<td><label for="Type2">Type 2 (Enter "None" if the pokemon only has one type)</label>
            	</td>
            	<td><input type="text" name="Type2" size='10' maxlength='10 '/>
            	</td>
        	</tr>
			<tr>
	            <td><label for="HomeRegion">Home Region (Cannot be empty)</label>
	            </td>
            	<td><input type="text" name="HomeRegion" size='10' maxlength='10 '/>
            	</td>
        	</tr>
        	<tr>
        		<td class="sub">Submit Form</td>
        		<td class="sub"><input type='submit'></td>
        	</tr>
    	</form>
	</table>
<br />
<br />
<a href="http://localhost:8080/pindel_mod08">Go back to main page</a>

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
			out.println("<table class=\"res\">");
			out.println("<tr class=\"res\">");
			out.println("<th class=\"res\">Pokedex Number</th>");
			out.println("<th class=\"res\">Pokemon Name</th>");
			out.println("<th class=\"res\">Type 1</th>");
			out.println("<th class=\"res\">Type 2</th>");
			out.println("<th class=\"res\">Home Region</th>");
			out.println("</tr>");
		
			while (resultSet.next()) {
				out.println("<tr class=\"res\">");
				
				for (int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++) {
					out.println("<td class=\"res\">");
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
<br />
<a href="http://localhost:8080/pindel_mod08/pokemonFormMySQL.jsp">Go back to form</a>

<%		
	}
%>

</body>
</html>