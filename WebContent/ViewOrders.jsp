<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Orders</title>
</head>
	<body>
		<link rel="stylesheet" type="text/css" href="NavigationBarTheme.css">
		<div class="topnav">
		  <a class="active" href="CustomerHomePage.jsp">Home</a>
		  <a href="ViewOrders.jsp">Orders</a>
		  <a href="Login.jsp" style="float:right">Log Out</a>
		  <a href="VewAndCheckoutShoppingCart.jsp">Shopping Cart</a>
		</div>
		<h1 style="text-align:center">Orders</h1>
		<table style="width:100%">
		  	<tr>
			  	<th></th>
			    <th>Order Number</th>
			    <th>Order Total</th> 
			    <th>Ordered Date</th>

		  	</tr>
		  	<tr>
		  		<td style="text-align:center"><form action="ManageOrder.jsp"><input type=submit value="View"></form></td>
			    <td style="text-align:center">113456</td>
			    <td style="text-align:center">$1010</td>
			    <td style="text-align:center">1/30/2019</td>  	
		    </tr>
		    

	  	</table>
	</body>
</html>