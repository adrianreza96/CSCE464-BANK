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
		</div>
		<div align=center>
			<h1>Your Review was Successfully Submitted MAKE SURE ERRORS ARE SHOWN</h1>
			<form action="CustomerHomePage.jsp">
				<input type=submit value="Return to Home Page">
			</form>
		</div>
	</body>
</html>