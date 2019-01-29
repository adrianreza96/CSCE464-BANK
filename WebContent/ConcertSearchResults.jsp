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
    <th>Venue</th>
    <th>Time</th> 
    <th>Remaining Seats</th>
    <th>Ticket Cost</th>
    <th>Opening Acts</th>
    <th>Image</th>
  </tr>
  <tr>
    <td>The Bourbon Theater</td>
    <td>7:00pm</td> 
    <td>14</td>
    <td>$40.00</td>
    <td>Kyd the Band</td>
    <td><img src="/Pics/NF" alt="" border=3 height=100 width=100></img></td>
  </tr>
  <tr>
    <td>Pinnacle Bank Arena</td>
    <td>9:00pm</td> 
    <td>240</td>
    <td>$65.00</td>
    <td>Kyle</td>
    <td><img src="/Pics/Logic" alt="" border=3 height=100 width=100></img></td>
  </tr>
   <tr>
    <td>Pinnacle Bank Arena</td>
    <td>6:00pm</td> 
    <td>300</td>
    <td>$50.00</td>
    <td>All American Rejects</td>
    <td><img src="/Pics/Dragons" alt="" border=3 height=100 width=100></img></td>
  </tr>
   <tr>
    <td>The Rococo Theater</td>
    <td>9:00pm</td> 
    <td>30</td>
    <td>$40.00</td>
    <td>Betty Who</td>
    <td><img src="/Pics/Panic" alt="" border=3 height=100 width=100></img></td>
  </tr>
</table>
</body>
</html>