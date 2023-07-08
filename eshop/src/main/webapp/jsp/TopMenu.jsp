<!--
Robin Pindel
mod7 Comments
7/2/2023

This file is the View for the top edge menu.
-->


<%@page language="java" contentType="text/html"%>
<%
  String base = (String)application.getAttribute("base");
  String imageURL = (String)application.getAttribute("imageURL");
  %>
<div class="header">
  <div class="logo">
    <p>e-Shopping Center</p>
    </div>
  <div class="cart">
    <a class="link2" href="<%=base%>?action=showCart">Show Cart
      <img src="<%=imageURL%>cart.gif" border="0"/></a>
    </div>
  </div>