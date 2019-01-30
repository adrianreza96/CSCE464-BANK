<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<style>
		input[type=submit] {
		    width: 20em;  height: 8em;
		}
	</style>
	<body>
		<table>
			<tr>
				<td>
					<form action="CustomerHomePage.jsp">
						<input type=submit value="Home">
					</form>
				</td>
				<td>
					<form action="Login.jsp">
						<input type=submit value="Logout">
					</form>
				</td>
			</tr>
		</table>
		<h1 style="text-align:center">Shopping Cart</h1>
		<br>
		<br>
		<table style="width:100%">
			<tr>
				<td style="text-align:center">Chance the Rapper</td>
				<td style="text-align:center"><img src="Pics/Chance.jpg" alt="" border=3 height=150 width=150></img></td>
				<td style="text-align:center">9:00pm February 24, 2019</td>
				<td style="text-align:center">5</td>
				<td style="text-align:center">X</td>
				<td style="text-align:center">$100.00</td>
				<td style="text-align:center">=</td>
				<td style="text-align:center">$500.00</td>
				<td style="text-align:center">
					<form>
						<input type=submit value="Delete">
					</form>
				</td>
			</tr>
			<tr>
				<td style="text-align:center">NF</td>
				<td style="text-align:center"><img src="Pics/NF.jpeg" alt="" border=3 height=150 width=150></img></td>
				<td style="text-align:center">7:00pm July 12, 2019</td>
				<td style="text-align:center">3</td>
				<td style="text-align:center">X</td>
				<td style="text-align:center">$40.00</td>
				<td style="text-align:center">=</td>
				<td style="text-align:center">$120.00</td>
				<td style="text-align:center">
					<form>
						<input type=submit value="Delete">
					</form>
				</td>
			</tr>
			<tr>
				<td style="text-align:center">Panic at the Disco!</td>
				<td style="text-align:center"><img src="Pics/Panic.jpeg" alt="" border=3 height=150 width=150></img></td>
				<td style="text-align:center">9:00pm May 4, 2019</td>
				<td style="text-align:center">4</td>
				<td style="text-align:center">X</td>
				<td style="text-align:center">$40.00</td>
				<td style="text-align:center">=</td>
				<td style="text-align:center">$160.00</td>
				<td style="text-align:center">
					<form>
						<input type=submit value="Delete">
					</form>
				</td>
			</tr>
		</table>
		<form style = "text-align:center" action="CustomerTransaction.jsp">
			<input type=submit value="Checkout">
		</form>
	</body>
</html>