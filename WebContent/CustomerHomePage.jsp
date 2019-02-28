<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User HomePage</title>
</head>
	<body>
		<link rel="stylesheet" type="text/css" href="NavigationBarTheme.css">
		<div class="topnav">
		  <a class="active" href="CustomerHomePage.jsp">Home</a>
		  <form action="ViewOrders"><input type=submit value="Orders"></form>
		  <a href="Login.jsp" style="float:right">Log Out</a>
		  <a href="ViewAndCheckoutShoppingCart.jsp">Shopping Cart</a>
		</div>
		
		<h1 style="text-align:center">Customer Home Page</h1>
		
		<form style="text-align:center" action=VenueAndConcertSearchQuery name="search">
			Select a Venue :
			<select name="venue">
					<option value="${venueList.get(0).getId()}">${venueList.get(0).getName()}</option>
					<option value="${venueList.get(1).getId()}">${venueList.get(1).getName()}</option>
					<option value="${venueList.get(2).getId()}">${venueList.get(2).getName()}</option>
					<option value="${venueList.get(3).getId()}">${venueList.get(3).getName()}</option>
			</select>
			<p>Date: <input type="date"  placeholder="Enter Date (yyyy-mm-dd)" name="datepicker" value="2019-02-21" min="2019-02-01" max="2019-12-31"></p>
			<input type=submit value="Search">
		</form>
		
	</body>
</html>