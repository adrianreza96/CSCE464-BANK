<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
</head>
	<body>
		<link rel="stylesheet" type="text/css" href="NavigationBarTheme.css">
		<div class="topnav">
		  <a class="active" href="CustomerHomePage.jsp">Home</a>
		  <a href="ViewOrders.jsp">Orders</a>
		  <a href="Login.jsp" style="float:right">Log Out</a>
		  <a href="VewAndCheckoutShoppingCart.jsp">Shopping Cart</a>
		</div>	
		<h1 style="text-align:center">Results</h1>
		<table style="width:100%">
		  	<tr>
			  	<th>Details</th>
			    <th>Venue</th>
			    <th>Time</th> 
			    <th>Remaining Seats</th>
			    <th>Ticket Cost</th>
			    <th>Opening Acts</th>
			    <th>Image</th>
			    <th></th>
		  	</tr>
		  	<tr>
		  		<td style="text-align:center"><form action="ConcertDetailsSelection.jsp"><button name="detailsButton" type=submit value="${$concert}"></form></td>
			    <td style="text-align:center">The Bourbon Theater</td>
			    <td style="text-align:center">7:00pm March 12th, 2019</td> 
			    <td style="text-align:center">14</td>
			    <td style="text-align:center">$40.00</td>
			    <td style="text-align:center">Kyd the Band</td>
			    <td style="text-align:center"><img src="Pics/NF.jpeg" alt="" border=3 height=100 width=100></img></td>

		    </tr>

		    <c:forEach items="${concerts}" var="concert">
		        <tr>
		        	<td style="text-align:center"><form action=ConcertSearchResult><button name="detailsButton" type=submit value="${$concert.id}">View Concert Details</button></form></td>
		            <td><c:out value="${concert.ConcertName}" /></td>
		            <td><c:out value="${concert.performance.venue.name}" /></td>
		            <td><c:out value="${concert.performance.startTime}"/></td>
		            <td><c:out value="${concert.performance.ticketVenuePrices.TicketPrice}"/></td>
		            <td><c:out value="${concert.performance.remainingSeats}"/></td>
		            <td><c:out value="${concert.image}"/>NO IMAGE</td>
		        </tr>
		    </c:forEach>

		</table>
	</body>
</html>