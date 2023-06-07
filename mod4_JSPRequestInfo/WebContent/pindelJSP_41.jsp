<!-- 
Robin Pindel
mod4.1 JSP - RequestInfo
6/6/2023
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mod4.1 - RequestInfo</title>
</head>
<body>
        <h1>TEST Form 2</h1>
        
        <% 
            if(request.getMethod().equals("GET")){
        %>
        
        <form method='post' action='pindelJSP_41.jsp'>
            Enter your name:
            <input type='text' name='Name' maxlength='20'>
            <input type='submit' value='Submit'>
        </form>
        
        <%
            }
            
            if(request.getMethod().equals("POST")){

                out.println(request.getParameter("Name"));
            }
        %>

    </body>
</html>