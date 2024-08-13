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
	Name : <input type="text" name="name"/><br><br> 
	Address :  <input type="text" name="address"/><br><br> 
	Category : <input type="text" name="category"/><br><br> 
	<input type="submit" value="Add Restaurant"/>
</form>
</body>
</html>