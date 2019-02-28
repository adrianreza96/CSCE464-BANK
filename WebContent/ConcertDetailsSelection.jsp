<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Font Awesome Icon Library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.checked {
	  color: orange;
	}
}
</style>
<meta charset="UTF-8">
<title>Concert Details</title>
</head>
	<style>
		input[type=submit] {
		    width: 20em;  height: 2em;
		    background-color: cornsilk;
		}
		button[type=submit] {
		    width: 20em;  height: 2em;
		    background-color: cornsilk;
		}
		* {
		 	font-family: Arial;
		} 
		body {
		 	background-color: lightblue;
		}
	</style>
	<body>
		<link rel="stylesheet" type="text/css" href="NavigationBarTheme.css">
		<div class="topnav">
		  <a class="active" href="CustomerHomePage.jsp">Home</a>
		  <a href="ViewOrders.jsp">Orders</a>
		  <a href="Login.jsp" style="float:right">Log Out</a>
		  <a href="VewAndCheckoutShoppingCart.jsp">Shopping Cart</a>
		</div>
		<table style="width:100%">
			<tr>
				<td>
					<form action="ConcertSearchResults.jsp">
						<input type=submit value="Back">
					</form>
				</td>

				<td align="right">
					<form action="UpdateShoppingCart">
						<select name="ticketQuantity">
						    <option value=1>1</option>
						    <option value=2>2</option>
						    <option value=3>3</option>
						    <option value=4>4</option>
						    <option value=5>5</option>
						    <option value=6>6</option>
						    <option value=7>7</option>
						    <option value=8>8</option>
						    <option value=9>9</option>
					  	</select>
					  	<select name="ticketType">
								<option value="${cpt.t.getTicketPrice()}"> Free Standing</option>
						</select>
						<form action=VenueAndConcertSearchQuery name="search">
							<button name="selectedConcert" type=submit value="${cpt.p.getId() }">Add to Cart</button>
						</form>
					</form>
				</td>
			</tr>
		</table>
		
		
		<h1 style="text-align:center">Details</h1>
		<h2 style="text-align:center" name="concertName">${cpt.c.getConcertName()}</h2>
		<table style="text-align:center">
	        <tr style="text-align:center">
	            <tr><c:out style="text-align:center" value="${cpt.c.getDescription()}" />${cpt.c.getDescription()}</td><br>
	            <tr><c:out style="text-align:center" value="${cpt.c.getThumbnail()}" />${cpt.c.getThumbnail()}</td><br>
	            <tr><c:out style="text-align:center" value="${cpt.v.getName()}"/>${cpt.v.getName()}</td><br>
	            <tr><c:out style="text-align:center" value="${cpt.p.getStartTime()}"/>Date/Time : ${cpt.p.getStartTime()}</td><br>
	            <tr><c:out style="text-align:center" value="${cpt.t.getTicketPrice()}"/>Tickets : $ ${cpt.t.getTicketPrice()}</td><br>
	            <tr><c:out style="text-align:center" value="${cpt.p.getRemainingSeats()}"/>Remaining Seats : ${cpt.p.getRemainingSeats()}</td><br>
	        </tr>
		</table>
		
		
		<h3>Reviews for Pinnacle Bank Arena</h3>
		<form action="CustomerReview.jsp">
		<input type=submit value="Submit">
		</form>
		<span class="heading">User Rating</span>
		<h3>${concert.rating} / 5</h3>
		
		<br>
		<br>
		
		<table style="width:100%">
			<tr>
				<th>Name</th>
				<th>Date</th>
				<th>Rating</th>
				<th>Review</th>
			</tr>
			<tr>
	            <td><c:out style="text-align:center" />${review.user.FirstName}</td>
	            <td><c:out style="text-align:center"  />${review.reviewDate}</td>
	            <td><c:out style="text-align:center" />${review.rating}</td>
	            <td><c:out style="text-align:center" />${review.review}</td>
	        </tr>

		</table>
	
	</body>
</html>