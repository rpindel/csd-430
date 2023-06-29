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
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "mysqltest");                
            }
            catch(Exception e){
                out.println("<br />Error connecting to local MySQL installation.<br />");
            }
            
            try{
            	stmt = conn.createStatement();
            	rset = stmt.executeQuery("show databases;");
            	out.println("<br />Successfully queried local MySQL install.<br /><br />");
            }
            catch(java.sql.SQLException e){
                out.println("<br />Failed finding any local MySQL databases.<br />");
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
            catch(java.sql.SQLException e){
                out.println("<br />Local MySQL connection close failed.<br />");
            }
		}
		%>
</body>
</html>