<!-- 
Robin Pindel
Module 5 ebookshop files with comments
6/25/2023

This file serves as the view of the check out page of the ebookshop application.

Reference - Edited after Download from:
Apress. (n.d.-a). beginning-jakarta-ee-web-dev/ch03_code/ebookshop at master · 
Apress/beginning-jakarta-ee-web-dev. GitHub. 
https://github.com/Apress/beginning-jakarta-ee-web-dev/tree/master/ch03_code/ebookshop
 -->


<%@page language="java" contentType="text/html"%>
<%@page session="true" import="java.util.Vector, ebookshop.Book" %>
<html>
<head>
  <title>E-Bookshop Checkout</title>
  <style type="text/css">
    body {background-color: pink; font-size: 10pt;}
    H1 {font-size: 20pt;}
    table {background-color: white;}
    </style>
  </head>
<body>
  <H1>Your Online Bookshop - Checkout</H1>
  <hr/><p/>
  <table border="1" cellpadding="2">
    <tr>
      <td>TITLE</td>
      <td align="right">PRICE</td>
      <td align="right">QUANTITY</td>
      </tr>
<%
	// Pindel - This portion copies the shoplist object line by line into the checkout page
	// table with formatting like a standard order receipt
	Vector<Book> shoplist =
        (Vector<Book>)session.getAttribute("ebookshop.cart");
    for (Book anOrder : shoplist) {
 %>
      <tr>
        <td><%=anOrder.getTitle()%></td>
        <td align="right">$<%=anOrder.getPrice()%></td>
        <td align="right"><%=anOrder.getQuantity()%></td>
        </tr>
<%
      }
    // Pindel - This portion causes the session to be invalidated such that if the the application is restarted
    // from the browser session the shoplist (cart) would be new and empty.  Without error handling, refreshing
    // the checkout page causes an exception since it cannot display a shoplist object that is null.
    session.invalidate();
  %>
    <tr>
      <td>TOTALS</td>
      <td align="right">$<%=(String)request.getAttribute("dollars")%></td>
      <td align="right"><%=(String)request.getAttribute("books")%></td>
      </tr>
    </table>
  <p/>
  <a href="/ebookshop/eshop">Buy More!</a>
  </body>
</html>