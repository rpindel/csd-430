<%--
Robin Pindel
430 mod9 Coding Essay
7/9/2023

Reference to textbook for example structure
Manelli, L., & Zambon, G. (2020). Beginning Jakarta EE Web Development: 
Jakarta Server Pages, Jakarta Server Faces, and Apache Tomcat for Building 
Java Web Applications. Apress.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib  prefix="x" uri="http://java.sun.com/jsp/jstl/xml"  %>
<c:import url="pokemonXMLInternalDTD.xml" var="poke" />
<x:parse doc="${poke}" varDom="dom" />

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title> Pokedex XML Parsing </title>
<style>
	td {text-align:center}
	th, td {padding:5px}
</style>
</head>
<body>

<%-- Using JSTL to set table header names for output --%>
<c:set var="col1"> Pokedex Number </c:set>
<c:set var="col2"> Pokemon Name </c:set>
<c:set var="col3"> Type 1 </c:set>
<c:set var="col4"> Type 2 </c:set>
<c:set var="col5"> Home Region </c:set>
<c:set var="col6"> Evolution Line </c:set>

<table border="1">
	<tr>
	<th><c:out value="${col1}"/></th>
	<th><c:out value="${col2}"/></th>
	<th><c:out value="${col3}"/></th>
	<th><c:out value="${col4}"/></th>
	<th><c:out value="${col5}"/></th>
	<th><c:out value="${col6}"/></th>
	</tr>
	
	<%-- XPath loop to grab all data from imported XML document --%>
	<x:forEach var="tag" select="$dom//pokemon">
	<tr>
		<td><x:out select="$tag/number"/></td>
		<td><x:out select="$tag/name"/></td>
		<td><x:out select="$tag/type-1"/></td>
		<td><x:out select="$tag/type-2"/></td>
		<td><x:out select="$tag/home-region"/></td>
		<td><x:out select="$tag/@evolution-line"/></td>
	</tr>
	</x:forEach>
</table>

</body>
</html>