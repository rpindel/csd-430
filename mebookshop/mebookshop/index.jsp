<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page session="true" import="java.util.Vector, mebookshop.Book" %>
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
	// Vector<mebookshop.Book> booklist =
	Vector booklist = 
		(Vector<mebookshop.Book>)session.getValue("mebookshop.list");
	if (booklist == null) {
		response.sendRedirect("/mebookshop/eshop");
	}
	else {
	%>
	
		<form name="addForm" action="eshop" method="POST">
			<input type="hidden" name="do_this" value="add">
			Book:
			<select name=book>
			
<% // Scriplet 2: Copy the booklist to the selection control
	for (int i = 0; i < booklist.size(); i++) {
		out.println("<option>" + (String)booklist.elementAt(i) +
		"</option>");
	}
%>

		</select>
	Quantity: <input type="text" name="qty" size="3" value="1">
	<input type="submit" value="Add to Cart">
		</form>
	<p/>
	
<% // Scriplet 3: Check whether the shopping cart is empty
	Vector shoplist =
		(Vector<mebookshop.Book>)session.getAttribute("mebookshop.cart");
	if (shoplist != null && shoplist.size() > 0) {
%>

	<table border="1" cellpadding="2">
	<tr>
	<td>TITLE</td>
	<td>PRICE</td>
	<td>QUANTITY</td>
	<td></td>
	</tr>

<% // Scriplet 4: Display the books in the shopping cart
	for (int i = 0; i < shoplist.size(); i++) {
		Book aBook = (Book)shoplist.elementAt(i);
%>
	
	<tr>
		<form name="removeForm" action="eshop" method="POST">
			<input type="hidden" name="position" value=" <%=i%> ">
			<input type="hidden" name="do_this" value="remove">
			<td><%=aBook.getTitle()%></td>
			<td align="right">$<%=aBook.getPrice()%></td>
			<td align="right"><%=aBook.getQuantity()%></td>
			<td><input type="submit" value="Remove from Cart"></td>
		</form>
	</tr>

<%
	} // for (int i ..
%>
		
	</table>
	<p/>
	<form name="checkoutForm" action="eshop" method="POST">
		<input type="hidden" name="do_this" value="checkout">
		<input type="submit" value="Checkout">
	</form>

<%
	} // if (shoplist..
	} // if (booklist..else..
%>
</body>
</html>