<!-- 
Robin Pindel
430 mod11/12 Assignment
7/20/2023
Credit to Professor Payne for providing example code in mod8.
 -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="dnd" uri="WEB-INF/taglib.tld"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Character Form</title>
<link href="dndDB.css" rel="stylesheet" type="text/css">
</head>
<body id="form">

<%
	if(request.getMethod().equals("GET")){
%>
	<h3>Enter the character details below:</h3>
	<table class="entry">
    	<form method='post' action='dndFormMySQL.jsp'>
        	<tr>
            	<td>
                <label for="Name">Character Name</label>
            	</td>
            	<td><input type="text" name="Name" size='30' maxlength='30' />
            	</td>
        	</tr>
        	<tr>
            	<td><label for="Ancestry">Ancestry</label>
            	</td>
            	<td><input type="text" name="Ancestry" size='30' maxlength='30' />
            	</td>
        	</tr>
        	<tr>
            	<td><label for="Strength">Strength (0-20)</label>
            	</td>
            	<td><input type="text" name="Strength" size='2' maxlength='2'/>
            	</td>
        	</tr>
        	<tr>
            	<td><label for="Dexterity">Dexterity (0-20)</label>
            	</td>
            	<td><input type="text" name="Dexterity" size='2' maxlength='2'/>
            	</td>
        	</tr>
        	<tr>
            	<td><label for="Constitution">Constitution (0-20)</label>
            	</td>
            	<td><input type="text" name="Constitution" size='2' maxlength='2'/>
            	</td>
        	</tr>
        	<tr>
            	<td><label for="Intelligence">Intelligence (0-20)</label>
            	</td>
            	<td><input type="text" name="Intelligence" size='2' maxlength='2'/>
            	</td>
        	</tr>
        	<tr>
            	<td><label for="Wisdom">Wisdom (0-20)</label>
            	</td>
            	<td><input type="text" name="Wisdom" size='2' maxlength='2'/>
            	</td>
        	</tr>
        	<tr>
            	<td><label for="Charisma">Charisma (0-20)</label>
            	</td>
            	<td><input type="text" name="Charisma" size='2' maxlength='2'/>
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
<a href="http://localhost:8080/pindel_11">Go back to main page</a>
<br />
Custom Tag - 
<dnd:backmain />

<%
	}
%>

<%
	if(request.getMethod().equals("POST")){
%>
	
		<jsp:useBean id='myDB' class='dbBeans.MyDatabaseBeanMySQL' />

<%
		ResultSet resultSet = null;
	
		String name = request.getParameter("Name");
		String anc = request.getParameter("Ancestry");
		int str = Integer.parseInt(request.getParameter("Strength"));
		int dex = Integer.parseInt(request.getParameter("Dexterity"));
		int con = Integer.parseInt(request.getParameter("Constitution"));
		int intl = Integer.parseInt(request.getParameter("Intelligence"));
		int wis = Integer.parseInt(request.getParameter("Wisdom"));
		int cha = Integer.parseInt(request.getParameter("Charisma"));
		String SQL = "INSERT INTO dnd (Name, Ancestry, Strength, Dexterity, Constitution, Intelligence, Wisdom, Charisma) VALUES('" + name + "','" + anc + "'," + str + "," + dex + "," + con + "," + intl + "," + wis + "," + cha + ")";
	
		myDB.putData(SQL);
	
		resultSet = myDB.getResults("SELECT * FROM dnd");
	
		try {
			out.println("<h2>The 430 mod11/12 DnD Character Database</h2>");
			out.println("<table class=\"res\">");
			out.println("<tr class=\"res\">");
			out.println("<th class=\"res\">Character Name</th>");
			out.println("<th class=\"res\">Ancestry</th>");
			out.println("<th class=\"res\">Strength</th>");
			out.println("<th class=\"res\">Dexterity</th>");
			out.println("<th class=\"res\">Constitution</th>");
			out.println("<th class=\"res\">Intelligence</th>");
			out.println("<th class=\"res\">Wisdom</th>");
			out.println("<th class=\"res\">Charisma</th>");
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
<a href="http://localhost:8080/pindel_11/dndFormMySQL.jsp">Go back to form</a>
<br />
Custom Tag - 
<dnd:backform />

<%		
	}
%>

</body>
</html>