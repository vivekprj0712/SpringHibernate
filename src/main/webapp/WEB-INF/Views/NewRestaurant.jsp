<%@page import="com.Entity.RestaurantEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>New Restaurant</h2>
<form action="saverestaurant" method="post">
	Name : <input type="text" name="name" value="${restaurant.name}"/> 
	<span style="color: red">${ErrorMsgs.getFieldError('name').getDefaultMessage()}</span><br><br> 
	Address :  <input type="text" name="address" value="${restaurant.address}"/>
	<span style="color: red">${ErrorMsgs.getFieldError('address').getDefaultMessage()}</span><br><br> 
	Category : <input type="text" name="category" value="${restaurant.category}"/>
	<span style="color: red">${ErrorMsgs.getFieldError('category').getDefaultMessage()}</span><br><br> 
	
	<input type="submit" value="Add Restaurant"/>
</form>
   
</body>
</html>