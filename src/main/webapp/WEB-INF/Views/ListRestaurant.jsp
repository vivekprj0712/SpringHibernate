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
	<%
			List<RestaurantEntity> restaurant = (List<RestaurantEntity>)request.getAttribute("restaurants");
	%>
	
	<table border="1">
		<tr>
		<td>RestaurantId</td>
		<td>RestaurantName</td>
		<td>Category</td>
		<td>Address</td>
		<td>Action</td>
		</tr>
		<%
		
			for(RestaurantEntity r : restaurant){
				out.print("<tr>");
				out.print("<td>" + r.getRestaurantId() + "</td>");
				out.print("<td>" + r.getName() + "</td>");
				out.print("<td>" + r.getCategory() + "</td>");
				out.print("<td>" + r.getAddress() + "</td>");
				out.print("<td><a href = 'deleterestaurant?restaurantId="+r.getRestaurantId()+"'>Delete</a>");
				out.print("| <a href = 'editrestaurant?restaurantId="+r.getRestaurantId()+"'>Edit</a></td>");
				out.print("</tr>");
			}
		%>
	</table>
</body>
</html>