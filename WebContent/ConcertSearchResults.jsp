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
		  	</tr>
		  	<tr>
		  		<td style="text-align:center"><form action="ConcertDetailsSelection.jsp"><input type=submit value="Details"></form></td>
			    <td style="text-align:center">The Bourbon Theater</td>
			    <td style="text-align:center">7:00pm March 12th, 2019</td> 
			    <td style="text-align:center">14</td>
			    <td style="text-align:center">$40.00</td>
			    <td style="text-align:center">Kyd the Band</td>
			    <td style="text-align:center"><img src="Pics/NF.jpeg" alt="" border=3 height=100 width=100></img></td>
		    </tr>
		  	<tr>
			  	<td style="text-align:center"><form action="ConcertDetailsSelection.jsp"><input type=submit value="Details"></form></td>
			    <td style="text-align:center">Pinnacle Bank Arena</td>
			    <td style="text-align:center">9:00pm March 28th, 2019</td> 
			    <td style="text-align:center">240</td>
			    <td style="text-align:center">$65.00</td>
			    <td style="text-align:center">Kyle</td>
			    <td style="text-align:center"><img src="Pics/Chance.jpg" alt="" border=3 height=100 width=100></img></td>
		  	</tr>
		  	<tr>
		  		<td style="text-align:center"><form action="ConcertDetailsSelection.jsp"><input type=submit value="Details"></form></td>
			    <td style="text-align:center">Pinnacle Bank Arena</td>
			    <td style="text-align:center">6:00pm April 2nd, 2019</td> 
			    <td style="text-align:center">300</td>
			    <td style="text-align:center">$50.00</td>
			    <td style="text-align:center">All American Rejects</td>
			    <td style="text-align:center"><img src="Pics/Dragons.jpeg" alt="" border=3 height=100 width=100></img></td>
		  	</tr>
		  	<tr>
		  		<td style="text-align:center"><form action="ConcertDetailsSelection.jsp"><input type=submit value="Details"></form></td>
			    <td style="text-align:center">The Rococo Theater</td>
			    <td style="text-align:center">9:00pm May 11th, 2019</td> 
			    <td style="text-align:center">30</td>
			    <td style="text-align:center">$40.00</td>
			    <td style="text-align:center">Betty Who</td>
		    	<td style="text-align:center"><img src="Pics/Panic.jpeg" alt="" border=3 height=100 width=100></img></td>
		  	</tr>
		</table>
	</body>
</html>