<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="saverestaurant" method="post">
	Name : <input type="text" name="name" value="${restaurant.name}"/><br><br> 
	Address :  <input type="text" name="address" value="${restaurant.address}/"><br><br> 
	Category : <input type="text" name="category" value="${restaurant.category}"/><br><br> 
	<input type="hidden" name="restaurantId" value="${restaurant.restaurantId}"/>
	<input type="submit" value="Update Restaurant"/>
</form>
</body>
</html>