<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Team Form Table</title>
    </head>
    <body>
        <h1>Select Team Form Table</h1>

          <%
              java.sql.Connection con = null;
              java.sql.Statement stmt = null;
              java.sql.ResultSet resultSet = null;
              
              if(request.getMethod().equals("POST")){
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
                      String team = request.getParameter("Team");
                      
                      resultSet = stmt.executeQuery("SELECT * FROM Wins_WK_06_MySQL WHERE Team = '" + team + "' OR LoserTeam = '" + team + "'");
                  }
                  catch(java.sql.SQLException e){
                      out.println("<b>Failed looking for your favorite Team.</b><br />");
                  }
                  
          %>
          <table border='1'>
          <%
              try{
                  while(resultSet.next()){
          %>
          <tr>
          <%
                    for(int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++){
          %>
          <td>
          <% 
                        out.print((resultSet.getString(i)).trim() + ", "); 
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
                con.close();
                out.println("<b>Database connections closed</b><br />");
            }
            catch(java.sql.SQLException e){
                out.println("<b>Connection close failed</b><br />");
            }
        }
    %>
        <form method='post' action='SelectTeamFormMySQL.jsp'>
        <label>Enter your favorite World Series Team</label>&nbsp;&nbsp;&nbsp;
        <input type='text' name='Team' size='40' maxlength='40'/>
        <input type='submit' />
        </form>

    </body>
</html>
    </body>
</html>
