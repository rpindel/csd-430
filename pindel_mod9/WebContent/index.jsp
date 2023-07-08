<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Title</title>
</head>
<body>

<c:set var="bookname">
My book: java 8
</c:set>
<c:out value="${bookname}"/>

</body>
</html>