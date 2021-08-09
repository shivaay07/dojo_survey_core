<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>your fav lang is:<c:out value = "${ language}"/></p>
	<div>
		<h3>Submitted Info</h3>
		<p>Name: <c:out value = "${name}"/></p>
		<p>location: <c:out value = "${location}"/></p>
		<p>language: <c:out value = "${language}"/></p>
		<p>Comment: <c:out value = "${comment}"/></p>
	</div>
	
</body>
</html>