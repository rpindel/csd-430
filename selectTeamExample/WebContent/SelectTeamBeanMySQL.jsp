<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Team Bean MySQL</title>
    </head>
    <body>
        <h1>Select Team Bean MySQL</h1>
        <div>
            
            <% 
                if(request.getMethod().equals("POST")){
            %>
            
            <jsp:useBean id='myDB' class='dbBeans.MyDatabaseBeanMySQL' />

            <%
                out.println("<h2>Team you selected.</h2>");
                
                java.sql.ResultSet resultSet;
                
                String team = request.getParameter("Team");
                
                resultSet = myDB.getResults("SELECT * FROM Wins_WK_07_MySQL WHERE Team = '" + team + "' OR LoserTeam = '" + team + "'");
                
                try{
                    out.println("<table border='1' bgcolor='FA8072'>");
                    
                    while(resultSet.next()){
                        out.println("<tr>");
                        
                        for(int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++){
                            out.println("<td>");
                            out.print((resultSet.getString(i)).trim());
                            out.println("</td>");
                        }
                        
                        out.println("</tr>");
                    }
                    
                    out.println("</table>");
                }
                catch(Exception e){
                    out.println("<b>Print of results failed.</b><br />");
                }
                
                myDB.closeConnection();

//--------------------------------------------------------------------------

                out.println("<h2>All teams.</h2>");
                
                resultSet = myDB.getResults("SELECT * FROM Wins_WK_07_MySQL");
                
                try{
                    out.println("<table border='1' bgcolor='FFFF00'>");
                    
                    while(resultSet.next()){
                        out.println("<tr>");
                        
                        for(int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++){
                            out.println("<td>");
                            out.print((resultSet.getString(i)).trim());
                            out.println("</td>");
                        }
                        
                        out.println("</tr>");
                    }
                    
                    out.println("</table>");
                }
                catch(Exception e){
                    out.println("<b>Print of results failed.</b><br />");
                }
                
                myDB.closeConnection();
            %>
            
            <h2>Post</h2>
            
            <form method='post' action='SelectTeamBeanMySQL.jsp'>
                <label>Please try again.</label>&nbsp;&nbsp;&nbsp;
                <input type='text' name='Team' size='40' maxlength='40'/>
                <input type='submit' />
            </form>
            
            <%  
            }
            %>

            <%
                if(request.getMethod().equals("GET")){
            %>
            
            <h2>Get</h2>
            
            <form method='post' action='SelectTeamBeanMySQL.jsp'>
                <label>Enter your favorite World Series Team</label>&nbsp;&nbsp;&nbsp;
                <input type='text' name='Team' size='40' maxlength='40'/>
                <input type='submit' />
            </form>
            <%
            }
            %>
        </div>
        
    </body>
</html>
