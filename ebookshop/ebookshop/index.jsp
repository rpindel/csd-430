<!-- 
Robin Pindel
Module 5 ebookshop files with comments
6/25/2023

This file serves as the view of the main page of the ebookshop application.

Reference - Edited after Download from:
Apress. (n.d.-a). beginning-jakarta-ee-web-dev/ch03_code/ebookshop at master · 
Apress/beginning-jakarta-ee-web-dev. GitHub. 
https://github.com/Apress/beginning-jakarta-ee-web-dev/tree/master/ch03_code/ebookshop
 -->
 

<%@page language="java" contentType="text/html"%>
<%@page trimDirectiveWhitespaces="true"%>
<%@page session="true" import="java.util.Vector, ebookshop.Book"%>
<html>
<head>
  <title>E-Bookshop</title>
  <style type="text/css">
    body {background-color: pink; font-size: 10pt;}
    H1 {font-size: 20pt;}
    table {background-color: white;}
    </style>
  </head>
<body>
  <H1>Your Online Bookshop</H1>
  <hr/><p/>
<%  // Scriptlet 1: Check whether the book list is ready
	// Pindel - This portion confirms there is a booklist object available
  Vector booklist =
      (Vector<ebookshop.Book>)session.getAttribute("ebookshop.list");
  if (booklist == null) {
    response.sendRedirect("/ebookshop/eshop");
    }
  else {
  %>
    <form name="addForm" action="eshop" method="POST">
      <input type="hidden" name="do_this" value="add">
      Book:
      <select name=book>
<%  // Scriptlet 2: Copy the book list to the selection control
	// Pindel- This portion copies the booklist object line by line into the dropdown of the main page
        for (int i = 0; i < booklist.size(); i++) {
          out.println("<option>" + (String)booklist.elementAt(i) + "</option>");
          }
  %>
        </select>
      Quantity: <input type="text" name="qty" size="3" value="1">
      <input type="submit" value="Add to Cart">
      </form>
    <p/>
<%  // Scriptlet 3: Check whether the shopping cart is empty
	// Pindel - This portion confirms if the shoplist (cart) is not empty
    Vector<ebookshop.Book> shoplist =
        (Vector<ebookshop.Book>)session.getAttribute("ebookshop.cart");
    if (shoplist != null  &&  shoplist.size() > 0) {
  %>
      <table border="1" cellpadding="2">
      <tr>
      <td>TITLE</td>
      <td>PRICE</td>
      <td>QUANTITY</td>
      <td></td>
      </tr>
<%  // Scriptlet 4: Display the books in the shopping cart
	// Pindel - This portion copies the shoplist object line by line into the cart area of the main page
      for (int i = 0; i < shoplist.size(); i++) {
        Book aBook = shoplist.elementAt(i);
  %>
        <tr>
          <form name="removeForm" action="eshop" method="POST">
            <input type="hidden" name="position" value="<%=i%>">
            <input type="hidden" name="do_this" value="remove">
            <td><%=aBook.getTitle()%></td>
            <td align="right">$<%=aBook.getPrice()%></td>
            <td align="right"><%=aBook.getQuantity()%></td>
            <td><input type="submit" value="Remove from Cart"></td>
            </form>
          </tr>
<%
        } // for (int i..
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