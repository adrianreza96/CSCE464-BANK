<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="ViewOrders.jsp">
	<input type=submit value="View Orders">
</form>
<br>
<form action="Login.jsp">
	<input type=submit value="Logout">
</form>
<h1>Results</h1>
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
  	<td style="text-align:center"><a href="ConcertDetailsSelection.jsp"> Details </a> <br></td>
    <td style="text-align:center">The Bourbon Theater</td>
    <td style="text-align:center">7:00pm</td> 
    <td style="text-align:center">14</td>
    <td style="text-align:center">$40.00</td>
    <td style="text-align:center">Kyd the Band</td>
    <td><img src="Pics/NF.jpeg" alt="" border=3 height=100 width=100></img></td>
  </tr>
  <tr>
  	<td style="text-align:center"><a href="ConcertDetailsSelection.jsp"> Details </a> <br></td>
    <td style="text-align:center">Pinnacle Bank Arena</td>
    <td style="text-align:center">9:00pm</td> 
    <td style="text-align:center">240</td>
    <td style="text-align:center">$65.00</td>
    <td style="text-align:center">Kyle</td>
    <td><img src="Pics/Chance.jpg" alt="" border=3 height=100 width=100></img></td>
  </tr>
  <tr>
   	<td style="text-align:center"><a href="ConcertDetailsSelection.jsp"> Details </a> <br></td>
    <td style="text-align:center">Pinnacle Bank Arena</td>
    <td style="text-align:center">6:00pm</td> 
    <td style="text-align:center">300</td>
    <td style="text-align:center">$50.00</td>
    <td style="text-align:center">All American Rejects</td>
    <td><img src="Pics/Dragons.jpeg" alt="" border=3 height=100 width=100></img></td>
  </tr>
  <tr>
  	<td style="text-align:center"><a href="ConcertDetailsSelection.jsp"> Details </a> <br></td>
    <td style="text-align:center">The Rococo Theater</td>
    <td style="text-align:center">9:00pm</td> 
    <td style="text-align:center">30</td>
    <td style="text-align:center">$40.00</td>
    <td style="text-align:center">Betty Who</td>
    <td><img src="Pics/Panic.jpeg" alt="" border=3 height=100 width=100></img></td>
  </tr>
</table>
</body>
</html>