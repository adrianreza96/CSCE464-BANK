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
							<c:forEach items ="${ticketTypes}" var="ticketType">
								<option value="${ticketType.id}">${ticketType.name} Free Standing</option>
							</c:forEach>
						</select>
						<button name="selectedConcert"type=submit value="${concert.id }">Add to Cart</button>
					</form>
				</td>
			</tr>
		</table>
		
		
		<h1 style="text-align:center">Details</h1>
		<h2 style="text-align:center" name="concertName">${concert.name}</h2>
		<table>
	        <tr>
	            <td><c:out style="text-align:center" value="${concert.details}" /></td>
	            <td><c:out style="text-align:center" value="${concert.image}" />NO IMAGE</td>
	            <td><c:out style="text-align:center" value="${concert.venue}"/></td>
	            <td><c:out style="text-align:center" value="${concert.startTime}"/></td>
	            <td><c:out style="text-align:center" value="${concert.price}"/></td>
	            <td><c:out style="text-align:center" value="${concert.remainingSeats}"/></td>
	        </tr>
		</table>
		
		
		<h3>Reviews for Pinnacle Bank Arena</h3>
		<form action="CustomerReview.jsp"><input type=submit value="Submit"></form>
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
			<c:forEach items="${concerts}" var="concert">
				<tr>
		            <td><c:out style="text-align:center" value="${review.user.firstName}" /></td>
		            <td><c:out style="text-align:center" value="${review.reviewDate}" /></td>
		            <td><c:out style="text-align:center" value="${review.rating}"/></td>
		            <td><c:out style="text-align:center" value="${review.review}"/></td>
		        </tr>
	        </c:forEach>
		</table>
	
	</body>
</html>