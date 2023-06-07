<!-- 
Robin Pindel
mod3.2 JSP Arrays - String
6/6/2023
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mod3.2 - My String Array</title>
</head>
<body>

<% String[] stringArray = new String[8]; 
stringArray[0] = "144 - Articuno";
stringArray[1] = "145 - Zapdos";
stringArray[2] = "146 - Moltres";
stringArray[3] = "147 - Dratini";
stringArray[4] = "148 - Dragonair";
stringArray[5] = "149 - Dragonite";
stringArray[6] = "150 - Mewtwo";
stringArray[7] = "151 - Mew";
%>

My String Array - End of Kanto Pokedex<br/><br/>

<% for (String string : stringArray) {
	out.print(string);
	out.print("<br/>");
}
%>

</body>
</html>