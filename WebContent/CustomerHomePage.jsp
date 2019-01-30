<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User HomePage</title>
</head>
	<body>
		<link rel="stylesheet" type="text/css" href="NavigationBarTheme.css">
		<div class="topnav">
		  <a class="active" href="CustomerHomePage.jsp">Home</a>
		  <a href="ViewOrders.jsp">Orders</a>
		  <a href="Login.jsp" style="float:right">Log Out</a>
		</div>
		
		<h1 style="text-align:center">Customer Home Page</h1>
		
		<form style="text-align:center" action="ConcertSearchResults.jsp" name="search">
			<select>
				<option value="Pinnacle Bank Arena">Pinnacle Bank Arena</option>
			  	<option value="The Bourbon Theater">The Bourbon Theater</option>
			  	<option value="The Rococo Theater">The Rococo Theater</option>
			  	<option value="Pinewood Bowl Theater">Pinewood Bowl Theater</option>
			</select>
			<input type=text placeholder="Enter name or date" name="searchValue">
			<input type=submit value="Search">
		</form>
	</body>
</html>