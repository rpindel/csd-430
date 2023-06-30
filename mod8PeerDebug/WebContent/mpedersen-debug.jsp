<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
   // Mishaela Pedersen 6/28/23
      <title>Debug Program</title>
   </head>
   
   <body>
      <jsp:useBean id = "date" class = "java.util.Date" /> 
      <p>The date/time is <%= date %>
   </body>
</html>