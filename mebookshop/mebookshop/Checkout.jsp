<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page session="true" import="java.util.Vector, mebookshop.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ME-Bookshop Checkout</title>
<style type="text/css">
	body {background-color: gray; font-size: 10pt;}
	H1 {font-size: 20pt;}
	table {background-color: white;}
</style>
</head>
<body>
	<H1>Your Online Bookshop - Checkout (ME)</H1>
	<hr/><p/>
	<table border="1" cellpadding="2">
		<tr>
			<td>TITLE</td>
			<td align="right">PRICE</td>
			<td align="right">QUANTITY</td>
		</tr>

<%
	Vector<Book> shoplist =
		(Vector<Book>)session.getAttribute("mebookshop.cart");
	for (Book anOrder : shoplist) {
%>
	
		<tr>
			<td><%=anOrder.getTitle()%></td>
			<td align="right">$<%=anOrder.getPrice()%></td>
			<td align="right"><%=anOrder.getQuantity()%></td>
		</tr>
		
<%
	}
	session.invalidate();
%>		

	<tr>
		<td>TOTALS</td>
		<td align="right">$<%=(String)request.getAttribute("dollars")%></td>
		<td align="right"><%=(String)request.getAttribute("books")%></td>
	</tr>
	</table>
<p/>
<a href="/mebookshop/eshop">Buy more!</a>
</body>
</html>