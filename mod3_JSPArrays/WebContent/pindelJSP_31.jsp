<!-- 
Robin Pindel
mod3.1 JSP Arrays - Integer
6/6/2023
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mod3.1 - My Integer Array</title>
</head>
<body>

<% int[] intArray = new int[10];
for (int i = 0; i < 10; i++) {
	intArray[i] = i;
}
%>

My Integer Array <br/><br/>

<% 	for (int i = 0; i < intArray.length; i++) {
		out.print(intArray[i] + " ");
		if (i % 2 == 0 ) {
			out.print(" - Even");
		}
		else {
			out.print(" - Odd");
		}
		out.print("<br/>");
	}
%>

</body>
</html>