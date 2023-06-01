<!-- 
Robin Pindel
mod2 Programming Assignment
5/31/2023

JSP file containing a few scriplets showing successful 
installation of Eclipse IDE.
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eclipse Test Project mod2</title>
</head>
<body>
	<% 
	out.print("Hello Coder!");
	out.print("<br/>");
	out.print("<br/>");
	out.print("\nHere are some numbers from a for loop:");
	for (int i = 0; i < 10; i++){
		out.print("<br/>" + i);
	}
	out.print("<br/>");
	%>
	
	<%
	Object dateNow = java.time.LocalDateTime.now();
	out.print("<br/>\nThe current date and time is: " + dateNow);
	out.print("<br/>");
	%>
	
	<%
	String userAgent = request.getHeader("user-agent");
	out.print("<br/>\nI think your system/browser might be:  ");
	out.print("<br/>" + userAgent);
	out.print("<br/>");
	%>
	
	<%
	out.print("<br/>");
	out.print("My information is: ");
	out.print("<br/>Server Version: " + application.getServerInfo());
	out.print("<br/>Servlet Version: " + application.getMajorVersion() + "." + application.getMinorVersion());
	out.print("<br/>JSP Version: " + JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion());
	%>
</body>
</html>