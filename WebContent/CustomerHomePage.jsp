<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User HomePage</title>
</head>
<body>
<h1>Customer Home Page</h1>
<form action="ViewOrders.jsp">
	<input type=submit value="View Orders">
</form>
<br>
<form action="Login.jsp">
	<input type=submit value="Logout">
</form>
<br>
<form action="ConcertSearchResults.jsp" name="search">
	<select>
		<option value="Pinnacle Bank Arena">Pinnacle Bank Arena</option>
	  	<option value="The Bourbon Theater">The Bourbon Theater</option>
	  	<option value="The Rococo Theater">The Rococo Theater</option>
	  	<option value="Pinewood Bowl Theater">Pinewood Bowl Theater</option>
	</select>>
	<input type=text placeholder="Enter name or date" name="searchValue">
	<input type=submit value="Search">
	
</form>
</body>
</html>