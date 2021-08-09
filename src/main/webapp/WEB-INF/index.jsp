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
	<div>
		<form action = "/formProcess" method = "POST">
			
			<label>Your Name: <input type = "text" name ="name"></label>
			
			<select name = "location">
				<option value = "San Jose">SanJose</option>
			</select>
			
			<select name = "language">
				<option value = "Python">Python</option>
				<option value = "Java">Java</option>
			</select>
			
			<label>Comment (optional):<input type = "text" name = "comment"></label>
			
			<button>Button</button>
		</form> 
	</div>
</body>
</html>