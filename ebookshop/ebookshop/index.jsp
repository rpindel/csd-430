<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page session="true" import="java.util.Vector, ebookshop.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Bookshop</title>
<style type="text/css">
	body {background-color: gray; font-size: 10pt;}
	H1 {font-size: 20pt;}
	table {background-color: white;}
</style>
</head>
<body>
	<H1>Your Online Bookshop</H1>
	<hr/><p/>

<% // Scriptlet 1: Check whether the booklist is ready
	Vector<ebookshop.Book> booklist = 
		(Vector<ebookshop.Book>)session.getValue("ebookshop.list");
	if (booklist == null) {
	response.sendRedirect("/ebookshop/eshop");
	}
	else {
	%>
	
		<form name="addForm" action="eshop" method="POST">
			<input type="hidden" name="do_this" value="add">
			Book:
			<select name=book>
			
<% // Scriplet 2: Copy the booklist to the selection control

// page 98
%>

</select></form>

</body>
</html>