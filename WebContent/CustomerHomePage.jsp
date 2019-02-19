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
		  <a href="VewAndCheckoutShoppingCart.jsp">Shopping Cart</a>
		</div>
		
		<h1 style="text-align:center">Customer Home Page</h1>
		
		<form style="text-align:center" action="VenueAndConcertSearchQuery.java" name="search">
			<select name="venue">
				<option value="Pinnacle Bank Arena">Pinnacle Bank Arena</option>
			  	<option value="The Bourbon Theater">The Bourbon Theater</option>
			  	<option value="The Rococo Theater">The Rococo Theater</option>
			  	<option value="Pinewood Bowl Theater">Pinewood Bowl Theater</option>
			</select>
			<p>Date: <input type="date"  placeholder="Enter Date (yyyy-mm-dd)" id="datepicker" value="2019-02-19" min="2019-02-01" max="2019-12-31"></p>
			<input type=submit value="Search">
		</form>
		
		<script>
		  $( function() {
		    $( "#datepicker" ).datepicker();
		  } );
		</script>
	</body>
</html>