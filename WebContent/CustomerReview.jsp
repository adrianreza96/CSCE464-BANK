<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<link rel="stylesheet" type="text/css" href="NavigationBarTheme.css">
		<div class="topnav">
		  <a class="active" href="CustomerHomePage.jsp">Home</a>
		  <a href="ViewOrders.jsp">Orders</a>
		  <a href="Login.jsp" style="float:right">Log Out</a>
		  <a href="VewAndCheckoutShoppingCart.jsp">Shopping Cart</a>
		</div>
		<div align="center">
			<form action=CustomerReview>
				<textarea col="150" rows="8" type=text placeholder="Enter your Review" name="review"></textarea><br>
				Star Rating: <br>
				<select>
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select>
				<br>
				<br>
				<input type=submit value="Submit">
			</form>
			<form action="ConcertDetailsSelection.jsp">	
				<input type=submit value="Cancel">
			</form>
		</div>
	</body>
</html>