<!-- 
Robin Pindel
mod4.1 JSP - RequestInfo
6/6/2023
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mod4.1 - RequestInfo</title>
<style>
	table, th, td {border: 1px solid Black;}
	th, td {padding: 5px;}
	td {text-align: center;}
</style>
</head>
<body>
        <h1>Who is your favorite Pokemon?</h1>
        
        <%
     		// PokeDex Arrays : Name, Number, Type1, Type2, First Region
     		String[] mewDex = {"Mew", "151", "Psychic", "None", "Kanto"};
        	String[] pikachuDex = {"Pikachu", "025", "Electric", "None", "Kanto"};
        	String[] charizardDex = {"Charizard", "006", "Fire", "Flying", "Kanto"};
        	String[] bidoofDex = {"Bidoof", "399", "Normal", "None", "Sinnoh"};
    	       
        	if(request.getMethod().equals("POST")){
        			if(request.getParameter("radioButton").equals("Mew")) {               
                		out.println(request.getParameter("radioButton"));
                		out.println(" is my favorite too!");
                		out.println("<br/>");
                		%>
                		
                		<p>
 						<table>
 							<th>Name</th>
 							<th>Dex #</th>
 							<th>Type 1</th>
 							<th>Type 2</th>
 							<th>Region</th>
 							<tr>
								<td><%=mewDex[0]%></td>
								<td><%=mewDex[1]%></td>
								<td><%=mewDex[2]%></td>
								<td><%=mewDex[3]%></td>
								<td><%=mewDex[4]%></td>
							</tr>	
						</table>
 						</p>
 						
 					<%	
        			}
                	else {
                		String pokeDex = (request.getParameter("radioButton"));
                		out.println("I like ");
                		out.println(request.getParameter("radioButton"));
                		out.println(" but my favorite is Mew!");
                		out.println("<br/>");
                		switch (pokeDex)
                		{
                			case "Pikachu":
                				%>
                				<p>
         						<table>
         							<th>Name</th>
         							<th>Dex #</th>
         							<th>Type 1</th>
         							<th>Type 2</th>
         							<th>Region</th>
         							<tr>
         								<td><%=pikachuDex[0]%></td>
         								<td><%=pikachuDex[1]%></td>
         								<td><%=pikachuDex[2]%></td>
         								<td><%=pikachuDex[3]%></td>
         								<td><%=pikachuDex[4]%></td>
         							</tr>	
         						</table>
         						</p>
         						<%
                				break;
                			case "Charizard":
                				%>
                				<p>
                				<table>
     								<th>Name</th>
     								<th>Dex #</th>
     								<th>Type 1</th>
     								<th>Type 2</th>
     								<th>Region</th>
     								<tr>
    									<td><%=charizardDex[0]%></td>
    									<td><%=charizardDex[1]%></td>
    									<td><%=charizardDex[2]%></td>
    									<td><%=charizardDex[3]%></td>
    									<td><%=charizardDex[4]%></td>
    								</tr>	
    							</table>
     							</p>
     							<%	
                				break;
                			case "Bidoof":
                				%>
                				<p>
                				<table>
     								<th>Name</th>
     								<th>Dex #</th>
     								<th>Type 1</th>
     								<th>Type 2</th>
     								<th>Region</th>
     								<tr>
    									<td><%=bidoofDex[0]%></td>
    									<td><%=bidoofDex[1]%></td>
    									<td><%=bidoofDex[2]%></td>
    									<td><%=bidoofDex[3]%></td>
    									<td><%=bidoofDex[4]%></td>
    								</tr>	
    							</table>
     							</p>
     							<%
                				break;
                			default:
                				break;
                		}
            		}
		%>	
     		<p>
        		<input type="button" type="reset" value="Back" onclick="javascript:history.back()"/>
        	</p>
        	
        <%
            }
        %>
        
        <%
        	if(request.getMethod().equals("GET")){
        %>
        
        	<form action='pindelJSP_41.jsp' method='post'>
            	<p>
            		&emsp; Select it from the list below to learn more about it!
            		<br/>
            		<br/>
            	</p>
            	<p>
                	<label>
                    	Mew
                    	<input name='radioButton' type='radio' value='Mew' checked='checked' />
                	</label>
                	<br />
                	<label>
                    	Pikachu
                    	<input name='radioButton' type='radio' value='Pikachu' />
                	</label>
                	<br />
                	<label>
                    	Charizard
                    	<input name='radioButton' type='radio' value='Charizard' />
                	</label>
                	<br />
                	<label>
                    	Bidoof
                    	<input name='radioButton' type='radio' value='Bidoof' />
                	</label>
                	<br/>
                	<br/>
            	</p>
            	<p>
                	<input type='submit' value='Submit' />
            	</p>
            	<p>
                	<input type='reset' value='Reset Checkbox' />
            	</p>
        	</form>
        
        <%
            }
        %>
        
    </body>
</html>