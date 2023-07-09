<%@page language="java" contentType="text/html"%>
<html>
	<head>
		<title>
			Hello World Static HTML
		</title>
	</head>
	<body>
		Hello World!
		<%
		String userAgent = request.getHeader("user-agent");
		out.println("<br/>user-agent " + userAgent);
		%>
	</body>
</html>