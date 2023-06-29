<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Create Table MySQL 5</title>
    </head>
    <body>
        <h1>JSP Create Table MySQL 5</h1>
        
        <%
            java.sql.Connection con = null;
            java.sql.Statement stmt = null;
            
            try{                
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/baseball_01?";
                
                con = java.sql.DriverManager.getConnection(url + "user=student1&password=pass");                
                stmt = con.createStatement();
            }
            catch(Exception e){
                out.println("<h1>Error connection to database.</h1>");
            }
            
            try{                
                stmt.executeUpdate("DROP TABLE Wins_WK_06_MySQL");
                out.println("<b>Table Wins_WK_06_MySQL Dropped</b><br />");
            }
            catch(java.sql.SQLException e){                
                out.println("<b>Table Wins_WK_06_MySQL does not exist</b><br />");
            }
            
            try{
                stmt.executeUpdate("CREATE TABLE Wins_WK_06_MySQL(Team CHAR(20) NOT NULL, City CHAR(20) NOT NULL, Year_T INT NOT NULL PRIMARY KEY, LoserTeam CHAR(20) NOT NULL, LoserCity CHAR(20) NOT NULL)");
                out.println("<b>Table Wins_WK_06_MySQL Created</b><br />");
            }
            catch(java.sql.SQLException e){
                out.println("<b>Table Wins_WK_06_MySQL Creation failed</b><br />");
            }
            
            try{
                stmt.close();
                con.close();
                out.println("<b>Database connections closed</b><br />");
            }
            catch(java.sql.SQLException e){
                out.println("<b>Connection close failed</b><br />");
            }
        %>
        
    </body>
</html>
