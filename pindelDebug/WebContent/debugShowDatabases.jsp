<!-- 
Robin Pindel
430 mod8 DB Post - Debug Program
6/29/2023
3 things
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<title>Check Local MySQL Databases</title>
</head>
<body>     
	   
	<%
	if(request.getMethod().equals("POST")){
			
		Connection conn = null;
       	Statement stmt = null;
       	ResultSet rset = null;
        	
 	    try{                
            Class.forName("oracle.jdbc.driver.OracleDriver"); //
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "password"); //
        }
        catch(Exception e){
            out.println("<br />Exception - Error connecting to local MySQL installation.<br />");
        }
            
        try{
         	stmt = conn.createStatement();
           	rset = stmt.executeQuery("select databases;"); //
           	out.println("<br />Successfully queried local MySQL install.<br />");
        }
        catch(Exception e){
            out.println("<br />Exception - Failed finding any local MySQL databases.<br />");
        }
	%>
    <h3>Your local MySQL databases are:</h3>
    <table border='1'>
	<%
        try{
 			while(rset.next()){
    %>
		<tr>
    <%
				for(int i = 1; i <= rset.getMetaData().getColumnCount(); i++){
    %>
		<td>
    <% 
				out.print((rset.getString(i)).trim()); 
    %>
		</td>
    <%
				}
    %>
		</tr>
    <%
			}
       	}
      	catch(Exception e){
        }
    %>
        </table>
    <%
        try{
            stmt.close();
            conn.close();
            out.println("<br />Local MySQL connection successfully closed.<br />");
        }
        catch(Exception e){
            out.println("<br />Exception - Local MySQL connection close failed.<br />");
        }
	}
	%>
</body>
</html>